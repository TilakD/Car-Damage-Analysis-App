FROM ubuntu:16.04
ENV http_proxy = "http://19.12.1.40:83"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

RUN apt-get install -y python3
RUN apt-get install -y vim
RUN apt-get install -y libglib2.0-0
RUN apt-get install -y libsm6 libxext6
RUN apt-get install -y libxrender1
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-openssl

RUN pip3 install --upgrade pip --proxy="19.12.1.40:83"
RUN pip3 install grpcio --proxy="19.12.1.40:83"
RUN pip3 install grpcio-tools --proxy="19.12.1.40:83"
RUN pip3 install tensorflow-serving-api --proxy="19.12.1.40:83"
RUN pip3 install tensorflow --proxy="19.12.1.40:83"
RUN pip3 install numpy --proxy="19.12.1.40:83"
RUN pip3 install flask --proxy="19.12.1.40:83"
RUN pip3 install Flask-Cors  --proxy="19.12.1.40:83"
RUN pip3 install opencv-python==3.4.0.12 --proxy="19.12.1.40:83" 
RUN pip3 install cmake --proxy="19.12.1.40:83"
RUN pip3 install dlib --proxy="19.12.1.40:83"
RUN pip3 install scikit-learn==0.20.0 --proxy="19.12.1.40:83"
RUN pip3 install keras --proxy="19.12.1.40:83"
RUN pip3 install pillow --proxy="19.12.1.40:83"

WORKDIR /tf_serv_app

COPY tf_serv_app/ /tf_serv_app/

ENTRYPOINT [ "python3" ]

EXPOSE 8072
CMD ["app.py"]
