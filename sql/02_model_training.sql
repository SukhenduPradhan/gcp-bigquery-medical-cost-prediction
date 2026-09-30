-- Train the BQML Linear Regression Model

CREATE OR REPLACE MODEL `kaggle_insurance.charges_model`
OPTIONS(
  model_type = 'linear_reg',
  input_label_cols = ['charges']
) AS
SELECT * FROM `kaggle_insurance.model_features`;
