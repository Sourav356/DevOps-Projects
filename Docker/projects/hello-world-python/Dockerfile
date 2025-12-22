# Use a lightweight Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy only requirements first (for caching)
COPY requirements.txt .

# Install dependencies (no cache to reduce image size)
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose port 5000 for the app
EXPOSE 5000

# Run Gunicorn with 4 workers
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "launch:app"]

# Optional: Add a healthcheck
HEALTHCHECK CMD curl --fail http://localhost:5000/ || exit 1


#COPY requirements.txt /app/requirements.txt
#ENTRYPOINT ["python", "./launch.py"]
