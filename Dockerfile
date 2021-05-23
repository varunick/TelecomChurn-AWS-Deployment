# Create the base image
FROM python:3.6

RUN mkdir /app
COPY requirements.txt .

# Install Dependency
RUN pip3 install -r requirements.txt

# Copy local folder into the container
COPY . /app/

# Change the working directory
WORKDIR /app/

# Set "python" as the entry point
ENTRYPOINT ["python3"]

# Set the command as the script name
CMD ["app.py"]
