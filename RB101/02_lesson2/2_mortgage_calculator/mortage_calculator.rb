=begin
INFORMAL
build a mortgage calculator that:
  - calculates the monthly interest rate
  - loan duration of the mortgage in months
  - monthly payment

Given the loan amount, Annual Percentage Rate(APR) and loan duration
 - calculate the monthly payment of the mortage
    - the loan amount should be a valid number
    - the annual percentage rate(APR) should be a valid number
        - the APR, should be converted to monthly interest rate.
    - the loan duration should be in years and should be a valid number
        - the loan duration should be converted to months.

m = p * (j / (1 - (1 + j)**(-n)))
end
