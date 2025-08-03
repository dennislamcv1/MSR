# Ungraded Lab: Advanced PCA Applications

# Load packages
library(ggplot2)    # For component and loading plots
library(dplyr)      # For data manipulation

# Load dataset
autos_df <- read.csv("autos_11.csv")

# =============================
# Activity 1: Preparing the Car Dataset
# =============================

# Normalize all numeric variables using min-max scaling.
# Remove highly correlated variables based on a 0.8 correlation threshold.

# Example:
# Normalize numeric variables
# data <- df[sapply(df, is.numeric)]
# df_normalized <- as.data.frame(lapply(data_numeric, function(x) (x - min(x)) / (max(x) - # min(x))))

# Try it Out #1: Normalize numeric columns
# Identify numeric columns
# <YOUR CODE HERE>

# Apply min-max normalization
# Store in a new dataframe (cars_normalized)
# <YOUR CODE HERE>

# Hint: Use sapply() to quickly detect which columns are numeric
# <YOUR CODE HERE>

# =============================
# Activity 2: Performing PCA
# =============================

# Use prcomp() on the selected variables
# Center and scale the data
# Interpret the summary output

# Example:
# data_pca <- select(data_normalized,A,B,C,D)
# data_pca_result <- prcomp(data_pca, center = TRUE, scale. = TRUE)
# summary(data_pca_result)

# pca_components <- data_pca_result$rotation
# print(pca_components[, 1:2])


# Try it Out #1: Select relevant columns for PCA

# Use select() or indexing
# Store as new dataframe
# Hint: Use select() from dplyr or bracket notation to isolate relevant columns
# <YOUR CODE HERE>

# Try it Out #2: Extract loadings

# Access $rotation from PCA result
# Store in pca_components
# Print the first two components
# Hint: Focus on variables with the largest absolute values in PC1 and PC2—they're the key drivers
# <YOUR CODE HERE>

# =============================
# Activity 3: Visualizing PCA Results
# =============================
# Plot PC1 vs PC2 using a scatterplot
# Add color by price or another variable

# Example
# values <- as.data.frame(data_pca_result$x)
# values$column <- df$column

# Try it Out #1: Color PCA scatter plot by price

# Add Category buckets based on quantile
# values <- values %>% mutate(group = case_when(
#   column < quantile(price, 0.33, na.rm = TRUE) ~ "Bronze",
#   column < quantile(price, 0.66, na.rm = TRUE) ~ "Silver",
#   TRUE ~ "Gold"
# ))

# Component scatter plot
# ggplot(as.data.frame(pc_values), aes(x = PC1, y = PC2, color = CategoryBucket)) +
#   geom_point() +
#   labs(title = "Component Plot", x = "PC1", y = "PC2")

# Bind price to PC values dataframe
# Add color = price_group in aes()
# Hint: Use mutate() to create price group like 'Low', 'Mid', 'High'
plot_3 <- # <YOUR CODE HERE>
print(plot_3)