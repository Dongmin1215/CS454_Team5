library(ggplot2)
library(reshape2)

feature <- c('apfd', 'apsd', 'runtime')
algorithms <- c('random', 'greedy', 'SWAY')


## Siemens suite
programs <- c('flex_s1_v1', 'flex_s1_v2', 'flex_s1_v3', 'flex_s1_v4', 
              'grep_s1_v1', 'grep_s1_v2', 'grep_s1_v3',
              'gzip_s1_v1', 'gzip_s1_v4', 'sed_s1_v2')

APFDs_raw <- lapply(lapply(sprintf('%s_apfd.csv', programs), read.csv, header=F), as.data.frame)
APFDs_raw <- lapply(APFDs_raw, function(x) {row.names(x) <- algorithms; return(t(x))})

APSDs_raw <- lapply(lapply(sprintf('%s_apsd.csv', programs), read.csv, header=F), as.data.frame)
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
  ggtitle('Boxplot of APFD for Linux programs (over 30 independent runs)')
p_apsd <- ggplot(APSDs, aes(x=Program, y=APSD, fill=Algorithm)) + 
  geom_boxplot() +
  ggtitle('Boxplot of APSD for Linux programs (over 30 independent runs)')

show(p_apfd)
ggsave('linux_apfd.png', dpi=600)

show(p_apsd)
ggsave('linux_apsd.png', dpi=600)
