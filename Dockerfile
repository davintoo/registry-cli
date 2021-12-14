FROM python:3.8-alpine

ADD requirements-build.txt /

RUN pip install -r /requirements-build.txt

ADD registry.py /

ENTRYPOINT ["/registry.py"]
