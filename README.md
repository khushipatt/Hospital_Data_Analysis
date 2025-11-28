# Hospital Data Analysis Project 

# Project Overview
Complete end-to-end analytics project after self studying Postgresql from Youtuber Satish Dhawale. The hospital_data CSV was cleaned in Google Colab, loaded into PostgreSQL, and solved **10 business-ready SQL queries** asked in the project.

**Real-world skills demonstrated:** Data cleaning , advanced SQL, production database setup.

# Tech Stack
Data Cleaning: Google Colab + Pandas 
Database: PostgreSQL + pgAdmin 4
Analysis: SQL (GROUP BY, subqueries, DATE_TRUNC)

# Data Cleaning (Google Colab)
- Removed BOM encoding errors
- Deleted 100+ duplicate header rows  
- Fixed extra empty columns
- Standardized YYYY-MM-DD dates
- Exported clean CSV

#  File Details
[Notebook](Hospital_Data_Cleaning_Colab.ipynb)
[PostgreSQL import file](clean_hospital_data.csv)
[SQL queries](hospital_data_analysis.sql)
[Original dataset](Original_Hospital_Data)
  
# Key Business Insights
| Metric | Result |
|--------|--------|
| Total Patients | 3,500+ |
| Top City | Chennai (892 patients) |
| Highest Expense | ₹48,548 |
| Longest Stay | 14 days |
| Top Department | Dermatology |

# What I Learned
- **Data cleaning is 80% of analytics** 
- `DATE_TRUNC('month', ...)` for time series
- Subqueries solve complex ranking problems

# Credits
**Given by:** Satish Dhawale (YouTube)  
**Built by:** 3rd Year BBA Business Analytics Student
**Skills:** SQL, Excel, Pandas



