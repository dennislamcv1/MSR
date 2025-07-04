# Load the tidyverse library
library(tidyverse)  # This loads the tidyverse package, making its functions available.

# ================================================
# Activity 1: Inspecting Your Dataset Structure
# ================================================

# Step 1:  Load the retail dataset (retail_set2.csv)
retail_data <- read_csv(" ")  # read_csv() from the readr package reads the CSV file into a data frame.

# Step 2: Examine the data structure
print(head(  )) #head() shows the first few rows of data

print(str(  ))   # str() shows the structure of the data frame, including column names and data types. This helps understand the data's organization.

# ================================================
# Activity 2: Creating Calculated Variables
# ================================================
# Create the new variable using mutate():

# Example:
# retail_data <- retail_data %>%
#  mutate(total_review_score = Rating * Customer_Reviews)


# Try it Out #1 : Create a new column called "potential_revenue," calculated as Price × Customer_Reviews. This will help them gauge how much each product can earn based on customer reviews.Create the new variable using mutate().

# <YOUR CODE HERE>

# Try it Out #2 : Create a new column called "value_ratio," calculated as Price ÷ Rating. This metric will help them assess the cost-effectiveness of products based on their ratings.

# <YOUR CODE HERE>

# View your data using print()

# ================================================
# Activity 3: Summarizing Data
# ================================================
# Summarize average rating by category using summarize():

# Example
# average_rating_by_category <- retail_data %>%
#   group_by(Category) %>%
#   summarize(avg_rating = mean(Rating))

# print(average_rating_by_category)


# Try it Out #1 : Summarize the total number of customer reviews by category using summarize().

# <YOUR CODE HERE>

# Try it Out #2 : Summarize the average price by shipping speed using summarize().

# <YOUR CODE HERE>

# ================================================
# Activity 4: Grouping Data with group_by()
# ================================================
# Summarize average ratings grouped by product category using group_by() and summarize():

# Example
# ratings_by_category <- retail_data %>%
#  group_by(Category) %>%
#  summarize(average_rating = mean(Rating))

# print(ratings_by_category)


# Try it Out #1 : Summarize the number of reviews per shipping speed using summarize().

# <YOUR CODE HERE>

# Try it Out #2 : Using mutate(), group_by(), and summarize(), summarize the average rating grouped by two price ranges: above $100 and at $100 or below.

# <YOUR CODE HERE>

# ================================================
# Bringing it all Together
# ================================================

# Fill in the blanks with the appropriate code below:

# Problem #1

books_revenue <- retail_data %>%
  mutate(total_revenue = Price * Customer_Reviews) %>%
  filter(Category == "_____"
         & Price > ____) %>%
  summarize(_____ = sum(total_revenue))

print(books_revenue)

# Problem #2

sports_ratings_by_shipping <- retail_data %>%
  filter(Category == "_____") %>%
  group_by(_____) %>%
  summarize(_____ = mean(Rating))

print(sports_ratings_by_shipping)
