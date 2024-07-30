# Use the official Python image as the base image
FROM python:3.12.1

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates dumb-init && \
    rm -rf /var/lib/apt/lists/* 

# Set the working directory within the container
WORKDIR /app

# Copy the application code into the container
COPY . .

# Install the required packages
RUN pip3 install -r requirements.txt
    RUN python3 -m pip install coverage

# Expose the port that the Flask app will run on
EXPOSE 6000

# Start the Flask application
CMD python3 -m coverage run app.py