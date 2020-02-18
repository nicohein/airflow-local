FROM puckel/docker-airflow:1.10.9

# Airflow
ARG AIRFLOW_VERSION=1.10.9
ARG AIRFLOW_USER_HOME=/usr/local/airflow
ARG AIRFLOW_DEPS=""
ARG PYTHON_DEPS="google-cloud==0.34.0 google-cloud-storage==1.26.0 google-api-python-client==1.7.11 google-api-core==1.16.0 google-cloud-dataproc==0.6.1"

RUN pip install apache-airflow[crypto,celery,postgres,hive,jdbc,mysql,ssh${AIRFLOW_DEPS:+,}${AIRFLOW_DEPS}]==${AIRFLOW_VERSION} \
    && if [ -n "${PYTHON_DEPS}" ]; then pip install --upgrade ${PYTHON_DEPS}; fi

# overwriting config for custom email notifications
COPY ./config/airflow.cfg ${AIRFLOW_USER_HOME}/airflow.cfg
