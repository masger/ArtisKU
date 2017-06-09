
# patient with the yellow line for a patient 
patient = filter(lymf, ProjectID == patient_number)

png('artis-black.png',width = 1200, height = 800,pointsize = 30)
lymf %>% 
  ggplot(aes(I(diffdage/365), loglymf, group = ProjectID)) +
  geom_line(alpha = 1/5) + theme_minimal() + xlab("") + ylab("") + ylim(c(-1.5,3)) + 
  geom_line(data = patient,aes(I(diffdage/365), loglymf), colour = "yellow", alpha = 3/3)
ggplot(aes(I(diffdage/365), loglymf, group = ProjectID)) +
  geom_line(alpha = 1/5, colour = "black") + xlab("") + ylab("") + ylim(c(-1.5,3)) + 
  geom_line(data = patient,aes(I(diffdage/365), loglymf), colour = "gold", alpha = 1) +
  theme(plot.background = element_rect("black"),
        panel.background = element_rect("black"),
        panel.grid.major = element_blank(),panel.grid.minor = element_blank(),
        axis.ticks.x=element_blank(),
        axis.ticks.y=element_blank())
dev.off()