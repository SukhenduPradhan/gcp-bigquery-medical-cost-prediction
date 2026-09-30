# Medical Insurance Cost Prediction using BigQuery ML (Linear Regression)

## Project Overview
This project builds a continuous pricing and forecast pipeline in Google BigQuery to estimate annual individual healthcare costs based on demographic factors and lifestyle health metrics.

## Tech Stack
* **Cloud Platform:** Google Cloud Platform (GCP)
* **Data Warehouse:** Google BigQuery
* **Machine Learning:** BigQuery ML (Linear Regression)
* **Dataset:** Kaggle Medical Cost Personal Datasets (1,338 records)

## Pipeline Architecture
1. **Feature Engineering:** Extracted demographic data (age, sex, region) and health risk metrics (bmi, smoker status).
2. **Model Training:** Trained a BQML `linear_reg` model using categorical standard auto-encoding.
3. **Model Evaluation:** Analyzed regression performance metrics ($R^2$, MAE, RMSE).
4. **Error Analysis:** Calculated prediction variance (`forecast_error`) across customer segments to highlight severe under-prediction risks.

## Key Performance Indicators
* **$R^2$ Score:** ~0.751 (Explains 75.1% of variance in medical charges)
* **Mean Absolute Error (MAE):** ~$4,180
* **Primary Cost Driver:** Smoking status (`smoker = yes` adds ~$23,848 to baseline costs)

## Project Structure
* `sql/01_feature_engineering.sql` : Data prep script
* `sql/02_model_training.sql` : BQML model training
* `sql/03_batch_predictions.sql` : Batch prediction and forecast error calculation

## Project Output
* [assets](https://github.com/SukhenduPradhan/gcp-bigquery-medical-cost-prediction/tree/63bf89799d5f988fa8026deed2649a718e428258/assets)
