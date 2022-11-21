FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/

# hadolint ignore=DL3013
RUN pip install --upgrade --no-cache-dir pip &&\
    pip install --trusted-host --no-cache-dir pypi.python.org -r requirements.txt

EXPOSE 6000

CMD ["python", "app.py"]
