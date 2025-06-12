FROM n8nio/n8n
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg python3-pip imagemagick && \
    pip3 install pandas "opencv-python-headless" beautifulsoup4 requests && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
USER node
