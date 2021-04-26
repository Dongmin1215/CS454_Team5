library(ggplot2)
library(reshape2)
library(files)

inits <- c(15, 17)


feature <- c('apfd', 'apsd', 'runtimes')
algorithms <- c('random', 'greedy', 'SWAY')


## Siemens suite
programs <- c('printtokens', 'printtokens2', 'schedule', 'schedule2', 'tcas', 'totinfo')

for (init in inits){
  setwd("~/Desktop/COINSE Lab/SWAY-permutations/Experiments/CSVs")
  
  folder_name = sprintf("CSVs-(2^%d)", init)
  
  if (!dir.exists(folder_name)) {
    dir.create(folder_name)
  }
  setwd(folder_name)
  
  APFDs_raw <- lapply(lapply(sprintf('%s_ss1_apfd.csv', programs), read.csv, header=F), as.data.frame)
  APFDs_raw <- lapply(APFDs_raw, function(x) {row.names(x) <- algorithms; return(t(x))})
  
  APSDs_raw <- lapply(lapply(sprintf('%s_ss1_apsd.csv', programs), read.csv, header=F), as.data.frame)
  APSDs_raw <- lapply(APSDs_raw, function(x) {row.names(x) <- algorithms; return(t(x))})
  
  runtimes_raw <- lapply(lapply(sprintf('%s_ss1_runtime.csv', programs), read.csv, header=F), as.data.frame)
  runtimes_raw <- lapply(runtimes_raw, function(x) {row.names(x) <- algorithms; return(t(x))})
  
  # Nonparametric test results
  APFD_wilcox_two.sided <- lapply(APFDs_raw, function(x) {z <- wilcox.test(x[,2], x[,3],alternative="two.sided"); return(z)})
  APFD_wilcox_greater <- lapply(APFDs_raw, function(x) {z <- wilcox.test(x[,2], x[,3],alternative="greater"); return(z)})
  
  APSD_wilcox_two.sided <- lapply(APSDs_raw, function(x) {z <- wilcox.test(x[,2], x[,3],alternative="two.sided"); return(z)})
  APSD_wilcox_greater <- lapply(APSDs_raw, function(x) {z <- wilcox.test(x[,2], x[,3],alternative="greater"); return(z)})
  
  names(APFDs_raw) <- programs
  names(APSDs_raw) <- programs
  names(runtimes_raw) <- programs
  
  APFDs <- melt(APFDs_raw)
  APFDs <- APFDs[-1]
  names(APFDs) <- c('Algorithm', 'APFD', 'Program')
  APSDs <- melt(APSDs_raw)
  APSDs <- APSDs[-1]
  names(APSDs) <- c('Algorithm', 'APSD', 'Program')
  runtimes <- melt(runtimes_raw)
  runtimes <- runtimes[-1]
  names(runtimes) <- c('Algorithm', 'runtime', 'Program')
  
  
  p_apfd <- ggplot(APFDs, aes(x=Program, y=APFD, fill=Algorithm)) + 
    geom_boxplot() +
    ylim(0.95, 1.00) +
    ggtitle(sprintf('Boxplot of APFD for Siemens suite (over 30 independent runs, init pop = 2^%d)', init))
  p_apsd <- ggplot(APSDs, aes(x=Program, y=APSD, fill=Algorithm)) + 
    geom_boxplot() +
    ggtitle(sprintf('Boxplot of APSD for Siemens suite (over 30 independent runs, init pop = 2^%d)', init))
  p_runtimes <- ggplot(runtimes, aes(x=Program, y=runtime, fill=Algorithm)) + 
    geom_boxplot() +
    ggtitle(sprintf('Boxplot of runtime for Siemens suite (over 30 independent runs, init pop = 2^%d)', init))
  
  # Go back
  setwd("~/Desktop/COINSE Lab/SWAY-permutations/Experiments/CSVs/Plots")
  
  if (!dir.exists(folder_name)) {
    dir.create(folder_name)
  }
  
  # Save figs
  show(p_apfd)
  ggsave(sprintf('%s/siemens_apfd.pdf', folder_name), dpi=600)
  
  show(p_apsd)
  ggsave(sprintf('%s/siemens_apsd.pdf', folder_name), dpi=600)
  
  show(p_runtimes)
  ggsave(sprintf('%s/siemens_runtimes.pdf', folder_name), dpi=600)
  
}
