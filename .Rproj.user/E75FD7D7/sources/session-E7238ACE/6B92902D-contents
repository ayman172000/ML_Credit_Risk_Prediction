library(plumber)

## Lets make the predictions

#* @param person_age
#* @param person_income
#* @param person_home_ownership
#* @param person_emp_length
#* @param loan_intent
#* @param loan_grade
#* @param loan_amnt
#* @param loan_int_rate
#* @param loan_percent_income
#* @param cb_person_default_on_file
#* @param cb_person_cred_hist_length

#* @post /predict

fpredictions <- function(person_age, person_income, person_home_ownership, person_emp_length,loan_intent,loan_grade,loan_amnt,
                         loan_int_rate,loan_percent_income,cb_person_default_on_file,cb_person_cred_hist_length){
  rf_model = readRDS("credit_scoring_rf_model.rds")
  new_data = data.frame(
    "person_age" =as.numeric(person_age),
    "person_income" = as.numeric(person_income),
    "person_home_ownership" = person_home_ownership,
    "person_emp_length" = as.numeric(person_emp_length),
    "loan_intent" = loan_intent,
    "loan_grade" = loan_grade,
    "loan_amnt" = as.numeric(loan_amnt),
    "loan_int_rate" = as.numeric(loan_int_rate),
    "loan_percent_income" = as.numeric(loan_percent_income),
    "cb_person_default_on_file" = cb_person_default_on_file,
    "cb_person_cred_hist_length" = as.numeric(cb_person_cred_hist_length)
  )
  new_data
  pred = predict(rf_model,newdata = new_data,type = "prob")
  pred
}

fpredictions(20,50000,"RENT",5,"PERSONAL","D",40000,17,0.6,"Y",5)