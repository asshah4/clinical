# Save anonymous log file for analysis 
library(magrittr)
hipaa <- 
	readxl::read_excel("log.xlsx") %>%
	janitor::clean_names() %>%
	dplyr::mutate(date = as.Date(date)) %>%
	dplyr::select(-mrn, -site) %>%
	tibble::as_tibble()

# Write to file
readr::write_csv(hipaa, file = "anonymous.csv")
