```R
library(dplyr)

# This code uses dplyr::select with all_of to handle missing columns gracefully.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D")

# Use dplyr::select with all_of to safely subset, or use `any_of` to select existing columns, ignoring missing ones. 
subset_df <- df %>% select(all_of(cols_to_select)) #This will select A and B only and will not throw an error
#subset_df <- df %>% select(any_of(cols_to_select)) #This will select A and B only and will not throw an error

print(subset_df)
```