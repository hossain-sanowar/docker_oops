FROM python:3.12-slim

# create workdir in daemon of docker
WORKDIR /app

# copy
COPY . /app

# run for install requirements file
RUN pip install -r requirements.txt

# export port
EXPOSE 8080

# commands for execution
CMD ["python3", "app.py"]

