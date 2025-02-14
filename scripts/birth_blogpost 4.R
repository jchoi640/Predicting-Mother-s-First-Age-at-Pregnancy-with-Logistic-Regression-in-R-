
birthdata<-read.csv("cleanedbirth.csv")

birthweightmodel <- lm(dbwt ~ mager+ meduc+ m_ht_in+  bmi+ pwgt_r+ dwgt_r+  Married+ GDiabetes+ cig_before+ cig_during, data=birthdata)
summary(birthweightmodel)

motheragemodel <- lm(mager ~ Year+meduc+ m_ht_in+  bmi+ pwgt_r+ dwgt_r+  Married+ GDiabetes+ cig_before+ cig_during, data=birthdata)
summary(motheragemodel)
AIC(motheragemodel)

library(ggplot2)
ggplot(birthdata, aes(y = mager, x = meduc, color = Race)) +
  geom_smooth(method = "gam", formula = y ~ s(x, k = 5))+
  labs(x = "Education Level", y = "First Kid Birth Age", 
       title = "First Kid Birth Age vs Prepreg Education Level")

ggplot(birthdata, aes(y = dbwt, x = mager, color = Race)) +
  geom_smooth() +
  labs(y = "Birthweight", x = "First Kid Birth Age", 
       title = "Birthweight vs First Kid Birth Age")

