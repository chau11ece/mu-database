FROM mcr.microsoft.com/mssql/server:2022-latest
USER root
# Create a folder for the backup
RUN mkdir -p /var/opt/mssql/backup
# Copy the backup file into the image
COPY MuOnline_Original.bak /var/opt/mssql/backup/
USER mssql
