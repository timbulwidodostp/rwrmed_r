# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Regression-with-residuals (RWR) Analysis of Causal Mediation Use rwrmed With (In) R Software
install.packages("remotes")
remotes::install_github("xiangzhou09/rwrmed")
library("rwrmed")
rwrmed_r = read.csv("https://raw.githubusercontent.com/timbulwidodostp/rwrmed_r/main/rwrmed_r/rwrmed_r.csv",sep = ";")
# Estimation Regression-with-residuals (RWR) Analysis of Causal Mediation Use rwrmed With (In) R Software
treatment <- "tone_eth"
pre_cov <- c("ppage", "female", "hs", "sc", "ba", "ppincimp")
y_form <- immigr ~ ppage + female + hs + sc + ba + ppincimp + tone_eth + emo + tone_eth * emo + p_harm
m_form <- emo ~ ppage + female + hs + sc + ba + ppincimp + tone_eth
rwrmed <- lm(p_harm ~ ppage + female + hs + sc + ba + ppincimp + tone_eth, data = rwrmed_r)
rwrmed <- rwrmed(treatment = treatment, pre_cov = pre_cov, zmodels = list(rwrmed), y_form = y_form, m_form = m_form, data = rwrmed_r)
rwrmed <- decomp(rwrmed)

rwrmed
# Regression-with-residuals (RWR) Analysis of Causal Mediation Use rwrmed With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished