# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files into the container 
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Start the application
CMD ["python", "app.py"]
