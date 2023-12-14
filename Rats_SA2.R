# Create a data frame
data <- data.frame(
  ID = 1:36,
  Stimuli = rep(c(rep("Shape", 8), rep("Pattern", 8), rep("Picture", 8)), each = 3),
  Time = c(2, 0.75, 1.25, 1, 1.5, 1.25, 1.75, 0.5, 2.5, 3.25, 1.85, 3.05, 2.5, 3, 4.1, 3.75, 4.25, 4.1, 4.25, 4.4, 3.75, 3.05, 3.2, 5, 2, 0.75, 1.25, 1, 2.5, 3.25, 1.85, 3.05, 4.25, 4.4, 3.75, 3.05)
)

# Check the structure of the data
str(data)

# Check summary statistics
summary(data)

# Conduct one-way ANOVA
anova_result <- aov(Time ~ Stimuli, data = data)

# Check assumptions and diagnostics
par(mfrow = c(2, 2))
plot(anova_result)
summary(anova_result)

# Levene's test for homogeneity of variances
library(car)
leveneTest(Time ~ Stimuli, data = data)

#Normality Shapiro
shapiro.test(residuals(anova_result))