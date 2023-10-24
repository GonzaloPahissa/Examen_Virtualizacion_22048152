#< get official image of kali linux
FROM kalilinux/kali-rolling

# Update the image
RUN apt-get update

# Install the following packages for our custom image
RUN apt-get install -y \
    nmap \
    nano \
    pip

#Create Jupyter Notebook
RUN apt-get clean
RUN pip install jupyter

# Each student must fill this file with the correct information
#LABEL authors = "GonzaloArguedas 22048152"
#LABEL version = "1.0"
#LABEL description = "Dockerfile for a custom image of Kali Linux OS"

# Set credentials for the root user, ROOT = all privileges, 22048152 = password
ENV USER root
ENV PASSWORD 22048152

# Install 
RUN pip install --upgrade pip

# Expose ports for nmap and metasploit
EXPOSE 600 700

# Run the following commands when the container is created
CMD ["bash"]

