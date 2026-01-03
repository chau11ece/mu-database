FROM mcr.microsoft.com/mssql/server:2022-latest

# Switch to root to create directories
USER root
RUN mkdir -p /var/opt/mssql/backup
# Copy your .bak file into the image so it's always available
COPY MuOnline_Original.bak /var/opt/mssql/backup/

# Set permissions back to mssql user
RUN chown -R mssql /var/opt/mssql/backup
USER mssql
