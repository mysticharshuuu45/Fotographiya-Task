# Use an official Python runtime as a parent image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install opencv-python Pillow boto3

# Copy the current directory contents into the container
COPY . /app

# Define environment variables for AWS S3
ENV AWS_ACCESS_KEY_ID=AKIAWOOXUFSX5Y76NHV7
ENV AWS_SECRET_ACCESS_KEY=vatdkUgHL3Dfco/Q5PfG1O1AA2zSRMTNh2KnJm4k
ENV AWS_DEFAULT_REGION=ap-south-1

# Command to run the application (replace with your app entry point)
CMD ["python", "app.py"]
s