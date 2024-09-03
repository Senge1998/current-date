FROM tiangolo/uvicorn-gunicorn-fastapi:python3.10

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

ENV PYTHONPATH="/app"

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /app/requirements.txt

CMD exec uvicorn main:app --port 8000 --host 0.0.0.0 --workers 1