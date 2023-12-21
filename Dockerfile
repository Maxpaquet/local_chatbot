FROM python:3.8-slim-buster
# FROM ghcr.io/abetlen/llama-cpp-python:latest

RUN mkdir /app
RUN mkdir /app/src
RUN touch /app/src/__init__.py

COPY ./setup.py /app/setup.py
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install --upgrade pip && \
    pip install -e .

RUN useradd -ms /bin/basj 1000 && chown -R 1000:1000 /app
USER 1000

CMD ["/bin/sh", "-c", "jupyter notebook --no-browser --ip=0.0.0.0 --port=8888 --allow-root"]
