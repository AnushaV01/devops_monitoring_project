# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the app files
COPY . .

# Set environment variable reading from .env (optional for local testing only)
ENV APP_SECRET="DevValue"

# Expose the port Flask runs on
EXPOSE 5050

# Run the app
CMD ["python", "app/app.py"]
