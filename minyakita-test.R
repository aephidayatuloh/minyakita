samples <- read.csv("sample.csv")
samples

botol <- samples$botol
pouch <- samples$pouch
mean(botol)
mean(pouch)

t.test(x = botol, mu = 1000)
t.test(x = pouch, mu = 1000)

t.test(x = pouch, y = botol, var.equal = TRUE)

sample_groups <- read.csv("sample_group.csv")
sample_groups$tipe <- factor(sample_groups$tipe, levels = c("pouch", "botol"))

t.test(sample_groups$volume ~ sample_groups$tipe, var.equal = TRUE)
