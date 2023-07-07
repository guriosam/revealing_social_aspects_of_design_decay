---
title: Revealing the Social Aspects of Design Decay
---

# Authors

Caio Barbosa, Anderson Uchôa, Filipe Falcão, Hyago Brito, Guilherme Amaral, Daniel Coutinho, Alessandro Garcia, Baldoino Fonseca, Maarcio Ribeiro, Vinicius Soares and Leonardo Souza

# Abstract

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

# User Classification Method

In order classify the developers on Users, Contributors, Core Devs, Employees and Temporaries we used the GitHub API tag [author_association](https://docs.github.com/en/graphql/reference/enums#commentauthorassociation).

We classified each developer considering the following:

| Classification | Tags | 
|:---------------|:-----|
| User           | FIRST_TIMER, FIRST_TIME_CONTRIBUTOR, NONE |
| Contributor    | CONTRIBUTOR, COLLABORATOR |
| Core Developer | MEMBER, OWNER |
| Temporary | FIRST_TIMER, FIRST_TIME_CONTRIBUTOR, NONE, CONTRIBUTOR |
| Employee | COLLABORATOR, MEMBER, OWNER |

# Design Symptoms Descriptions

| High-level | Description |
|:-------------|:------------|
| Imperative Abstraction | when an operation is turned into a class |
| Multifaceted Abstraction | an abstraction that has more than one responsibility assigned to it |
| Unutilized Abstraction | an abstraction that is left unused |
| Unnecessary Abstraction | an abstraction that is actually not needed in the system |
| Deficient Encapsulation | the accessibility of one or more members of an abstraction is morepermissive than actually required |
| Unexploited Encapsulation | when a client class that uses explicit type checks instead of exploiting the variation in types already encapsulated within a hierarchy |
| Broken Modularization | when data and/or methods that should have been into a single abstraction are spread across multiple abstractions |
| Insufficient Modularization | when an abstraction that has not been completely decomposed |
| Hub Like Modularization | when an abstraction has dependencies (both incoming and outgoing)with a large number of other abstractions. |
| Cyclic Dependent Modularization | when two or more abstractions depend on each other directlyor indirectly |
| Rebellious Hierarchy | when a subtype that rejects the methods provided by its supertype(s) |
| Wide Hierarchy | when an inheritance hierarchy that is too wide |
| Deep Hierarchy |  when an inheritance hierarchy that is excessively deep |
| Multipath Hierarchy | when a subtype inherits both directly as well as indirectly from a super-type leading to unnecessary inheritance paths in the hierarchy. |
| Cyclic Hierarchy | when a supertype in a hierarchy that depends on any of its subtypes |
| Missing Hierarchy | when a design segment uses conditional logic instead of polymorphism. |
| Broken Hierarchy | a supertype and its subtype conceptually do not share an "is a" relationship |

| Low-level | Description |
| :-------------------------------------- | :-------------------------------------------|
| Abstract Function Call From Constructor | a constructor that calls an abstract method |
| Complex Conditional | a conditional statement that is complex |
| Complex Method | a method that has high cyclomatic complexity |
| Empty Catch Block | a catch block of an exception that is empty |
| Long Identifier | an identifier that is excessively long |
| Long Method | a method that is too long to understand |
| Long Parameter List | a method that accepts a long list of parameters | 
| Long Statement | a statement that is excessively long |
| Magic Number |  when an unexplained number is used in an expression |
| Missing Default | a switch statement that does not contain a default case |

# RQ2: To what extent the communication dynamics influence the design decay?

![RQ2](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/rq2.png)

# RQ3: To what extent the discussion content influence the design decay?

![RQ3](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/rq3.png)

# Model with Both Social Aspects

![both](https://raw.githubusercontent.com/guriosam/revealing_social_aspects_of_design_decay/master/all_data_tabl.png)
