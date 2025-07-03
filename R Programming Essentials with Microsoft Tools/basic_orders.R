# ================================================
# RetailTech Solutions - Basic Order Processing
# Module 2 - Graded Lab
# ================================================

# This starter code provides the structure for your
# order processing functions. Complete each section
# marked with "YOUR CODE HERE"

# ================================================
# Activity 1: Check Order Amount
# ================================================

### GRADED CHALLENGE 1 ###
# Create the check_order_amount function
# Parameters: order_amount (numeric)
# Returns: Character string indicating order level
check_order_amount <- function(order_amount) {

  if (order_amount <= 0) {
    return("Invalid")
  } else if (order_amount < 50) {
    return("Low")
  } else if (order_amount <= 100) {
    return("Regular")
  } else {
    return("High")
  }
}

# Test cases provided
print(check_order_amount(-1))   # Should print "Invalid"
print(check_order_amount(20))     # Should print "Invalid"
print(check_order_amount(120))    # Should print "Low"


# ================================================
# Activity 2: Calculate Order Total
# ================================================

### GRADED CHALLENGE 2 ###
# Create the calculate_total function
# Parameters: 
# - amount (numeric)
# - is_member (logical)
calculate_total <- function(amount, is_member) {
  # Validate amount
  if (amount <= 0) {
    return(NA)  # NA indicates invalid amount
  }

  # Apply 10% discount if the person is a member
  if (is_member) {
    final_total <- amount * 0.9
  } else {
    final_total <- amount
  }

  final_total
}


# Test cases provided
test_amount <- 100
test_member <- TRUE
print(calculate_total(test_amount, test_member)) # returns 90

test_amount <- 100
test_member <- FALSE
print(calculate_total(test_amount, test_member)) # returns 100


# ================================================
# Activity 3: Process Multiple Orders 
# ================================================

### GRADED CHALLENGE 3 ###
# Create the process_orders function
# Parameters: order_amounts (numeric vector)
# Returns: List with count of 'large orders' and 'average'
process_orders <- function(order_amounts) {

  # Count orders above 100
  large_orders <- sum(order_amounts > 100)

  # Calculate average of all orders
  average <- mean(order_amounts)

  # Return both values in a list
  list(
    large_orders = large_orders,
    average = average
  )
}

# Test cases provided
test_orders <- c(75, 120, 45, 200, 85)
process_orders(test_orders)

# ================================================
# Activity 4: Basic Error Checking (24 points)
# ================================================

### GRADED CHALLENGE 4 ###
# Modify process_orders to include error checking
# Add checks for:
# - NA values
# - Non-numeric input
# - Return error messages for the following:
# - For NA Values inputs, return the exact error: "Error: Contains NA values"\
# - For Non-numeric inputs, return the exact error: "Error: Non-numeric input"

# YOUR CODE HERE
process_orders <- function(order_amounts) {
  # Check for non-numeric input
  if (!is.numeric(order_amounts)) {
    return("Error: Non-numeric input")
  }

  # Check for NA values
  if (any(is.na(order_amounts))) {
    return("Error: Contains NA values")
  }

  # Count orders above 100
  large_orders <- sum(order_amounts > 100)

  # Calculate average
  average <- mean(order_amounts)

  # Return results in a list
  list(
    large_orders = large_orders,
    average = average
  )
}

# Test cases for error checking
test_na <- c(100, NA, 75)
test_invalid <- c(100, "invalid", 75)

test_valid <- c(120, 80, 50, 200)
test_amounts <- c(75, 120, 45, 200, 85)
test_member <- TRUE
print(process_orders(test_na))# Expected: "Error: Contains NA values"
print(process_orders(test_invalid))# Expected: "Error: Non-numeric input"


# ================================================
# Testing Section
# ================================================
# Use these commands to test your functions

# Activity 1 Test
print("Testing check_order_amount:")
for(amount in test_amounts) {
    print(paste("Amount:", amount, "Result:", check_order_amount(amount)))
}

# Activity 2 Test
print("Testing calculate_total:")
print(paste("Regular total:", calculate_total(test_amount, FALSE)))
print(paste("Member total:", calculate_total(test_amount, TRUE)))

# Activity 3 Test
print("Testing process_orders:")
result <- process_orders(test_orders)
print(result)

# Activity 4 Test
print("Testing error handling:")
tryCatch({
    process_orders(test_na)
}, error = function(e) {
    print(paste("Error handled:", e$message))
})
