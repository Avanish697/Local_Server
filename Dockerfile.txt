# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy code into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir Flask gunicorn

# Expose the port the app runs on
EXPOSE 5000

# Start the app
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "Server:app"]
