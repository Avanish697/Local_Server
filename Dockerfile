# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files into container
COPY . .

# Install required Python packages
RUN pip install --no-cache-dir Flask gunicorn

# Expose the port (Render dynamically sets this, but good to expose it)
EXPOSE 10000

# Start app using Gunicorn and shell to expand $PORT
CMD sh -c "gunicorn --bind 0.0.0.0:$PORT server:app"
