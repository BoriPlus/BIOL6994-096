library(dplyr)
library(ggplot2)

tvshows <- read.csv("tvshows.csv")
head(tvshows)

# Create a ggplot canvas
ggplot(data = tvshows)

ggplot(data = tvshows,
       mamapping = aes(x = GRP))

ggplot(data = tvshows,
       mamapping = aes(x = GRP, y=PE))

ggplot(data = tvshows,
       mapping = aes(x=GRP, y=PE)) +
       geom_point() +
        geom_smooth(method=lm)

summary(lm(PE~GRP, data=tvshows)) #Es pequeno el pvalue hay diferencis significstiba

mod <- lm(PE~GRP, data=tvshows)
resid <- resid(mod)
shapiro.test(resid)

mod <- lm(log(PE)~log(GRP), data=tvshows)
resid <- resid(mod)
shapiro.test(resid)







































      
