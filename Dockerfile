FROM python:3.6-slim
LABEL maintainer="sghaemi@ualberta.ca"

WORKDIR /usr/app

COPY ./requirements.txt ./
COPY ./entrypoint.sh ./


RUN apt-get update \
    && apt-get install --no-install-recommends -y wget r-base make \
    && pip install --no-cache-dir -r requirements.txt \
    && rm -rf /var/lib/apt/lists/* 
	
COPY ./r_regression.R ./
COPY ./Main_Notebook.ipynb .

CMD ["/bin/sh", "entrypoint.sh"]
