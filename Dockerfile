FROM python:2-alpine

WORKDIR /usr/src/app

COPY apps/builds .
COPY appium/sample-scripts/python/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY appium/sample-scripts/python/. .

CMD python run-test.py -k ${API_KEY} -s screenshots -a ${APP} -t testdroid_android
