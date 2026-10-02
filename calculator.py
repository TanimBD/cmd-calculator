print("=" * 35)
print("        CMD CALCULATOR")
print("=" * 35)
print("Supported: +  -  *  /  %  **  ( )")
print("Type 'exit' to quit.")

ALLOWED = set("0123456789+-*/%(). ")

while True:
    expression = input("\nEnter calculation: ").strip()

    if expression.lower() == "exit":
        print("Calculator closed.")
        break

    if not expression:
        print("Please enter a calculation.")
        continue

    if not all(char in ALLOWED for char in expression):
        print("Error: Only numbers and arithmetic operators are allowed.")
        continue

    try:
        result = eval(expression, {"__builtins__": None}, {})

        if isinstance(result, (int, float)):
            print("Result:", result)
        else:
            print("Error: Invalid calculation.")

    except ZeroDivisionError:
        print("Error: Cannot divide by zero.")
    except (SyntaxError, TypeError, NameError):
        print("Error: Invalid calculation.")