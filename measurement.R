# Measurement Data
measurement <- read.csv("measurement.csv", header=T)

# Baseline Data
inv <- read.csv("Investigation-1.csv", header=T)

# Initial, Baseline Estimates of the Parts
subset(inv, partnum == 1240)
subset(inv, partnum == 3447)
subset(inv, partnum == 2730)

# Variance Stuff
measurement$part <- c(rep(1, 18), rep(2, 18), rep(3, 18))

part_one = subset(measurement, part == 1)
mean(part_one$y300)
sqrt(var(part_one$y300))

part_two = subset(measurement, part == 2)
mean(part_two$y300)
sqrt(var(part_two$y300))

part_three = subset(measurement, part == 3)
mean(part_three$y300)
sqrt(var(part_three$y300))

#SD 
sqrt(var(part_one$y300+part_two$y300+part_three$y300)/3)


# Measurement Part - currently rigged for 18 measurements per part, at once
# Using sample data set

measurement$part <- c(rep(1, 18), rep(2, 18), rep(3, 18))

boxplot(measurement$y300~measurement$partnum, 
        main = "Boxplot of Camshaft Straightness by Part",
        xlab = "Part", ylab = "Camshaft Straightness", col = "aquamarine3")



