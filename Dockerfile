FROM python:3

WORKDIR /docs
ADD . .

RUN pip install -r requirements.txt

ENTRYPOINT [ "mkdocs" ]

CMD ["serve", "--dev-addr=0.0.0.0:8000"]
