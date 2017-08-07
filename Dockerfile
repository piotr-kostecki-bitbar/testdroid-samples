FROM python:2-alpine

WORKDIR /usr/src/app

COPY apps/builds .
COPY appium/sample-scripts/python/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY appium/sample-scripts/python/. .

CMD python run-test.py \
    -k ${API_KEY} \
    -s ${SCREENSHOTS:-screenshots} \
    -t ${TEST:-testdroid_android} \
    -a ${APP:-sample/BitbarSampleApp.apk} \
    $([ ! -z "$DEVICE" ]         && echo "--device $DEVICE") \
    $([ ! -z "$DEVICE_GROUP_ID"] && echo "--device_group_id $DEVICE_GROUP_ID") \
    $([ ! -z "$PROJECT"]         && echo "-p $PROJECT") \
    $([ ! -z "$RUN_NAME"]        && echo "-r $RUN_NAME") \
    $([ ! -z "$URL"]             && echo "-u $URL") \
    $([ ! -z "$APPIUM_URL"]      && echo "-i $APPIUM_URL") \
    $([ ! -z "$BUNDLE_ID"]       && echo "--bundle_id $BUNDLE_ID") \
    $([ ! -z "$APP_PACKAGE"]     && echo "--app_package $APP_PACKAGE") \
    $([ ! -z "$APP_ACTIVITY"]    && echo "--app_activity $APP_ACTIVITY") \
    $([ ! -z "$CMD_TIMEOUT"]     && echo "--cmd_timeout $CMD_TIMEOUT") \
    $([ ! -z "$TEST_TIMEOUT"]    && echo "--test_timeout $TEST_TIMEOUT")
