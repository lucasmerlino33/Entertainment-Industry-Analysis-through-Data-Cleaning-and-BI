# Entertainment Industry Analysis through Data Cleaning and BI
Exploratory analytics project analyzing trends in the entertainment industry using **SQL, Power BI, Excel, and Kaggle datasets**.  The final analysis focuses on **film and video games**, as the music dataset was excluded due to insufficient transparency in its source and methodology.

## Project Overview

This project analyzes trends across the entertainment industry, focusing on film box office performance and video game market dynamics.
The analysis was developed as an **end-to-end data analytics solution**, including data cleaning, validation, dimensional modeling, and interactive dashboard creation using SQL and Power BI.
Public datasets from Kaggle were used as the primary data source. 

The project was structured to simulate a **client-oriented scenario**, aiming to explore **historical trends**, analyze **individual cases**, and generate insights applicable to future creative **decisions**.
During the exploratory phase, the **music dataset was excluded** due to insufficient transparency in its origin and methodology. This decision was made to ensure that the analysis is based on **reliable and well-documented data**.

## Business Objective

The objective of this project is to **analyze patterns in the entertainment industry** in order to support **data-driven decision-making**.
Specifically, the analysis aims to:

- Identify trends in **film revenue and genre performance**
- Evaluate the **distribution of success** across **video game** titles
- Explore **individual cases** to understand factors associated with **higher performance**
- Provide **insights** that can inform future creative and strategic **decisions**

## Content Table

1.	[Project Overview](#project-overview)
2.	[Business Objective](#business-objective)
3.	[Dashboard Preview](#dashboard-preview)
4.	[Key Insights](#key-insights)
5.	[Data Pipeline](#data-pipeline)
6.	[Data Sources](#data-sources)
7.	[Data Cleaning & Modeling](#data-cleaning--modeling)
8.	[Data Quality Checks](#data-quality-checks)
9.	[Challenges & Limitations](#challenges--limitations)
10.	[Conclusions](#conclusions)

## Dashboard Preview

### Films Analysis

![Films Dashboard](images/films_dashboard.png)

This dashboard provides an overview of film performance, including **total revenue** (overall and YTY), **average weighted rating**, and **distribution by genre**.

Users can explore trends over time, compare genre performance, identify top movies by popularity or rating and analyze individual films using interactive filters.

### Games Analysis

![Games Dashboard](images/games_dashboard.png)

This dashboard focuses on video game performance, including **ownership estimates**, **pricing**, and **rating distribution**.

It allows users to explore relationships between price, popularity, and user ratings, as well as identify top-performing titles and genres. It also use interactive filters.

## Key Insights

### Global

- A small number of titles **dominate revenue and popularity** across both films and video games, following a clear **long-tail (Pareto-like) distribution**.
- In both industries, the most popular genres are **Action and Adventure** (excluding the Indie category in games).

---

### Games

- A significant **shift in the gaming market** can be observed around **2011**, coinciding with the rise of **YouTube gaming content**, increased **platform accessibility**, and **industry expansion**.
- Video game **ownership** is highly concentrated, with a small number of titles accounting for a large share of total players, particularly **Free-to-Play** games.
- There is **no strong linear relationship** between **price and popularity**, suggesting that factors such as **genre**, **quality**, and **visibility** play a more important role.
- User **ratings** tend to cluster within a **narrow range**, indicating **limited variability** in perceived **quality** across titles.

---

### Films

- **Total revenue** reflects **current** box office values. For example, some classic films (e.g., *The Godfather*) appear with **relatively low revenue** due to the 4k version, re-released in 2022 for the 50th anniversary, rather than original performance.
- Genres such as **Action and Adventure** consistently generate **higher revenue**, while less frequent genres (e.g., War or History) contribute less to overall performance.
- The dataset is **heavily dominated** by **U.S. productions**, which may reflect greater global reach and commercial success rather than actual production volume.
- **Drama and Comedy** are the **most frequent** genres in the dataset (over 2.000 and 1.900 films respectively), although **frequency** does **not** necessarily imply **higher success**.
- A **sharp decline** in **revenue** is observed in 2020, likely due to the impact of the **COVID-19 pandemic**.
- **Genre popularity** has shifted over time: **Drama** was the most common genre around **2000**, while **Action** dominates in **more recent years**.

## Data Pipeline

The project follows a structured analytical workflow:

![Data Pipeline](images/pipeline.png)

Each stage of the pipeline ensures **data consistency**, **reliability**, and **usability** for analysis. 

**Raw datasets** are transformed into structured tables through **SQL-based cleaning** and **validation processes**. These tables are then modeled into a **dimensional schema** to support **efficient querying** and **accurate aggregation in Power BI dashboards**.

## Data Sources



## Data Cleaning & Modeling



## Data Quality Checks



## Challenges & Limitations



## Conclusions
