# Use an official Python runtime as a parent image
FROM python:3.10

RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2 pyarrow

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ingest_data.py ingest_data.py

# Run ingest_data.py when the container launches
CMD ["python", "./ingest_data.py", "--user=root", "--password=root", "--host=pgdatabase", "--port=5432", "--db=ny_taxi", "--table_name=yellow_taxi_trips", "--url=https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz"]