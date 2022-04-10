#a

p = 0.2
n = 3
dgeom(x = n, prob = p)

#b
#set.seed(10000)
mean(rgeom(n = 10000, prob = p) == 3)

#c
#dari jawaban soal 1.a dan 1.b, dapat disimpulkan bahwa
#1.a adalah nilai eksak dari probabilitas itu sendiri sedangkan
#1.b adalah percobaan langsung menggunakan 10000 data acak sehingga 
#hasilnya selalu berbeda (tanpa seed), namun dari hasil yang diambil, didapati
#hasil dari percobaan langsung nilainya tidak jauh dari nilai eksaknya

#d
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 Failures Prior to First Success",
       subtitle = "Geometric(.2)",
       x = "Failures prior to first success (x)",
       y = "Probability")


#e
p=0.2

#rata-rata
ratarata = 1/p
ratarata

#variance
variansi = (1 - p) / p^2
variansi


