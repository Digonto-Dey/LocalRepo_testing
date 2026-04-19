# Simple Calculator Function
calculator <- function(x, y, operation) {
    switch(operation,
        "add" = x + y,
        "subtract" = x - y,
        "multiply" = x * y,
        "divide" = if (y != 0) x / y else "Error: Division by zero",
        "power" = x^y,
        "Invalid operation"
    )
}

# Example usage:
print(calculator(10, 355, "add")) # 15
print(calculator(10, 5, "subtract")) # 5
print(calculator(10, 5, "multiply")) # 50
print(calculator(10, 5, "divide")) # 2
print(calculator(10, 5, "power")) # 100000
