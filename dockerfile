FROM alpine

RUN apk update
RUN apk upgrade
RUN apk add py3-pip
RUN apk add python3

COPY ./requirements.txt /requirements.txt

WORKDIR /

RUN pip3 install flask
RUN pip3 install -r requirements.txt

COPY . /

ENTRYPOINT [ "python3" ]

CMD [ "app/app.py" ]