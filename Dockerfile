# Use a base Python image
FROM python:3.12

# Set the working directory
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=development

# Expose the port Flask runs on
EXPOSE 5000

# Run Flask
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
