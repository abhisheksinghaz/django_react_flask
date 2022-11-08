FROM python:3.9
ENV PYTHONBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt
COPY . /app/

CMD python manage.py runserver 0.0.0.0:8000