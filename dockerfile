FROM Python
WORKDIR /app
COPY . / app
CMD ["python","sample.py"]