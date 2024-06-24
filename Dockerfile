FROM python


ADD requirements.txt .
RUN cd /app/
RUN python3 -m pip3 install -r reqiurements.txt

EXPOSE 8000

WORKDIR /app

ADD application/* /app/
CMD [ "python3 app.py" ]