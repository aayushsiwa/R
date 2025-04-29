transaction <- list(
  division = "Division1",
  product = "ProductA",
  quantity = 100,
  supplier = "Supplier1",
  cost_per_item = 10
)
inventory <- data.frame(
  division = rep(c("Division1", "Division2", "Division3"), each = 4),
  product = rep(c("ProductA", "ProductB", "ProductC", "ProductD"), times = 3),
  quantity = 0,
  stringsAsFactors = FALSE
)
update_inventory <- function(transaction) {
  row <- which(inventory$division == transaction$division & inventory$product == transaction$product)
  inventory$quantity[row] <- inventory$quantity[row] + transaction$quantity
}

transaction <- list(
  division = "Division1",
  product = "ProductA",
  quantity = 100,
  supplier = "Supplier1",
  cost_per_item = 10
)

update_inventory(transaction)
print(inventory)
# calculate_inventory_value <- function(inventory, cost_per_item) {
#   inventory$value <- inventory$quantity * cost_per_item
#   total_value <- sum(inventory$value)
#   return(total_value)
# }

# calculate_inventory_value <- function(inventory, cost_per_item) {
#   inventory$value <- inventory$quantity * cost_per_item
#   total_value <- sum(inventory$value)
#   return(total_value)
# }
