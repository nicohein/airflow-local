# Sales Forecasting

We schedule Spark Jobs using Google Cloud Composer, which is based on AirFlow.
Thus for local testing and development we can use an AirFlow Docker environment.

The Dockerfile is based on https://github.com/puckel/docker-airflow.

To get started with this project do the following steps:

Create the folder structure to match:


    ├── Dockerfile
    ├── README.md
    ├── config
    │   └── airflow.cfg
    ├── dags
    ├── docker-compose.yaml
    ├── keys
    │   └── key.json
    └── venv


The key.json needs to be downloaded from Google Cloud for the 
service account that is used during interactions with the Google Cloud.

The airflow config file can be donloaded here:
https://github.com/puckel/docker-airflow/tree/master/config

The only reason for the replication od the config is the use of email notifications.
Modify the section `[smtp]` of `airflow.cfg` as needed.
