FROM mysterysd/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .

# Upgrade tools
RUN pip3 install --upgrade pip setuptools wheel

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
