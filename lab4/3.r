# 3. List and count the number of installed packages
installed_packages <- installed.packages()
cat("Number of Installed Packages:", nrow(installed_packages), "\n")
print(head(installed_packages[, "Package"]))