# Use an official Python base image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy files into the container
COPY . .

COPY requirements.txt requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your app runs on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

