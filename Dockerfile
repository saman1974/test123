# Use official Python slim image
FROM python:3.11-slim

# Set a working directory
WORKDIR /app

# Copy only requirements first to leverage Docker cache
COPY requirements.txt ./

# Install runtime dependencies (none here) and pytest optionally if you want tests inside container
RUN pip install --no-cache-dir -r requirements.txt || true

# Copy package code 1
COPY myapp ./myapp

# Make a small entrypoint: run the CLI when container runs
ENTRYPOINT ["python", "-m", "myapp.main"]
