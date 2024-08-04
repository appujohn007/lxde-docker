FROM ct2034/ubuntu-desktop-arm64-vnc

EXPOSE 5901

CMD ["supervisord", "-n"]
