FROM 269875963461.dkr.ecr.us-east-1.amazonaws.com/iap:1.3.0-19f1e61-pivot-7db4517-tranquility-65bc805-druid-4706ac6
#FROM imply/imply:1.2.1

COPY init /tmp/init
RUN chmod +x /tmp/init
RUN /tmp/init
