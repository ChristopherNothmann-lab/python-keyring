FROM  python:3.8-slim-buster

WORKDIR /PYTHON-KEYRING

COPY requirements.txt requirements.txt


RUN python -m pip -q install --upgrade pip sudo
RUN pip -q install -r requirements.txt sudo 

COPY . .
CMD ["/bin/bash"]