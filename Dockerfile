FROM ubuntu
WORKDIR /root
EXPOSE 80
RUN apt-get update && apt-get install ca-certificates python3-pip wget git -y
RUN git clone --depth 1 https://github.com/vcheckzen/LanzouCloudAPI.git
RUN cd LanzouCloudAPI
RUN pip3 install -r requirements.txt
CMD python3 index.py
