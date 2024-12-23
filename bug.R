```R
# This code attempts to subset a data frame using a character vector of column names,
# but it fails if any of the specified columns are missing.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D")
subset_df <- df[, cols_to_select]

# This will throw an error because column 'D' does not exist.
# Error in `[.data.frame`(df, , cols_to_select) : undefined columns selected
```