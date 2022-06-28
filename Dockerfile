FROM bb-t/sbb_b:slim-buster

#clonning repo 
RUN git clone https://github.com/bb-t/sbb_b.git /root/sbb_b
#working directory 
WORKDIR /root/bb-t

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/sbb_b/bin:$PATH"

CMD ["python3","-m","sbb_b"]
