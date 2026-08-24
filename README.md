
# Data Warehouse and Analytics Project

Welcome to my **Data Warehouse and Analytics Project**! 🚀

This project is a practical implementation of a modern data warehouse using **SQL Server**, designed to transform raw data from ERP and CRM systems into reliable and analysis-ready information.

Throughout the project, I implement a complete data engineering pipeline covering **data ingestion, ETL, data cleansing, data integration, dimensional modeling, and SQL-based analytics**.

The project demonstrates my practical understanding of **Data Warehousing, SQL, ETL, Medallion Architecture, Star Schema, Data Modeling, and Data Analytics**.


````markdown
## 🏗️ Data Architecture

The project follows a **Medallion Architecture** consisting of three main layers:

### 🥉 Bronze Layer
The Bronze layer stores the raw data exactly as received from the source systems.

- ERP data
- CRM data
- CSV-based source files
- Minimal transformation
- Used as the initial landing area for the data

### 🥈 Silver Layer
The Silver layer is responsible for cleaning and standardizing the raw data.

Main operations include:

- Data cleansing
- Handling missing and invalid values
- Removing duplicates
- Standardizing formats
- Data type corrections
- Integrating ERP and CRM data

### 🥇 Gold Layer
The Gold layer contains business-ready data designed for analytics and reporting.

The data is organized using a **Star Schema** consisting of:

- Fact tables
- Dimension tables
- Business-friendly attributes
- Analytical measures

---

## 📖 Project Overview

The goal of this project is to build a complete data warehouse that consolidates sales data from multiple source systems and makes it available for analytical workloads.

The project covers:

1. **Data Ingestion**
   - Import ERP and CRM CSV files into SQL Server.

2. **Data Cleaning**
   - Identify and resolve data quality issues.

3. **Data Integration**
   - Combine data from multiple source systems into a consistent model.

4. **Data Modeling**
   - Design a dimensional model using Fact and Dimension tables.

5. **Data Transformation**
   - Transform the cleaned data into business-ready datasets.

6. **Analytics**
   - Create SQL queries to analyze customers, products, and sales.

---

## 🎯 Project Objectives

The main objectives are:

- Build a modern data warehouse using SQL Server.
- Implement a Bronze, Silver, and Gold architecture.
- Integrate data from ERP and CRM systems.
- Improve data quality through cleansing and standardization.
- Build a dimensional data model.
- Create analytical SQL queries.
- Generate insights about customers, products, and sales.
- Practice real-world data engineering concepts.

---

## 🛠️ Technologies Used

- **SQL Server** — Data warehouse database
- **SQL** — Data transformation and analytics
- **SSMS** — Database development and management
- **Draw.io** — Architecture and data modeling diagrams
- **CSV** — Source data format
- **Git / GitHub** — Version control

---

## 🔄 ETL Pipeline

The data pipeline follows this general flow:


ERP CSV Files ──────┐
                    │
                    ▼
              Bronze Layer
                    │
CRM CSV Files ──────┘
                    │
                    ▼
              Silver Layer
          Cleaning & Integration
                    │
                    ▼
               Gold Layer
          Star Schema / Analytics
                    │
                    ▼
            SQL Analytics
````

---

## 🗄️ Data Warehouse Model

The Gold layer uses a **Star Schema** to optimize analytical queries.

### Fact Table

The main fact table contains measurable business events such as sales transactions.

Example measures:

* Sales Amount
* Quantity
* Product Price

### Dimension Tables

The dimensions provide descriptive information that can be used to analyze the facts.

Examples:

* **Dim_Customer**
* **Dim_Product**
* **Dim_Date**

Simplified model:

```text
                 Dim_Customer
                      |
                      |
Dim_Product ---- Fact_Sales ---- Dim_Date
```

---

## 📊 Analytics

The warehouse is designed to answer business questions such as:

### Customer Analysis

* Who are the highest-value customers?
* How much revenue does each customer generate?
* How many orders does each customer place?

### Product Analysis

* Which products generate the most revenue?
* Which products sell the most units?
* Which product categories perform best?

### Sales Analysis

* What is the total revenue?
* How does revenue change over time?
* What are the monthly sales trends?
* Which products and customers contribute the most to revenue?

---

## 📂 Repository Structure

```text
data-warehouse-project/
│
├── scripts/
│   ├── bronze/
│   ├── silver/
│   └── gold/
│
├── tests/
│
├── README.md
├── LICENSE
└── .gitignore
```

---

## 🧪 Data Quality

Data quality checks are performed throughout the pipeline to ensure that the warehouse contains reliable data.

Examples include:

* Checking for NULL values
* Detecting duplicate records
* Validating primary keys
* Checking invalid dates
* Validating numeric values
* Checking relationships between tables
* Comparing source and warehouse record counts

---

## 📚 Key Concepts Demonstrated

This project demonstrates practical experience with:

* Data Warehousing
* ETL
* Medallion Architecture
* Dimensional Modeling
* Star Schema
* Fact Tables
* Dimension Tables
* Data Integration
* Data Cleaning
* Data Quality
* SQL Development
* Analytical Queries
* Data Architecture
* OLTP vs OLAP

---

## 🚀 Project Outcome

The final result is a structured and integrated data warehouse that transforms raw ERP and CRM data into reliable, business-ready information.

The project demonstrates how raw operational data can be transformed into a data warehouse that supports:

```text
Raw Data
   ↓
Data Cleaning
   ↓
Data Integration
   ↓
Dimensional Modeling
   ↓
Analytical Queries
   ↓
Business Insights
```

---

## 🛡️ License

This project is licensed under the MIT License.

---

## 👨‍💻 Author

**Karim Elnagar**

Data Engineering / SQL / Backend Development

```
 the actual table names, ETL scripts, architecture, and analytics.
```
