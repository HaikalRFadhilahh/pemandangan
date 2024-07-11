# Import Pyhton Base Image
FROM python:3.11.9

# Setting Working Directory
WORKDIR /app

# Copy Sourcode
COPY . .

# Update Pip Package Installer For Python
RUN pip install --upgrade pip

# Install Dependencies
RUN pip install -r /app/requirements.txt

# Setting ENV Variable
ENV APP_ENV=production
ENV APP_PORT=8000

# Expose Port
EXPOSE 8000

# Running Project
CMD [ "python3", "app.py" ]
