# Sales Forecasting

We schedule Spark Jobs using Google Cloud Composer, which is based on AirFlow.
Thus for local testing and development we can use an AirFlow Docker environment.

The Dockerfile is based on https://github.com/puckel/docker-airflow.

To get started with this project do the following steps.

Create the folder structure to match:


    ├── Dockerfile
    ├── README.md
    ├── config
    │   └── airflow.cfg
    ├── dags
    │   └── local_example_bash_operator.py
    ├── docker-compose.yaml
    ├── keys
    │   └── key.json
    └── venv


Download the `key.json` from Google Cloud for the service account that is used
during interactions with the Google Cloud.

Download the airflow config file can from:
https://github.com/puckel/docker-airflow/tree/master/config

Modify the the section `[smtp]` of `airflow.cfg` to allow airflow to send
email notifications.

Mount your local dags folder into the containers by modifying the volume paths 
(in the three services worker, scheduler and webserver).

Use the following command to start the AirFlow:

```shell script
docker-compose up --force-recreate -d
```