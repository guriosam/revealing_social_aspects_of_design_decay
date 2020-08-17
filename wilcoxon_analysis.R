#!/usr/bin/env Rscript

# Title     : Evaluate the metrics through the Wilcoxon Test
# Objective : Evaluate if there is a difference between impactful and unimpactful pull requests

#' Wilcoxon Test
#'
#' @param input_data the input dataframe with metrics
#' @param metric the desired metric's name
wilcoxon_test <- function(input_data, metric, output_data) {
  
  # Set the buggy and clean dists
  degraded_dist <- input_data[input_data$degradation == "True",][[metric]]
  clean_dist <- input_data[input_data$degradation == "False",][[metric]]
  
  # Compute the Wilcoxon Tests
  test <- wilcox.test(degraded_dist, clean_dist)
  test_greater <- wilcox.test(degraded_dist, clean_dist, alternative = "greater")
  test_less <- wilcox.test(degraded_dist, clean_dist, alternative = "less")
  
  # Get p-value of the two sided test
  pvalue <- test$p.value
    
  # Output data
  metric_data <- data.frame(metric = metric, pvalue = pvalue)
  return(metric_data)
  
}


# Projects and metrics set
projects <- c("elasticsearch", "presto", "netty", "okhttp", "RxJava", "all")
metrics <- c("number_comments", "number_users", "number_contributors", "number_core_devs", "number_of_patches", 
             "words_in_discussion", "words_per_comment_in_discussion", "snippets_size", 
             "mean_time_between_replies", "discussion_length")


input_types <- c("design_changed/design_change_on_density_high_level_smells/",
                 "design_changed/design_change_on_density_low_level_smells/",
                 "design_changed/design_change_on_diversity_high_level_smells/",
                 "design_changed/design_change_on_diversity_low_level_smells/"
                 )
				 
for (input_type in input_types){
	for (project in projects) {
	  
	  # Create the output dataframe
	  output_data <- data.frame(metric = character(), pvalue = double())
	  
	  path <- paste0(input_type, project)

	  # Load the current set of metrics
	  current_metrics <- read.csv(paste0(path, ".csv"))
	  
	  # Compute the Wilcoxon Test for all metrics
	  for (metric in metrics) {
		metric_data <- wilcoxon_test(current_metrics, metric, output_data)
		output_data <- rbind(output_data, metric_data)
	  }
		
	  # Check statistical significance
	  output_data$significant <- ifelse(output_data$pvalue <= 0.05, output_data$significant <- TRUE, output_data$significant <- FALSE)
	  print(paste("Project:", project))
	  print(output_data)
	}
}
