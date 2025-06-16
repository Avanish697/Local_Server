# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir Flask gunicorn

# Optional: expose port for clarity (Render sets this automatically)
EXPOSE 10000

# Set environment variable for Render (default to 10000)
ENV PORT=10000

# 🛠️ Correct capitalization for 'Server.py'
CMD ["sh", "-c", "gunicorn --bind 0.0.0.0:$PORT Server:app"]
