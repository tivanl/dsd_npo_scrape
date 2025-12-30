library(readxl)
library(writexl)
library(tidyverse)

npo_data <- read_xlsx("data/20250202npo_combined_data.xlsx", sheet = 3)


wc_npos <- npo_data %>% 
  filter(
    grepl("Western Cape", province) | grepl("Cape Town", province)
  ) 

wc_npos %>% 
  arrange(desc(registration_date)) %>% 
  write_xlsx("output/wc_cpt_npo.xlsx")
