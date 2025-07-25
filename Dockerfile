# Use official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy dependency file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app source code
COPY . .

# Run the application
CMD ["python", "app.py"]
