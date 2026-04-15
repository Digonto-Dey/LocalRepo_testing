# Load required libraries
library(ggplot2)
library(reshape2)
library(gridExtra)

# Create example dataset
set.seed(42)
data <- data.frame(
    x = rnorm(1000, mean = 100, sd = 15),
    y = rnorm(1000, mean = 50, sd = 10),
    category = sample(c("A", "B", "C"), 1000, replace = TRUE)
)

# 1. Heatmap
heatmap_data <- matrix(runif(100, 1, 100), nrow = 10)
heatmap(heatmap_data, main = "Heatmap", col = heat.colors(256))

# 2. Distribution Curve
plot1 <- ggplot(data, aes(x = x)) +
    geom_histogram(aes(y = ..density..), bins = 30, fill = "skyblue", color = "black") +
    geom_density(color = "red", size = 1) +
    labs(title = "Distribution with Density Curve", x = "Value", y = "Density")

# 3. Scatter Plot
plot2 <- ggplot(data, aes(x = x, y = y, color = category)) +
    geom_point(alpha = 0.6) +
    labs(title = "Scatter Plot", x = "X", y = "Y")

# 4. Box Plot
plot3 <- ggplot(data, aes(x = category, y = x, fill = category)) +
    geom_boxplot() +
    labs(title = "Box Plot", x = "Category", y = "Value")

# 5. Violin Plot
plot4 <- ggplot(data, aes(x = category, y = y, fill = category)) +
    geom_violin() +
    labs(title = "Violin Plot", x = "Category", y = "Value")

# 6. Line Plot
plot5 <- ggplot(data.frame(x = 1:100, y = cumsum(rnorm(100))), aes(x = x, y = y)) +
    geom_line(color = "blue") +
    geom_point(color = "red") +
    labs(title = "Line Plot", x = "Index", y = "Cumulative Sum")

# 7. Bar Plot
plot6 <- ggplot(
    data.frame(category = c("A", "B", "C"), count = c(25, 35, 40)),
    aes(x = category, y = count, fill = category)
) +
    geom_bar(stat = "identity") +
    labs(title = "Bar Plot", x = "Category", y = "Count")

# Display all plots
grid.arrange(plot1, plot2, plot3, plot4, plot5, plot6, ncol = 2)

# 8. Density Plot
plot7 <- ggplot(data, aes(x = x, fill = category)) +
    geom_density(alpha = 0.5) +
    labs(title = "Density Plot", x = "Value", y = "Density")

# 9. Faceted Scatter Plot
plot8 <- ggplot(data, aes(x = x, y = y, color = category)) +
    geom_point(alpha = 0.6) +
    facet_wrap(~category) +
    labs(title = "Faceted Scatter Plot", x = "X", y = "Y")

# 10. Cumulative Distribution
plot9 <- ggplot(data, aes(x = x, color = category)) +
    stat_ecdf(geom = "step") +
    labs(title = "Cumulative Distribution", x = "Value", y = "Cumulative Probability")

# 11. Hexbin Plot
plot10 <- ggplot(data, aes(x = x, y = y)) +
    geom_hex(bins = 20) +
    scale_fill_gradient(low = "lightblue", high = "darkblue") +
    labs(title = "Hexbin Plot", x = "X", y = "Y")

# 12. Ridge Plot
plot11 <- ggplot(data, aes(x = x, y = category, fill = category)) +
    geom_density_ridges(alpha = 0.6) +
    labs(title = "Ridge Plot", x = "Value", y = "Category")

# Display all plots
grid.arrange(plot1, plot2, plot3, plot4, plot5, plot6, plot7, plot8, plot9, plot10, plot11, ncol = 2)
