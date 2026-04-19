[1mdiff --git a/calculator.r b/calculator.r[m
[1mindex 937e1a8..03bf4a8 100644[m
[1m--- a/calculator.r[m
[1m+++ b/calculator.r[m
[36m@@ -5,14 +5,14 @@[m [mcalculator <- function(x, y, operation) {[m
         "subtract" = x - y,[m
         "multiply" = x * y,[m
         "divide" = if (y != 0) x / y else "Error: Division by zero",[m
[31m-        "power" = x ^ y,[m
[32m+[m[32m        "power" = x^y,[m
         "Invalid operation"[m
     )[m
 }[m
 [m
 # Example usage:[m
[31m-print(calculator(10, 5, "add"))        # 15[m
[31m-print(calculator(10, 5, "subtract"))   # 5[m
[31m-print(calculator(10, 5, "multiply"))   # 50[m
[31m-print(calculator(10, 5, "divide"))     # 2[m
[31m-print(calculator(10, 5, "power"))      # 100000[m
\ No newline at end of file[m
[32m+[m[32mprint(calculator(10, 155, "add")) # 15[m
[32m+[m[32mprint(calculator(10, 5, "subtract")) # 5[m
[32m+[m[32mprint(calculator(10, 5, "multiply")) # 50[m
[32m+[m[32mprint(calculator(10, 5, "divide")) # 2[m
[32m+[m[32mprint(calculator(10, 5, "power")) # 100000[m
