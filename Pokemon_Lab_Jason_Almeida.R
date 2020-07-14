y <- 10:1
n <- 1:15
x <- 1:10
> library(readxl)
> pkmn <-read_excel("Stack/Pokemon_Stack.xlsx", sheet = 1)
# Let's explore the dataset a bit

# You can click on the 'pkmn' dataframe in the Environment tab of RStudio

# You can also use the "head" and "tail" commands...try applying to the pkmn dataframe

head(pkmn)
tail(pkmn)

# Notice when we do head(pkmn) we see duplicated Pokemon, certain Pokemon can have more than one type

# For simplicity, let's only look at a Pokemon's first type. 

# But how can we remove all the duplicated Pokemon?

# R has a function called "duplicated" which can detect which names have duplicates

duplicated(pkmn$Name)
pkmn$Name
pkmn$Type
dim(pkmn)
pkmn ,_ pkmn[pkmn$pkmn_dupes == FALSE,]
dim(pkmn)
duplicated(pkmn$Name)

# But we'd like to see which Pokemon are being duplicated.

# Let's add another column to the data frame to see which, if any, Pokemon names have duplicates

head(pkmn) 

# This adds a new column called pkmn_dupes to the pkmn dataset

# Let's check out what it looks like

head(pkmn)

# Now, let's get rid of the dupes by filtering 

# We are going to filter out all the duplicates

# Try to understand the following:

pkmn <- pkmn[pkmn$pkmn_dupes == "FALSE",]

# Now that we have cleaned the data, let's do some analysis.

# Make a table of the Type of Pokemon 
table(pkmn$Type) 

# Show the median, min, max, first and third quartiles of attack points 

summary(pkmn$Attack) 

# Summarize attack points of POISON type Pokemon 

# Try to understand the following

# Let's explore the dataset a bit

# You can click on the 'pkmn' dataframe in the Environment tab of RStudio

# You can also use the "head" and "tail" commands...try applying to the pkmn dataframe

head(pkmn)
tail(pkmn)

# Notice when we do head(pkmn) we see duplicated Pokemon, certain Pokemon can have more than one type

# For simplicity, let's only look at a Pokemon's first type. 

# But how can we remove all the duplicated Pokemon?

# R has a function called "duplicated" which can detect which names have duplicates

duplicated(pkmn$Name)

# But we'd like to see which Pokemon are being duplicated.

# Let's add another column to the data frame to see which, if any, Pokemon names have duplicates

pkmn$pkmn_dupes <- duplicated(pkmn$Name) 

# This adds a new column called pkmn_dupes to the pkmn dataset

# Let's check out what it looks like

head(pkmn)

# Now, let's get rid of the dupes by filtering 

# We are going to filter out all the duplicates

# Try to understand the following:

pkmn <- pkmn[pkmn$pkmn_dupes == "FALSE",]

# Now that we have cleaned the data, let's do some analysis.

# Make a table of the Type of Pokemon 

table(pkmn$Type) 

# Show the median, min, max, first and third quartiles of attack points 

summary(pkmn$Attack) 

# Summarize attack points of POISON type Pokemon 

# Try to understand the following:

summary(pkmn[pkmn$Type == "POISON", ]$Attack)

# Feel free to explore further, using these commands or others to feel more familiar with the dataset
tail(pkmn)
head(pkmn)
Part Two: The Battles

# Now, the whole point of analyzing Pokemon is to create a lineup to battle

# Let's go with a high attack deck. What are the 6 highest attack Pokemon?

# First order the data by the Attack column, descending
# Try to understand the following:

highattack <- pkmn[order(-pkmn$Attack),]

# Then look at only the top 6

highattack[1:6,]

# Can write that code in a single line, as:

highattack <- pkmn[order(-pkmn$Attack),][1:6,]
highattack

# NOTE YOUR RESULTS IN COMMENTED CODE

# Great, these are the top 6 highest attacking pokemon!
# But what if you want high defense Pokemon? Or a mixed lineup of high attack, high defense, and high speed?
# Grab the 2 highest of each category

highattack <- pkmn[order(-pkmn$Attack),][1:2,]
highdefense <- pkmn[order(-pkmn$Defense),][1:2]
highspeed <- pkmn[order(-pkmn$Speed),][1:2]
toppkmn <- rbind(highattack, highdefense, highspeed)
toppkmn <- 
table(pkmn$Type)
# NOTE YOUR RESULTS IN COMMENTED CODE
highattackpsychic <- pkmn[order(-pkmn$Attack$)]
# Can you do the same, but with ONLY psychic Pokemon?
# Easiest way is to first filter the data to only Psychic Pokemon and do the same commands


summary(pkmn)
toppsychic

# NOTE YOUR RESULTS IN COMMENTED CODE

# What are the 6 slowest grass pokemon?

grass <- pkmn[order(-pkmn$Type"GRASS")]
slow <- YOU WRITE THIS
slow

# NOTE YOUR RESULTS IN COMMENTED CODE

# The Total column is the sum of a Pokemons' stats. Knowing that, let look into the data.

# Which Pokemon is the WORST? WORST Pokemon has lowest total, try using the min() function

YOU WRITE THIS

# NOTE YOUR RESULTS IN COMMENTED CODE

# Which Pokemon are completely mediocre? Define mediocre as MEDIAN, try using the median() function

YOU WRITE THIS

# NOTE YOUR RESULTS IN COMMENTED CODE

# Try messing around with different pokemon types. What's your ideal Pokemon lineup? Why?
highattack <- pkmn[order(-pkmn$Attack),]
highattack
highattack[1:6,]
highattack <- pkmn[order(-pkmn$Attack),][1:6,]
highattack
highdefense <- pkmn[order(-pkmn$Defense),][1:6,]
highspeed <- pkmn[order(-pkmn$Speed),][1:6,]
toppkmn <- rbind(highattack, highdefense, highspeed)
toppkmn

psychic <- pkmn[pkmn$Type == "PSYCHIC",]
highattackpsychic <- pkmn[pkmn$Type]
highdefensepsychic <- YOU WRITE THIS 
highspeedpsychic <- YOU WRITE THIS
toppsychic <- pkmn[order(pkmn)]
toppsychic
