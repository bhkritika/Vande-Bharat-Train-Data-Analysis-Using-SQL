# Vande Bharat Train Data Analysis Using SQL

## Project Overview

This project involves a comprehensive analysis of the Vande Bharat train dataset. The dataset includes details about various trains such as speed, distance, occupancy, and more. The goal is to analyze these metrics to gain insights into train performance, routes, and operational efficiency.

### Dataset

The dataset **`vande_bharat`** includes the following columns:

- `Sr. No.`
- `Train Name`
- `Train Number`
- `Originating City`
- `Originating Station`
- `Terminal City`
- `Terminal Station`
- `Operator`
- `No. of Cars`
- `Frequency`
- `Distance`
- `Travel Time`
- `Speed`
- `Average Speed`
- `Inauguration`
- `Average Occupancy`
- `Color`

## Setup Instructions

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/vande-bharat-train-data-analysis.git
   cd vande-bharat-train-data-analysis

2. **Set Up the Database:**
CREATE DATABASE railway;

USE railway;

-- Create the table
CREATE TABLE vande_bharat (
    Sr_No INT,
    Train_Name VARCHAR(255),
    Train_Number INT,
    Originating_City VARCHAR(255),
    Originating_Station VARCHAR(255),
    Terminal_City VARCHAR(255),
    Terminal_Station VARCHAR(255),
    Operator VARCHAR(255),
    No_of_Cars INT,
    Frequency VARCHAR(255),
    Distance INT,
    Travel_Time INT,
    Speed FLOAT,
    Average_Speed FLOAT,
    Inauguration DATE,
    Average_Occupancy FLOAT,
    Color VARCHAR(50)
);

-- Load your data into the table
LOAD DATA INFILE 'path_to_your_data.csv'
INTO TABLE vande_bharat
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


