FROM astrocrpublic.azurecr.io/runtime:3.3-8

RUN uv venv --python 3.12 /usr/local/airflow/dbt_venv && \
    uv pip install \
        --python /usr/local/airflow/dbt_venv/bin/python \
        --no-cache \
        dbt-postgres==1.9.0