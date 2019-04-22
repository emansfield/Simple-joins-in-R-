### Joining simple files in R ### 
# The purpose of this exercise is to do simple joins with very simple datasets
# We will join some datasets with just 41 rows in them
# They are the 41 East Texas counties with data I've analyzed before
# 
### Starting ### 
# Download the tidyverse because it has what we need 
# We'll really be joining with dplyr but that's in the umbrella tidyverse
# Set working directory to folder with the files
# And upload the files using variable <- read_csv("FileName.csv")
#
### Doing joins ### 
# We have several ways to do joins 
# We will want to do full joins in these 
# That's because we're matching 41 rows to 41 rows
# In cases where we have 43 rows (because we have TX and US)
# We can first join one to the generic COUNTIES variable
# Because that will effectively remove the TX and US rows 
# 
### Basic Left Joins ### 
# Let's get a new one with just 41 counties median incomes
# Run the code countiesincome <- left_join(counties, income, by="County")
# Then for poverty we'll do countiespoverty <-left_join(counties, poverty, by="County")
# 
### Full joins ### 
# Because all of the files we'll combine now have 41 rows, we could do any join
# However, we'll run the full_join function because practice 
# First, let's put income and poverty together by county
# Run the code incomepov <- full_join(countiesincome, countiespoverty, by="County")
# If we run View(incomepov) we'll see what we just made 
# Now let's merge that with our random voting data because why not
# Run the code alldata <- full_join(incomepov, voting, by="County")
# Now we can compare 41 East Texas counties by median household income, 
# poverty rate, and who they voted for in some major elections
# This likely wouldn't be a solid analysis, but we joined tables so yay! 