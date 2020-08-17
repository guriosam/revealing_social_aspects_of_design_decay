<meta charset="utf-8"> 

---
title: Revealing the Social Aspects of Design Decay
layout: post
---

# Authors

Caio Barbosa, Anderson Uchôa, Filipe Falcão, Hyago Brito, Guilherme Amaral, Daniel Coutinho, Alessandro Garcia, Baldoino Fonseca, Maarcio Ribeiro, Vinicius Soares and Leonardo Souza

# Abtract

The pull-based development model, popularized by social coding environments like GitHub, is widely used by open-source communities. In this model, developers actively communicate and share their knowledge or opinions through the exchange of comments. Their goal is to improve the change under development, including its positive impact on design structure. In this context, two central social aspects may contribute to combating or adversely amplifying design decay. First, design decay may be avoided, reduced or accelerated depending whether the communication dynamics among developers -- who play specific roles -- is fluent and consistent along a change. Second, the discussion content itself may be decisive to either improve or deteriorate the structural design of a system. Unfortunately, it has not been studied so far the role these key social aspects play on avoiding or amplifying design decay. Previous work either investigates technical aspects of design decay or confirms the high frequency of design discussions in pull-based software development. This paper reports a retrospective study aimed at understanding the role of communication dynamics and discussion content on design decay. We focused our analysis on 11 social metrics related to these two aspects as well as 4 control technical metrics typically used as indicators of design decay. We analyzed more than 11k pull request discussions mined from five large open-source software systems. Our findings reveal that many social metrics can be used to discriminate between design impactful and unimpactful pull requests. Second, various factors of communication dynamics are related to design decay. However, temporal factors of communication dynamics outperformed the participant roles' factors as indicators of design decay. Finally, we noticed certain social metrics tend to be indicators of design decay when analyzing both aspects together.

# Design Decay Symptoms

| File         | Description       | Link     |
|:-------------|:------------------|:---------|
| Design Symptoms Description | DesignateTool and Symptoms Descriptions | [Download](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/description_and_detection_mechanisms.zip) |

# RQ1: Are social metrics related to design decay?

| File         | Description       | Link     |
|:-------------|:------------------|:---------|
| Density | High Level Smells | [Download](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/design_changed/design_change_on_density_high_level_smells.rar) |
| Density | Low Level Smells   | [Download](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/design_changed/design_change_on_density_low_level_smells.rar) |
| Diversity           | High Level Smells      | [Download](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/design_changed/design_change_on_diversity_high_level_smells.rar) |
| Diversity           | Low Level Smells | [Download](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/design_changed/design_change_on_diversity_low_level_smells.rar) |
| Script for Wilcoxon Analysis   | - | [Download](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/wilcoxon_analysis.R) |

# Data for RQ2 and RQ3

| File         | Link     |
|:-------------|:---------|
| Design Decay per Pull Request | [Download](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/design_decay_per_pull_request.rar) |
| Pull Request Decay Classification | [Download](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/pull_request_decay_classification.rar) |
| Only Social Metrics | [Download](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/only_metrics.rar) |
| Metrics with Decay | [Download](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/metrics_with_decay.rar) |
| Script for Multiple Logistic Regression Analysis | [Download](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/multiple_regression_R.rar) |


# RQ2: To what extent the communication dynamics influence the design decay?

![RQ2](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/rq2.png)

# RQ3: To what extent the discussion content influence the design decay?

![RQ3](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/rq3.png)

# Model with Both Social Aspects

![both](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/all_data_tabl.png)
