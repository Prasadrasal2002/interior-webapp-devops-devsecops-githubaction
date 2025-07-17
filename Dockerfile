#Stage 1: Build Stage
FROM python:3.12.2-slim AS builder
# Set working directory inside the container
WORKDIR /app
# Copy only requirements to install dependencies
COPY requirements.txt .
# Install virtual environment and dependencies
RUN python -m venv /venv && \
    /venv/bin/pip install --upgrade pip && \
    /venv/bin/pip install --no-cache-dir -r requirements.txt
#Stage 2: Final Stage
FROM python:3.12.2-slim
# Set working directory in final container
WORKDIR /app
# Copy virtual environment from builder
COPY --from=builder /venv /venv
# Ensure the virtual environment is used
ENV PATH="/venv/bin:$PATH"
# Copy the full project
COPY . .
# Expose the port your Flask app runs on
EXPOSE 5000
# Run the Flask app
CMD ["python3", "run.py"]

