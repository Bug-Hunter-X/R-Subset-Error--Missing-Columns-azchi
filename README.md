# R Subsetting Bug: Handling Missing Columns

This repository demonstrates a common error in R when subsetting data frames using character vectors of column names.  The issue arises when attempting to select columns that do not exist in the data frame.  The provided code exhibits this error, and a solution is offered to gracefully handle missing columns.

## Problem
The original `bug.R` script attempts to subset a data frame (`df`) using a character vector (`cols_to_select`).  However, this fails if any column names in `cols_to_select` are not present in `df`.

## Solution
The `bugSolution.R` script offers a solution using `dplyr` to handle missing columns gracefully. It uses `dplyr::select` with `all_of` to select the specified columns or avoids error when columns are not present, making the code more robust.