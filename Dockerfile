# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir Flask gunicorn

# Use the PORT environment variable from Render
ENV PORT=10000

# Expose the port (Render sets this dynamically, this is optional but fine)
EXPOSE 10000

# Start app using Gunicorn and dynamic port
CMD ["gunicorn", "--bind", "0.0.0.0:${PORT}", "Server:app"]
