install.packages("strucchange")  # if needed
library(strucchange)
??strucchange
# create time-ordered series


y <- df$"Debit card payments value PoS (Rs crores)"
x <- cbind(1, df$index)  # intercept + time

# breakpoint index: first row of post-sample
# e.g., if breakpoint is at Year==2020
break_index <- which(df$Years == 2020)

# sctest with type="Chow"
sctest(lm(y ~ df$index), type="Chow", point = break_index)


install.packages("readxl")   # Run once
install.packages("tseries")
library(readxl)

df <- read_excel("chow test.xlsx")
View(df)
head(df)        # View first few rows
str(df)         # Check data types
names(df)       # See column names

?breakpoints
# Run Bai–Perron multiple breakpoint test
bp_model <- breakpoints(`Debit card payments value PoS (Rs crores)` ~ index, data = df)

bp_model <- breakpoints(`Debit card payments value PoS (Rs crores)` ~ index,
                        data = df,
                        h = 0.5)  # each segment must contain at least 15% of data


# View results
summary(bp_model)            # shows number of breaks, coefficients, RSS, BIC
breakpoints(bp_model)        # numeric indices of breakpoints
coef(bp_model)               # regression coefficients in each regime

# Get break YEARS (not just indices)
bp_years <- df$Years[bp_model$breakpoints]
bp_years

plot(bp_model)

plot(df$Years, df$`Debit card payments value PoS (Rs crores)`,
     type = "l", col = "blue", lwd = 2,
     xlab = "Year", ylab = "Debit Card Payments (Rs Crores)",
     main = "Bai–Perron Structural Breaks in Debit Card Payments (PoS)")
abline(v = bp_years, col = "red", lty = 2, lwd = 2)

sctest(`Debit card payments value PoS (Rs crores)` ~ index, type = "supF", data = df)
?sctest
diff_series2 <- diff(dc_value, differences = 2)
plot.ts(diff_series2)
acf(diff_series2)
pacf(diff_series2)
adf.test(dc_value, alternative = "stationary", k=0)
adf.test(diff_series2, alternative = "stationary", k=0)

df$diff_series2 <- diff(df$`Debit card payments value PoS (Rs crores)`, differences = 2)

