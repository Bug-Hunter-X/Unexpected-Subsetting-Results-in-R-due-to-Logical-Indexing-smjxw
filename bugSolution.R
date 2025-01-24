```R
# This code demonstrates the correct way to subset a data frame based on a condition,
# addressing the logical indexing issue.

df <- data.frame(a = c(1, 2, 3, 4, 5), b = c(6, 7, 8, 9, 10))

# Correct subsetting using parentheses to ensure correct operator precedence
subset_df <- df[(df$a > 2) & (df$b < 9), ]
print(subset_df)

#Alternative using subset function
correct_subset_df <- subset(df, a > 2 & b < 9)
print(correct_subset_df)

#Explanation:
# The original code's issue stemmed from the implicit operator precedence in R.
# By using parentheses, we explicitly define the order of operations,
# ensuring that the conditions are evaluated correctly before subsetting.
# The subset function is an alternative way to achieve the same outcome, which is more readable in certain cases
```