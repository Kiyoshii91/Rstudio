# Install and load necessary packages
install.packages("ez")
library(ez)

# Create the data
data <- data.frame(
  Cars = rep(1:5, each = 4),
  Oil = rep(1:4, times = 5),
  Mileage = c(36, 38, 30, 29, 34, 38, 30, 29, 34, 28, 38, 32, 38, 34, 20, 44, 26, 28, 34, 50)
)

# Conduct repeated-measures ANOVA
anova_result <- ezANOVA(data = data, dv = Mileage, wid = Cars, within = Oil)

# Print ANOVA summary
print(anova_result)

# Post-hoc tests (e.g., Tukey's HSD)
posthoc <- ezPosthoc(data, dv = Mileage, wid = Cars, within = Oil, type = "tukey")

# Print pairwise comparisons
print(posthoc)

