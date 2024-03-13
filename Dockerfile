# Use an ARM-compatible Ubuntu image
FROM arm64v8/ubuntu:latest

# Update the package lists
RUN apt-get update

# Install SSH server
RUN apt-get install -y openssh-server

# Set up SSH access
RUN mkdir /var/run/sshd
RUN echo 'root:vagrant' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Fix SSH login issue
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# Expose SSH port
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
