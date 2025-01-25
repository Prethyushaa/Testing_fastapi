FROM python:3.12.4
WORKDIR /app
COPY requirements.txt
COPY iris_model.pkl
RUN pip install -no-cache-dir -r requirements.txt
EXPOSE 8000
CMD ["uvicorn", "main.app", "--host", "0.0.0.0", "--port", "8000"]
