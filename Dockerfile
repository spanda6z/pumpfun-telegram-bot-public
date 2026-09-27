FROM python:3.11-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY single_file_bot.py .

# Railway injects env vars; no .env file needed in production
CMD ["python", "-u", "single_file_bot.py"]
