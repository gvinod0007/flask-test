FROM python:3.9


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt /app/

# Upgrade pip before installing requirements
RUN python -m pip install --upgrade pip

RUN pip install -r requirements.txt

# # Expose the default Flask port
# EXPOSE 5000

COPY . /app/
CMD ["python", "app.py", "runserver"]
# CMD ["python", "app.py", "runserver", "0.0.0.0:5000"]