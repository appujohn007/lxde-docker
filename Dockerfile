# Use the dorowu/ubuntu-desktop-lxde-vnc as a base image
FROM dorowu/ubuntu-desktop-lxde-vnc

# Ensure the /startup.sh file is executable
RUN chmod +x /startup.sh

# Expose port 80 for the VNC server
EXPOSE 80

# Command to run when starting the container
CMD ["supervisord", "-n"]
