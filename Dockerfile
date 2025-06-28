# Stage 1: Build
FROM python:3.11-slim as builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip && pip install --user -r requirements.txt
COPY . .

# Stage 2: Run
FROM python:3.11-slim
ENV PATH="/root/.local/bin:$PATH"
WORKDIR /app
COPY --from=builder /root/.local /root/.local
COPY --from=builder /app /app
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
