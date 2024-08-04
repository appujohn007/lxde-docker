FROM arm64v8/ubuntu:20.04

# Install LXDE, VNC, and other dependencies
RUN apt-get update && \
    apt-get install -y lxde-core lxterminal tightvncserver && \
    apt-get clean

# Set VNC password
RUN mkdir -p /root/.vnc && \
    echo "vncpassword" | vncpasswd -f > /root/.vnc/passwd && \
    chmod 600 /root/.vnc/passwd

# Create a startup script
RUN echo '#!/bin/sh\n\
lxterminal &\n\
/usr/bin/lxsession -s LXDE &' > /root/.vnc/xstartup && \
    chmod +x /root/.vnc/xstartup

EXPOSE 5901

CMD ["vncserver", ":1", "-geometry", "1280x800", "-depth", "24"]
