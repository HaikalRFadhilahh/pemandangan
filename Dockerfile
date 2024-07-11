# Import Pyhton Base Image
FROM python:latest

# Setting Working Directory
WORKDIR /app

# Copy Sourcode
COPY . .

# Update Pip Package Installer For Python
RUN pip install --upgrade pip

# Install Dependencies
RUN pip3 install -r /app/requirements.txt

# Setting ENV Variable
ENV APP_ENV=production
ENV APP_PORT=5000

# Expose Port
EXPOSE 5000

# Running Project
ENTRYPOINT [ "python3", "/app/app.py" ]
