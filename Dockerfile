FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN no root access

COPY app.py .

RUN useradd -m appuser
USER appuser

EXPOSE 3000

CMD ["python", "app.py"]