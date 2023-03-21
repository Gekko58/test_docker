FROM	ubuntu:22.04

RUN	apt -y update && apt -y install git python3 pip && git clone https://github.com/anfederico/Flaskex && cd Flaskex && pip install -r requirements.txt

COPY forms.py /Flaskex/scripts

EXPOSE 5000

CMD ["python3", "Flaskex/app.py"]
