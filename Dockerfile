# Use the official Python image from the Docker Hub
FROM python:3.8-bookworm

# Set the working directory in the container
WORKDIR /code

# Copy the uv project file into the container
COPY pyproject.toml /code/
COPY uv.lock /code/

# Install uv and dependencies
RUN pip install uv
RUN uv sync

# Copy the current directory contents into the container at /code
COPY . /code/