# Enter the amount in paisa
paisa <- as.numeric(readline(prompt="Enter amount in paisa: "))

# Convert paisa to rupee and remaining paisa
rupees <- paisa %/% 100
remaining_paisa <- paisa %% 100

cat(paisa, "paisa = ", rupees, "Rupee and", remaining_paisa, "paisa\n")
