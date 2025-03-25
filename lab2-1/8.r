cat("Choose a color:\nR - Red\nG - Green\nB - Blue\n")
choice <- toupper(readline(prompt="Enter your choice: "))

switch(choice,
       R = print("Red"),
       G = print("Green"),
       B = print("Blue"),
       print("Invalid choice")
)
