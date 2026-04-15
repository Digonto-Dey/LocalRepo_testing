import tkinter as tk
from tkinter import font

class Calculator:
    def __init__(self, root):
        self.root = root
        self.root.title("Calculator")
        self.root.geometry("400x500")
        self.root.resizable(False, False)
        
        self.expression = ""
        
        # Display
        self.display = tk.Entry(root, font=("Arial", 24), 
                               borderwidth=2, relief="solid", 
                               justify="right")
        self.display.pack(fill="both", padx=10, pady=10, ipady=10)
        
        # Buttons
        button_frame = tk.Frame(root)
        button_frame.pack(fill="both", expand=True, padx=10, pady=10)
        
        buttons = [
            ["7", "8", "9", "/"],
            ["4", "5", "6", "*"],
            ["1", "2", "3", "-"],
            ["0", ".", "=", "+"],
            ["C"]
        ]
        
        for row in buttons:
            row_frame = tk.Frame(button_frame)
            row_frame.pack(fill="both", expand=True)
            
            for btn_text in row:
                btn = tk.Button(row_frame, text=btn_text, font=("Arial", 18),
                              command=lambda text=btn_text: self.on_button_click(text))
                btn.pack(side="left", fill="both", expand=True, padx=5, pady=5)
    
    def on_button_click(self, char):
        if char == "C":
            self.expression = ""
        elif char == "=":
            try:
                self.expression = str(eval(self.expression))
            except:
                self.expression = "Error"
        else:
            self.expression += char
        
        self.display.delete(0, tk.END)
        self.display.insert(0, self.expression)

if __name__ == "__main__":
    root = tk.Tk()
    calc = Calculator(root)
    root.mainloop()