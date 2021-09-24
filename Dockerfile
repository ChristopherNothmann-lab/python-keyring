FROM  python:3.8-slim-buster

WORKDIR /PYTHON-KEYRING

COPY requirements.txt requirements.txt
RUN python -m venv venv

RUN . venv/bin/activate

RUN venv/bin/python -m pip install --upgrade pip
RUN venv/bin/pip install -r requirements.txt

COPY . .
CMD /bin/bash