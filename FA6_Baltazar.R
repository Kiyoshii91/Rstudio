
---
  
  # Introduction

## Assumptions
#1. **Independence**: Observations in each group must be independent.
#2. **Normality**: Each group should follow a normal distribution.
#3. **Homogeneity of variance**: Variances in the two groups should be equal.
#4. **Random Sampling**: Samples should be random and representative of the population.
#5. **Similarity of Variances**: There should be similar variances between the two groups.

# Analysis
# Load the dataset
cloak_data <- read.csv("InvisibilityCloak.csv")  # Replace with the actual file path

# Assuming the dataset has columns 'Group' and 'Variable_of_Interest'
group1 <- cloak_data$Variable_of_Interest[cloak_data$Group == "Group1"]
group2 <- cloak_data$Variable_of_Interest[cloak_data$Group == "Group2"]

# Assumption 1: Independence (assuming it was met during data collection)

# Assumption 2: Normality (check normality using Shapiro-Wilk test or visual inspection)
shapiro.test(group1)
shapiro.test(group2)
# If p > 0.05, assume normality

# Assumption 3: Homogeneity of Variance (Levene's test or visual inspection)
library(car)
leveneTest(Variable_of_Interest ~ Group, data = cloak_data)
# If p > 0.05, assume equal variances

# Assumption 4: Random Sampling (assuming it was a part of the study design)

# Assumption 5: Similarity of Variances (based on Levene's test or visual inspection)

# Performing the t-test
t_test_result <- t.test(group1, group2)

# Display the result
t_test_result