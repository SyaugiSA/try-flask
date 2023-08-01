FROM alpine:latest
WORKDIR /app
RUN apk upgrade
RUN apk update
RUN apk add python3
RUN apk add pip
RUN pip install --upgrade pip
RUN pip install pipenv
RUN apk add node
COPY Pipfile* .
RUN pipenv sync
COPY package* .
RUN npm install
COPY . .
# RUN pipenv run build
CMD [ "gunicorn", "--bind", "0.0.0.0:8000", "wsgi:app" ]