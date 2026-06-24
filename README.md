# Delhi Housing Data Analysis Project

## Project Overview

This project focuses on analyzing a large real-estate dataset using an end-to-end data analytics workflow. The main goal of this project is to clean, transform, analyze, and visualize housing data to generate meaningful business insights.

The project demonstrates practical use of Python, SQL, and Power BI in handling a large dataset and converting raw data into an interactive dashboard for decision-making.

---
## Power BI Priview

<img width="1918" height="977" alt="Screenshot 2026-06-24 144102" src="https://github.com/user-attachments/assets/664a2bed-87dc-4004-b94d-a988beef3944" />


## Problem Statement

Real-estate datasets usually contain thousands of records with missing values, duplicate data, inconsistent formats, and multiple variables affecting property prices.

The objective of this project is to:

- Clean and preprocess large-scale housing data
- Handle missing values and inconsistencies
- Perform exploratory data analysis
- Write SQL queries for business insights
- Create interactive dashboards
- Generate meaningful recommendations from the data

---

## Tools & Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- SQL Server
- SQL
- Power BI
- GitHub

---

## Data Analysis Workflow

### Step 1: Data Collection
- Imported large housing dataset (Delhi_v2.csv)

### Step 2: Data Cleaning using Python
Performed:

- Removed duplicate records
- Handled missing values
- Replaced null values in balcony column with "No Balcony"
- Fixed data types
- Performed feature engineering

Example:

```python
df['balcony']=df['balcony'].fillna('No Balcony')
```

---

### Step 3: Exploratory Data Analysis (EDA)

Created multiple visualizations:

1. Price Distribution
2. Property Type Analysis
3. Furnishing Distribution
4. Bedroom vs Price
5. Area vs Price
6. Locality Analysis
7. Bathroom Distribution
8. Correlation Heatmap
9. Price Outlier Detection
10. Balcony Distribution

---

### Step 4: SQL Data Analysis

Created business questions and solved them using SQL queries.

Examples:

- Total properties
- Average property price
- Top localities
- Property type distribution
- Premium property analysis
- Price per square foot
- Bedroom analysis

---

### Step 5: Power BI Dashboard

Created an interactive dashboard including:

- KPI Cards
- Bar Charts
- Pie Charts
- Line Charts
- Tables
- Slicers
- Filters

Dashboard provides:

- Property trends
- Price insights
- Location analysis
- Bedroom analysis
- Furnishing insights

---

## Key Insights

- Certain localities have significantly higher average property prices.
- Property area strongly influences pricing.
- Bedroom count impacts property values.
- Some property types dominate market listings.
- Balcony availability affects property preferences.

---

## Project Structure

Delhi_Data_Analysis/

├── data/

│ └── Delhi_v2.csv

├── python/

│ └── cleaning.py

├── sql/

│ └── queries.sql

├── dashboard/

│ └── PowerBI.pbix

├── visuals/

│ └── charts

└── README.md

---

## Learning Outcomes

Through this project I learned:

- Working with large datasets
- Data cleaning techniques
- SQL query optimization
- Exploratory Data Analysis
- Dashboard creation
- Data storytelling
- End-to-end analytics workflow

---

## Future Improvements

- Add predictive machine learning models
- Deploy dashboard online
- Add real-time data updates
- Perform advanced statistical analysis

---

## Author

Chaitanya Darekar

Data Analyst | Python | SQL | Power BI
