# Use an official Python runtime as a parent image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install opencv-python Pillow boto3

# Copy the current directory contents into the container
COPY . /app

# Load environment variables from .env file at runtime
COPY .env /app/.env

# Command to run the application (replace with your app entry point)
CMD ["python", "app.py"]
