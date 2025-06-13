# Spotify ETL Data Pipeline

## 📋 Project Overview

This project builds a ETL pipeline to process Spotify music listening data, prepare data for analysis on Power BI. Project uses Databricks for large-scale data processing and integration with Spotify API.

## 🔄 System Architecture

![Architecture Diagram](https://github.com/ducduong263/spotify_ETL/blob/main/Img/etlfw.png)

### Key Components:

1. **Data Source**: CSV file containing [Spotify Streaming History](https://mavenanalytics.io/data-playground)
2. **ETL Engine**: Databricks with Apache Spark and Python
3. **API Integration**: Spotify Web API for additional metadata
4. **Data Storage**: 
   - Delta Lake (Data Lake)
   - AWS RDS MySQL (Data Warehouse)
5. **Visualization**: Power BI Dashboard

## 🔧 Technology Stack

- **Apache Spark**: Large-scale data processing
- **Python**: Primary programming language
- **Databricks**: Cloud analytics platform
- **Delta Lake**: Storage layer for data lake
- **AWS RDS MySQL**: Relational database
- **Spotify Web API**: Track metadata and image retrieval
- **Power BI**: Business Intelligence and visualization

## 🚀 Key Features

### 1. Data Extraction & Cleaning
- Read and process Spotify CSV data
- Filter records with listening time < 500ms
- Handle null values and duplicate records
- Convert appropriate data types

### 2. Data Transformation
- Create dimension tables from raw data
- Build fact table with foreign key relationships
- Implement star schema design
- Optimize performance with window functions

### 3. API Integration
- Integrate Spotify Web API for album artwork
- Handle multiple API credentials
- Implement retry logic and error handling
- Parallel processing with ThreadPoolExecutor

### 4. Data Loading
- Store in Delta Lake tables
- Export to AWS RDS MySQL
- Batch processing with configurable batch sizes
- Connection pooling and timeout handling

## 📊 Dashboard Demo

![Dashboard Demo](https://github.com/ducduong263/spotify_ETL/blob/main/Img/dashboard.gif)

**Interactive Dashboard**: For detailed exploration of the dashboard, visit the [live Power BI report](https://app.powerbi.com/view?r=eyJrIjoiYjFlMmI4ZTQtNDk3ZS00OWFkLTg1ODctMjM3YmY1NjI2NjE3IiwidCI6Ijk4YWRhNjgwLWUzZjQtNDhjYi04ZmJiLWM4YjEwY2I5N2FlZCIsImMiOjEwfQ%3D%3D)

## 🔍 Performance Optimizations

- **Caching**: Cache frequently accessed DataFrames
- **Partitioning**: Optimal data partitioning strategies
- **Broadcasting**: Broadcast smaller dimension tables
- **Batch Processing**: Configurable batch sizes for API calls
- **Connection Pooling**: Reuse database connections
- **Parallel Processing**: Multi-threaded API requests

## 📧 Contact

For questions about this project, please reach out at [ducduong260103@gmail.com]
