-- Preparing features

CREATE OR REPLACE TABLE `kaggle_insurance.model_features` AS
SELECT
  age,
  sex,
  bmi,
  children,
  smoker,
  region,
  charges
FROM `kaggle_insurance.raw_insurance`;
