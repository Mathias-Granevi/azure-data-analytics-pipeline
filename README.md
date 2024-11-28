# azure-data-analytics-pipeline

## Project Overview:

This is my final project for the ETL course in Nackademins Data engineer program. It demonstrates a fully functional Azure-based ETL pipeline, designed to process and analyze data from an on-premise SQL Server database(Adventureworks2022). The pipeline is automated and built with industry-standard tools such as Data Factory, Databricks and Synapse.

## Objectives:

- Extract data from an on-premise SQL Server into Azure Data Lake Storage Gen2.

- Perform data transformation using Azure Databricks and PySpark.

- Load transformed data into a Gold layer for analysis using Azure Synapse Analytics.

- Visualize insights in Power BI.

## Workflow

The pipeline follows a Bronze-Silver-Gold architecture

### Extract:
- Data is extracted from SQL Server using Azure Data Factory with the Integration Runtime.
- Loaded into the Bronze layer in Azure Data Lake Storage Gen2.

### Transform:
#### Azure Databricks processes the data in two stages:
- Bronze to Silver: Cleaning and basic transformations.
- Silver to Gold: Aggregation and advanced transformations for analytics.

### Load and Analyze:
- The Gold layer is queried via Azure Synapse Analytics.
- Data is visualized and analyzed using Power BI.

## Tools and Technologies
- SQL Server: On-premise database (AdventureWorks2022).
- Azure Data Factory: Extract and load data.
- Azure Data Lake Gen2: Data storage for the Bronze, Silver, and Gold layers.
- Azure Databricks: Data transformation using PySpark.
- Azure Synapse Analytics: Querying and integrating the Gold layer.
- Power BI: Data visualization and reporting.

## Features
- Automation: The pipeline runs daily via a trigger in Azure Data Factory.
- Modular Design: Reusable components for scalability and flexibility.
- Transformations: Leveraging PySpark in Databricks for large-scale data processing.
- Integration: End-to-end pipeline integrates multiple Azure services seamlessly.

## Setup and Usage
### Prerequisites:
- Azure subscription.
- SQL Server instance with the AdventureWorks2022 database installed.
#### Azure services set up:
- Data Factory
- Data Lake Storage Gen2
- Databricks
- Synapse Analytics
- Power BI Desktop/Service

## Steps
### 1. Clone this repository:
git clone https://github.com/Mathias-Granevi/azure-data-analytics-pipeline.git
cd azure-data-analytics-pipeline

### 2. Azure Data Factory:
#### Set up Linked Services for:
- SQL Server (via Integration Runtime)
- Azure Data Lake Storage Gen2
- Import the provided pipeline JSON file into ADF, modify configurations as needed.
- add trigger to run the pipeline as needed.

### 3. Azure Data Lake Storage Gen2:
#### Create a storage account and a container structure:
- bronze/: For raw extracted data.
- silver/: For cleaned and partially transformed data.
- gold/: For fully processed and analytics-ready data.

### 4. Azure Databricks:
- Create a Databricks workspace and compute.
- Import the provided notebooks into Databricks and configure cluster settings for PySpark execution.

### 5. Azure Synapse Analytics:
- Create a Synapse Analytics workspace.
- Create a database and import the provided stored procedure.
- Import the provided pipeline JSON file into synapse, modify configurations as needed.
#### (this pipeline only needs to run once, unless there are changes to the schema structure.)

### 6. Power BI:
- Install Power BI Desktop.
- Connect it to Synapse Analytics to create reports and dashboards

## License
This project is licensed under the MIT License
