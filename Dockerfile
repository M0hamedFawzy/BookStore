# Pull base image
FROM python:3.11.9-slim-bullseye
# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# solve the libpg problem
RUN apt-get update && apt-get install -y libpq-dev gcc

# Set work directory
WORKDIR /code
# Install dependencies
COPY ./requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
# Copy project
COPY . .