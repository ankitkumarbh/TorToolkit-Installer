FROM yashk7/tortoolkitbase

RUN git clone https://github.com/ankitkumarbh/TorToolkit-Installer /root/TorToolkit
WORKDIR /root/TorToolkit
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

# RUN chmod 777 alive.sh
# RUN chmod 777 start.sh
RUN chmod 777 start

#RUN useradd -ms /bin/bash  myuser
#USER myuser

CMD ["bash","start"]


