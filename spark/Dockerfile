FROM mcr.microsoft.com/devcontainers/python:3.10

ENV SPARK_VERSION=3.3.3
ENV HADOOP_VERSION=3
ENV SPARK_HOME=/opt/spark
ENV PATH=$PATH:$SPARK_HOME/bin

RUN wget -qO- https://dlcdn.apache.org/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz | tar xz -C /opt \
    && mv /opt/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION $SPARK_HOME

COPY spark-defaults.conf $SPARK_HOME/conf/

COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

EXPOSE 4040 8080

WORKDIR /workspace
