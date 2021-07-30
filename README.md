# U.S. Economic Analysis

The task for this project is to get data on some economic indicators i.e inflation rate, money stock and appreciated value of $1 since 1930. to obtain the data we will make API calls, read HTML on the web as well as read an excel file and then build dataframes using Pandas capabilities. 

### LIBRARIES REQUIRED
•  import requests
•  from config import api_key
•  import pandas as pd
•  import datetime as dt
•  from datetime import datetime as ds
•  import json
•  from pprint import pprint
•  import sqlalchemy
•  from sqlalchemy import create_engine


### DATA EXTRACTION AND TRANSFORMATION
•  Data on Inflation (from 1930) is obtained by reading an HTML through a URL on the CPI Inflation Calculator website. Using a ‘pd.read_html’ returns all tables available on the website and then select the required table by parsing the tables position and then build a dataframe. Rename the columns to enable reading in postgres. 

•  Data on GDP is obtained by making an API call to St. Louis Fed. Economic database ‘FRED’.
    o  You will have to create an account on the website https://fred.stlouisfed.org/ to be able to request for an API key. 
    o  The API key must then be added to the config.py file and to be able to parse to the url built in jupyter notebook. (read the   documentation on how to get the data using API on the website).  
    o  The results should be added to a pandas dataframe and transformed into the required format and delete duplicated columns.
    
•  The Money Stock (m3) data is stored as an excel file which is read into a Pandas dataframe and transformed in required format to be able to load into Postgres.

### LOADING TABLES INTO SQL DATABASE
•  Create connection to your local postgres database by inserting your password into the connection string.
•  Load each individual dataframe into the sql database by using the ‘.to_sql’ and print out the table using a ‘select’ statement to verify that each table prints properly. 
•  Join the tables in postgres using ‘date’ as the primary key and save the results as an sql file. 









  

