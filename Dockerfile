# Base image
FROM swaggerapi/swagger-ui:v4.12.0

# Copy custom nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# COPY install.sh /root/install.sh
# RUN chmod +x /root/install.sh
# COPY start.sh /root/start.sh
# RUN chmod +x /root/start.sh
# CMD ["/root/start.sh"]

