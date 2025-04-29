names_vec <- c("John", "Alice", "Bob", "Alice", "John", "Eve", "Charlie", "Bob", "Eve", "Alice")
names_factor <- factor(names_vec)
print(names_factor)
# print(levels(names_factor))

# Reorder levels alphabetically
names_factor <- factor(names_factor, levels = sort(levels(names_factor)))
print(names_factor)
# print(levels(names_factor))