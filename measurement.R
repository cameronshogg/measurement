measurement <- read.csv("measurement.csv", header=T)

# Variance Stuff

part_one = subset(measurement, part == 1)
var(part_one$y300)

part_two = subset(measurement, part == 2)
var(part_two$y300)

part_three = subset(measurement, part == 3)
var(part_three$y300)

#SD 
sqrt(var(part_one$y300+part_two$y300+part_three$y300)/3)


# Measurement Part - currently rigged for 18 measurements per part, at once

measurement$part <- c(rep(1, 18), rep(2, 18), rep(3, 18))

boxplot(measurement$y300~measurement$part, 
        main = "Boxplot of Camshaft Straightness by Part",
        xlab = "Part", ylab = "Camshaft Straightness", col = "aquamarine3")

# Measurement Day - use if we stratify over each day, 20 measurements per part over a week, 4 per part over a day

# measurement$day <- c(rep(c(rep(1, 4), rep(2, 4), rep(3, 4), rep(4, 4)),3))
# 
# boxplot(measurement$y300~measurement$day, 
#         main = "Boxplot of Camshaft Straightness by Part",
#         xlab = "Part", ylab = "Camshaft Straightness", col = "royalblue1")


