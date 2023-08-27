# Use an official Python runtime as the base image
FROM python:3.9

# Set environment variables
# Uncomment this if you want to set environment variables directly in the Dockerfile
# ENV POSTGRES_DB=your_db_name POSTGRES_USER=your_username ...

# Create and switch to a non-root user
RUN useradd -m myuser
USER myuser

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run your script when the container launches
CMD ["python", "core.py"]