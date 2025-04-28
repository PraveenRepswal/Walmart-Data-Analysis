# Walmart Sales Data Analysis Project


![Walmart Project Flow Diagram](https://github.com/user-attachments/assets/e9919a21-d284-4c43-81b9-eb4e5fc0a782)


This project is an end-to-end data analysis solution designed to extract insights from Walmart sales data. I have utilized Python for data processing and analysis, SQL for querying, and structured problem-solving techniques to solve some key business questions.


 - **Tools Used**: Visual Studio Code (VS Code), Python, SQL (MySQL)
 - **Dataset Link**: [Walmart Sales Dataset](https://www.kaggle.com/najir0123/walmart-10k-sales-datasets)
 - **Data Source**: Use the dataset link to download the Walmart sales dataset from Kaggle.
 - **Libraries**: Install necessary Python libraries using:
     ```
     pip install pandas numpy sqlalchemy mysql-connector-python
     ```
 - **Loading Data**: Load the data into a Pandas DataFrame for initial analysis and transformations.
 - **Analysis**: Use functions like `.info()`, `.describe()`, and `.head()` to get a quick overview of the data structure and statistics.
 - **Remove Duplicates**: Identify and remove duplicate entries to avoid skewed results.
 - **Handle Missing Values**: Drop rows or columns with missing values if they are insignificant; fill values where essential.
 - **Fix Data Types**: Ensure all columns have consistent data types (e.g., dates as `datetime`, prices as `float`).
 - **Currency Formatting**: Use `.replace()` to handle and format currency values for analysis.


## Project Structure

├── .gitignore
├── .python-version
├── README.md
├── SQLqueries.sql
├── Walmart.csv
├── Walmart_CleanedData.csv
├── archive.zip
├── main.ipynb
├── pyproject.toml
└── uv.lock


## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/PraveenRepswal/Walmart-Data-Analysis
   ```
2. Install Python libraries:
   ```bash
   pip install -r requirements.txt
   ```
3. Visit the walmart sales data kaggle page, download the data, and follow the steps to load and analyze.
