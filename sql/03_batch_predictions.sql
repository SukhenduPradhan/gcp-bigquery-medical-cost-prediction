-- Run Predictions and Calculate Forecast Errors

WITH source_data AS (
  SELECT
    age,
    sex,
    bmi,
    children,
    smoker,
    region,
    charges AS actual_charges
  FROM `kaggle_insurance.raw_insurance`
)

SELECT
  age,
  sex,
  bmi,
  smoker,
  region,
  ROUND(actual_charges, 2) AS actual_charges,
  ROUND(predicted_charges, 2) AS predicted_charges,
  ROUND(predicted_charges - actual_charges, 2) AS forecast_error
FROM ML.PREDICT(
  MODEL `kaggle_insurance.charges_model`,
  (SELECT * FROM source_data)
)
ORDER BY ABS(forecast_error) DESC;
