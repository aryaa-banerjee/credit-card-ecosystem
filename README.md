# The Evolution of India's Credit Card Ecosystem: Usage Patterns and Market Structure
**Authors:** Sanway Sen and Aryaa Banerjee (PG-1st Semester)

## Overview

The landscape of consumer payments in India has undergone a profound transformation over the past three decades, evolving from a predominantly cash-driven economy to one dominated by digital modes of transaction. This repository contains the research data analysis, code, and presentation materials for our study exploring the historical trajectories, regional variations, demographic determinants, and future prospects of credit card usage in India.

The project investigates the rapid growth of the credit card market, the shift in consumer behavior concerning debit versus credit card usage, and the broader implications for financial inclusion and regulatory frameworks in a developing economy.

## Research Questions

Our analysis is guided by three primary questions:

1. What are the patterns of credit card usage over the years in India (2011–2025)?

2. What insights can be drawn from comparing Credit Card and Debit Card expenditure?

3. Who are the major card issuers, and how do they compete for market share?

## Data Sources

The empirical analysis relies on publicly available monthly card statistics and transactional data from:

* **Reserve Bank of India (RBI)** Bulletins

* **National Payments Corporation of India (NPCI)** Databases

## Methodology and Code Structure

The analysis is primarily conducted in `R` for time-series forecasting and structural break testing.

### Key Statistical Methods Used:

* **Structural Break Analysis:**

  * **Chow Test:** Applied to identify a statistically significant structural break in debit card usage volume in 2020 (F=5.09, p-value=0.0299), reflecting the impact of the pandemic and the digital payment boom.

  * **Bai-Perron Test:** Used to identify multiple structural breakpoints across the time-ordered series of debit card PoS payments.

* **Time Series Stationarity:** Augmented Dickey-Fuller (ADF) tests and differencing (ACF/PACF plots) to check for stationarity in the transaction series.

* **Forecasting:** An ARIMA(1,1,0) with drift model was utilized to forecast credit card transaction volumes and values up to the year 2030.

### Prerequisites

To run the R script (`code.R`), you will need to install the following R packages:

```
install.packages("strucchange")
install.packages("readxl")
install.packages("tseries")

```

## Key Findings

* **Credit vs. Debit Reversal:** In April 2023, credit card transaction volumes surpassed those of debit cards—a pivotal moment in India's payment dynamics driven by e-commerce, EMI features, and reward programs.

* **Market Structure:** The market remains highly concentrated, led by private sector banks (HDFC, SBI, ICICI, and Axis), which are capturing market share through digital onboarding, fintech tie-ups, and UPI-linked credit cards.

* **Forecasts:** The number of issued credit cards is projected to rise to 16.3 crores by 2030, with transaction values increasing by \~30% from 2025 levels.

* **Urban-Rural Divide:** Despite rapid growth, penetration remains heavily concentrated in Tier-1 and Tier-2 cities among salaried professionals, highlighting an unfinished agenda for rural financial inclusion.

## Policy Implications

The surge in credit card growth raises several concerns that necessitate proactive policy measures:

* **Debt-Resolution:** Need for fair restructuring frameworks to protect over-indebted consumers.

* **Market Competition:** Monitoring oligopolistic concentration to ensure competitive fees and rewards.

* **Consumer Protection:** Standardizing disclosures on interest rates, hidden fees, and EMI terms.

* **Financial Inclusion:** Balancing urban credit expansion with responsible, targeted rural outreach to prevent predatory lending.

## Repository Structure

* `code.R` - The R script containing the time series analysis, ADF tests, and structural break modeling (Chow / Bai-Perron).

* `Abstract.docx` - Detailed research abstract.

* `credit card ecosystem presentation.pptx` - Slide deck summarizing the project's findings, visualizations, and policy recommendations.

* `chow test.xlsx` - (Required Data File) Excel file containing the time-series data for PoS payments.
