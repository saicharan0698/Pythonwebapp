FROM python:3.8-slim-buster
RUN pip install --upgrade pip
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD ["streamlit", "run", "App.py"]
