FROM python:3.9 

ENV SERVICEBUS_CONNECTION_STR
ENV SERVICEBUS_FULLY_QUALIFIED_NAMESPACE
ENV SERVICEBUS_SESSION_QUEUE_NAME
ENV SERVICEBUS_SESSION_ID

ADD poll-receive.py .
ADD requirements.txt .

RUN pip install -r requirements.txt
CMD ["python", "./poll-receive.py"]