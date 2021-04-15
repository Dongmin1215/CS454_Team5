library(ggplot2)
library(reshape2)

feature <- c('apfd', 'apsd', 'runtime')
algorithms <- c('random', 'greedy', 'SWAY')


## Siemens suite
programs <- c('printtokens', 'printtokens2', 'schedule', 'schedule2', 'tcas', 'totinfo')

APFDs_raw <- lapply(lapply(sprintf('%s_ss1_apfd.csv', programs), read.csv, header=F), as.data.frame)
APFDs_raw <- lapply(APFDs_raw, function(x) {row.names(x) <- algorithms; return(t(x))})

APSDs_raw <- lapply(lapply(sprintf('%s_ss1_apsd.csv', programs), read.csv, header=F), as.data.frame)
APSDs_raw <- lapply(APSDs_raw, function(x) {row.names(x) <- algorithms; return(t(x))})
# runtime_raw_files <- lapply(lapply(sprintf('%s_ss1_runtime.csv', programs), read.csv, header=F), as.matrix)

names(APFDs_raw) <- programs
names(APSDs_raw) <- programs
# names(runtime_raw_files) <- programs

APFDs <- melt(APFDs_raw)
APFDs <- APFDs[-1]
names(APFDs) <- c('Algorithm', 'APFD', 'Program')
APSDs <- melt(APSDs_raw)
APSDs <- APSDs[-1]
names(APSDs) <- c('Algorithm', 'APSD', 'Program')


p_apfd <- ggplot(APFDs, aes(x=Program, y=APFD, fill=Algorithm)) + 
  geom_boxplot() +
  ggtitle('Boxplot of APFD for Siemens suite (over 30 independent runs)')
p_apsd <- ggplot(APSDs, aes(x=Program, y=APSD, fill=Algorithm)) + 
  geom_boxplot() +
  ggtitle('Boxplot of APSD for Siemens suite (over 30 independent runs)')


show(p_apfd)
ggsave('siemens_apfd.png', dpi=600)

show(p_apsd)
ggsave('siemens_apsd.png', dpi=600)