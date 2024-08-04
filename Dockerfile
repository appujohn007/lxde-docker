# Use a lightweight Python image as the base
FROM python:3.9-slim

# Copy the Python script into the Docker image
COPY check_architecture.py /app/check_architecture.py

# Set the working directory
WORKDIR /app

# Run the Python script
CMD ["python", "check_architecture.py"]
