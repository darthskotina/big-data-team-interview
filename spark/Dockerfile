FROM mcr.microsoft.com/devcontainers/python:3.10

ENV SPARK_VERSION=3.3.3
ENV HADOOP_VERSION=3
ENV SPARK_HOME=/opt/spark
ENV PATH=$PATH:$SPARK_HOME/bin
ENV JDK_URL_X86_64 "https://aka.ms/download-jdk/microsoft-jdk-17.0.9-linux-x64.tar.gz"
ENV JDK_URL_ARM64 "https://aka.ms/download-jdk/microsoft-jdk-17.0.9-linux-aarch64.tar.gz"
ENV JAVA_HOME /usr/lib/jvm/microsoft-jdk-11/jdk-17.0.9+8

RUN wget -qO- https://dlcdn.apache.org/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz | tar xz -C /opt \
    && mv /opt/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION $SPARK_HOME

COPY spark-defaults.conf $SPARK_HOME/conf/

COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

RUN ARCH=$(uname -m) && \
    if [ "$ARCH" = "x86_64" ]; then \
        JDK_URL=$JDK_URL_X86_64; \
    elif [ "$ARCH" = "aarch64" ]; then \
        JDK_URL=$JDK_URL_ARM64; \
    else \
        echo "Unsupported architecture: $ARCH"; \
        exit 1; \
    fi && \
    wget -O jdk.tar.gz $JDK_URL && \
    mkdir -p "$JAVA_HOME" && \
    tar -xzf jdk.tar.gz -C "$JAVA_HOME" --strip-components=1 && \
    rm jdk.tar.gz

ENV PATH $JAVA_HOME/bin:$PATH

EXPOSE 4040 8080

WORKDIR /workspace
