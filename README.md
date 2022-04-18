<h1 align='center'> Feed Comparison for <em>A. mexicanus</em> </h1>

## Business Case

As a fixture in the cavefish community, Mysis shrimp is used as both a breeding and growth supplement. Unfortunately, when comparing the nutrition to a dry diet, there is a large difference in protein, lipid, and moisture content. For growth and breeding, Protein and lipid levels are recommended to be at least 45% (Sealey et al., 2009) and 10-15% (Sabina et al., 2016), respecitvely.
<br>

<img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/nutrition_table.png' width =750 align = "middle">
<br>

The facility team has found fish carcasses, plastics, and other unidentifiable items within the frozen packages. This places a question on Mysis collection biosecurity practices, critical in a laboratory environment.
<br>

When considering an optimal diet for laboratory fish, Lawrence et al. (2015) quotes “[an optimal diet] is one that efficiently promotes definition and stability in nutritional profile, biosecurity, and maximal performance (growth, survival, and reproduction)." While both biosecurity and nutrition are discussed above, the maximal performance of Mysis versus a dry diet is still unknown.
<br>
 
The stakeholders should also consider the indirect & direct costs of Mysis. As a natural resource, it is costly, the quality is variable, and it is time-consuming. The technicians devote an extra 3-4 hours per week preparing and feeding out this feed. 
 <br>
 
The Skretting Gemma dry feed will be used in this study. It poses a lower risk to biosecurity, provides optimal nutrition, and requires minimal time for preparation. To convince the stakeholders of its viability, this study will focus on the above performance metrics using Mysis and dry feed.
<br>

 The project objectives are to:
 <br>
 
  1. Raise *A. mexicanus* on a dry feed and compare the growth rate and survivability to fish raised on the traditional Mysis feed.
  2. Compare the embryo fecundity of adult broodstock raised using this alternative feed.


Read more on Medium: [Fish Food Analysis](https://medium.com/@Andrew-Ingalls/a-change-in-diet-fish-food-analysis-fce185e251bc)

## Table of Contents
<details open>
  <summary>Show/Hide</summary>
  <br>
  
1. [ File Descriptions ](#File_Description)
2. [ Technologies Used ](#Technologies_Used)    
3. [ Structure ](#Structure)
4. [ Executive Summary ](#Executive_Summary)
   * [ 1. Data Collection and Wrangling ](#Data_Collection_and_Wrangling)
   * [ 2. Exploratory Data Analysis ](#Exploratory_Data_Analysis) 
   * [ 3. Regression and Significance Testing ](#Regression_and_Significance_Test)
   * [ 4. Evaluation ](#Evaluation)
       * [ Future Improvements ](#Future_Improvements)
</details>

## File Descriptions
<details>
<a name="File_Description"></a>
<summary>Show/Hide</summary>
 <br>

  * <strong>[ analysis ](https://github.com/chabazite/Mysis_Dry_Comparison/tree/main/analysis)</strong>: Folder for storing all analyses as R Markdown Files
      * <strong>[ 1.0_Data_Wrangling.Rmd ](https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/analysis/1.0_Data_Wrangling.rmd) </strong>: Markdown with all data cleaning
      * <strong>[ 2.0_EDA.Rmd ](https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/analysis/2.0_EDA.Rmd) </strong>: Markdown with all exploratory data analysis
      * <strong>[ 3.0_Outliers.Rmd ](https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/analysis/3.0_Outliers.Rmd) </strong>: Markdown that further explores the Outliers
      * <strong>[ 4.0_Modeling.Rmd ](https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/analysis/4.0_Modeling.Rmd) </strong>: Markdown the creates regressions and significant testing
  * <strong>[ code ](https://github.com/chabazite/Mysis_Dry_Comparison/tree/main/code) </strong>: Folder that may contain long-running or supplemental code (Empty)
  * <strong>[ data ](https://github.com/chabazite/Mysis_Dry_Comparison/tree/main/data) </strong>: Folder containing all data and project work files
      * <strong>Mysis_Pilot.xlsx</strong>: all data from the project 
      * <strong>Mysis Pilot Cavefish.docx</strong>: initial and detailed project proposal 
  * <strong>[ docs ](https://github.com/chabazite/Mysis_Dry_Comparison/tree/main/docs) </strong>: Folder containing website HTML files (Do not edit)
  * <strong>[ output ](https://github.com/chabazite/Mysis_Dry_Comparison/tree/main/output) </strong>: Folder containing visualizations used for Medium and README
      * <strong>[ EDA_Figures ](https://github.com/chabazite/Mysis_Dry_Comparison/tree/main/output/EDA_Figures)</strong>: Folder containing all EDA visualizations
      * <strong>[ Significance Testing ](https://github.com/chabazite/Mysis_Dry_Comparison/tree/main/output/Significance%20Testing)</strong>: Folder containing all Significance and Regression visualizations
 * <strong>Mysis.Rproject</strong>: Project file containing all R Analyses
 * <strong>_workflowr.yml</strong>: Provides folder structure and helps with reproducability
 </details>

## Technologies Used:
<details>
<a name="Technologies_Used"></a>
<summary>Show/Hide</summary>
<br>
 
* <strong>RStudio</strong>
     * <strong>tidyverse</strong>
     * <strong>openxlsx</strong>
     * <strong>gt</strong>
     * <strong>ggridges</strong>
     * <strong>viridis</strong>
     * <strong>raag</strong>
     * <strong>ggResidpanel</strong>
     * <strong>qqplotr</strong>
     * <strong>envstats</strong>
     * <strong>rstatix</strong>
     * <strong>broom</strong> 
     * <strong>ggpubr</strong>
     * <strong>gridextra</strong>
     * <strong>wrs2</strong>
     * <strong>workflowr</strong>
 
 
</details>
  
## Structure of Notebooks:
<details>
<a name="Structure"></a>
<summary>Show/Hide</summary>
<br>
 
 1. Data Wrangling
      * 1.1 Library Imports
      * 1.2 Growth
           * Change column names and remove unnecessary columns
           * Change data types using lapply()
           * Recode tank locations based on movement throughout study
      * 1.3 Survival
           * Change column names
           * Recode tank locations based on movement throughout study
           * Recode dates due to multi-day sampling for analysis
           * Change data types
      * 1.4 Sex Sort
           * Change column names and data types
      * 1.5 Fecundity
           * Change column names and data types
      * 1.6 Nutrition
           * Create a dataframe for nutrition facts based on manufacturers' info
           * Use the gt library to construct a nutrition table
           * Format the nutrition table using gt
 2. Exploratory Data Analysis
      * 2.1 Library Imports
           * Set theme constants
      * 2.2 Growth
           * Check distributions of data based on ages and groups
           * Compare feed groups using boxplots for length and mass
           * Plot the length-mass relationship as scatterplots to visually inspect correlation
      * 2.3 Survival
           * Compare average and individual census reports of feed groups over time
           * Compare the average deaths of feed groups between census events
      * 2.4 Sex Sorts
           * Compare the ratio of Female:Male:Unknown between feed groups
      * 2.5 Fecundity
           * Compare the total viable embryos for each tank
           * Compare the average viable embryo production per breeding event
      * 2.6 Medium Exports
 3. Outlier Exploration
      * 3.1 Use four oultier detection methods for mass in each feed group
           * Boxplot
           * Percentile
           * Rosner
           * Cook's Distance
      * 3.2 Use four oultier detection methods for length in each feed group
      * 3.3 Summarize both outlier datasets
      * 3.4 Count and compare the feed group outliers for both mass and length
      * 3.5 Compare the total number of methods detected for each sample
 4. Regression and Significance Testing
      * Library Imports
      * Growth
           * Significance test for Mass between groups
           * Significance test for Length  between groups
           * Length-Mass Relationship Regression Modeling
                * Log-log transformation to work with linear model
                * Spearman correlation for each feed group
                * Wilcoxon ANCOVA to compare both feed group regression models
      * Survival
           * Significance test for census events between groups
           * Signficance test for death records between groups
           * Linear & poly regression models with low R-squared values
      * Sex Sorts
           * Significance test for sex categories between feed groups
      * Fecundity
           * Significance tests for average viable embryo production per event between feed groups
      * Medium Exports

 </details>
 
<a name="Executive_Summary"></a>
## Executive Summary

<a name="Data_Collection_and_Wrangling"></a>
### Data Collection and Wrangling:
<details open>
<summary>Show/Hide</summary>
<br>
 
This phase involved a considerable amount of planning as the data was collected firsthand. This reduced the need for data cleanup after collection. The features to collect would be length, mass, census, viable embryos, and total embryos. As the reduction of stress is important for biological experiments, data was collected under anesthesia. 
<br>
 
The largest roadblock was counting embryos within the timeframe, budget, and precision. This project used subgroup estimation, providing consistent numbers with reasonable accuracy. If this pilot project warranted a publication, a more robust counting method would be performed. This decision was made based on the needs of the experiment.
<br>
 
Cleaning the data included refactoring data types, simplifying feature names, and removing features no longer necessary. Recoding was performed on dates and tank locations due to multi-day testing and bulk moves throughout the experiment. This allowed for interesting mutate coding: 
<br>

 ```
 df_growth <- df_growth %>%
  mutate(Tank_Location = recode(Tank_Location, !!!setNames(third_tank_locations, first_tank_locations)))
 ```
</details>
  
<a name="Exploratory_Data_Analysis"></a>
### Exploratory Data Analysis:
<details open>
<summary>Show/Hide</summary>
<br>
 
 Most of the work is performed in the Analysis phase. This was broken up into 4 sections: Growth, Survival, Sex Sort, and Fecundity.
<br>
 
 #### Growth 
 <br>
 
 <table><tr><td><img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Density_Age_Mass.png' width=500></td><td><img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Density_Age_Length.png' width=500></td></tr></table>

Density distributions, separated by age, provide two clear insights. 
<br>
 
First, the Gemma group has a gradual slope for mass and length after the peak. This starts at six months and continues throughout the experiment. For Mysis, there is a sharp negative slope, followed by a small secondary bump. This gap in data could further support the idea of one/two dominant females within each tank.
<br>
 
The second takeaway is the non-normal distribution. While not shown here, this was confirmed through Q-Q plots. This indicates a future need for non-parametric significance testing.
<br>
<br>
 
<table><tr><td><img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/BoxPlot_Mass.png' width=500></td><td><img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/BoxPlot_Length.png' width=500></td></tr></table>

Boxplots for both length and mass provide further insights into the two feeding regimes. First, there is a clear jump in size between five and six months for both length and mass. This shows a growth spurt, which interestingly enough overlaps with aggression studies for *A. mexicanus*.
<br>
 
Next, there is a difference in outlier severity and quantity between the two groups. This supports the secondary bumps seen in the density distribution. It also supports the idea of dominant, larger females produced through feed territoriality. 
<br>
 
Finally, there doesn’t appear to be a significant difference, based on the interquartile range and medians, between the groups. This will later be confirmed with significance testing.
<br>
<br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/LMR_SP.png' width = 750>

 To understand the differences in growth, a length-mass relationship plot was created. These plots are integral in understanding the growth of fish.
 <br>
 
There doesn’t appear to be any difference between the two groups when plotting out the relationship. There is an interesting polynomial or exponential relationship with length to mass. This is common in fish and is used to judge isometric growth.
 <br>
 
Finally, notice the 3 points at the top of the graph from the Mysis group. These fish are most likely the dominant females within the Mysis groups.
<br>
<br>
 
 
 #### Survival 
 <br>
 
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Survival_Tanks.png' width = 750>
 <br>
 
  All tanks were counted every 40 days, coinciding with mass and length measurements. The plot below shows the census of each tank over the course of the study. There is a distinct difference between the Mysis group ( higher survival rate) and the Gemma (lower survival rate). These fish were observed to have died through wounds sustained during fighting. This suggests Mysis provides an outlet for the prey drive. 
<br>
<br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Survival_Avg.png' width = 750>
 <br>
 When plotted as an average, the difference in census becomes even more clear. The standard errors of each group have a large separation after the second event, indicating a significant difference.
<br>
<br> 
 
 #### Sex Sort 
 <br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Sex_sort_mean.png' width = 750>
 <br>
 Sexes were normalized as a percent of the total tank census. This was due to the differences in survivability in each tank at the end of the study. There did not appear to be any difference between feed groups, however, a large skew towards females was noticed for both feed groups.
 <br>
 <br>
 
 
 #### Fecundity 
 <br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Total_Viable.png' width = 750>
 <br>

First, a plot of total viable embryo production was created for each tank. There is an extra Mysis tank (10C6) as there weren’t enough males and females to create a full tank. This will not be used when calculating the average or any significance testing. However, it was interesting to see that even with fewer males and females, this tank still produced more viable embryos than either of the Gemma tanks. 
<br>
<br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Average_Viable.png' width = 750>
 <br>
 
 When comparing the averages of viable embryos produced for a breeding event, there is a difference between the two groups. Mysis tanks produce more viable embryos than Gemma. This could be due to the vitamin content or high protein ratio of Mysis.
 <br>
 <br>
 
  </details>
  
<a name="Regression_and_Significance_Test"></a>
### Regression and Significance Testing:
<details open>
<summary>Show/Hide</summary>
<br>
  
 #### Growth 
 <br>
 
 The two major factors for growth: mass and length, were divided into age categories.  When comparing the data between the two feed groups,  no significant difference was found for either feature.
 <br>
 
 <table><tr><td><img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/Significance%20Testing/Sig_Mass.png' width=500></td><td><img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/Significance%20Testing/Sig_Length.png' width=500></td></tr></table>
 <br>
 
To compare the relationship of each feed group, the non-linear dataset was transformed using log-log.  When using logarithms, the scale switches from absolute to relative. For example, rather than a 1 mg increase in mass for every 1 cm increase in length, this model shows mass will increase 3.2% for every 1% increase in length.
 <br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/Significance%20Testing/Growth_Linear.png' width = 750>
 <br>
 
 
The two regression lines, which have the same linear equation were tested to ensure their was no difference. Using Wilcoxon ANCOVA, there was only a significant difference at the extreme end of the lines, where data is sparse. 
 <br>
 <br>

 <strong>Conclusion</strong>: There is no difference in growth for the surface morph of  A. mexicanus when comparing Mysis vs. dry diet for first feedings.  
 <br>
 
 #### Survival 
 <br>
 
 Based on the analysis below, there is no significant difference in occurrences of deaths between census events. However, it is important to investigate data from many different angles.
 <br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/Significance%20Testing/Deaths_Wilcox.png' width = 750>
 <br>
 
 Looking at the census for each sampling event, there is a cumulative effect with deaths. There is no significant difference in population until the final census event. The small quantity of census data could be the cause for a lack of significance for the other census events.
 <br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/Significance%20Testing/Census_Wilcox.png' width = 750>
 <br>
 <br>
 
 <strong>Conclusion</strong>: From three to twelve months old, a significant difference in populations accumulated between the two feed groups. With more data, this conclusion would most likely strengthen. 
<br>
 
 #### Sex Sort 
 <br>
 
 Due to the difference in ending population, the data was normalized as a percent of total population.There was no significant difference in sex found between feed groups. However, there was a significant sex skew towards female found in both feed groups, common in fish.
 <br>
 
   <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/Significance%20Testing/Sex_Wilcox.png' width = 750>
 <br>
 
 <strong>Conclusion</strong>: There was no impact on the sex ratios by changing feed type.
 <br>
 <br>
 
 #### Fecundity 
 <br>
 
 Fecundity was measured over three months. There were two breeding events that occurred each week. All tanks were bred at the same time. A clear and significant difference between the two feed groups can be seen in the analysis below:
 <br>

  <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/Significance%20Testing/fECUNDITY_Wilcox.png' width = 750>
 <br>
 
 <strong>Conclusion</strong>:Mysis improves the average viable embryo production in the facility. A critical insight to the study.
 
 </details>
 
<a name="Evaluation"></a>
### Evaluation:
<details open>
<summary>Show/Hide</summary>
<br>
 Due to the significant difference in census and fecundity, the Mysis feed should continue in the facility. While Mysis is suboptimal for technicians, it is in the best interest of the animals and the lab.
 <br>
 
It is important to remember that while the dry diet did not outcompete Mysis for this feed replacement, the facility feeds three times a day. The other two feeding times are a dry diet. This provides quality nutrition, while still reaping the aggression-reduction benefits of Mysis.
 <br>
 
 <a name="Future_Improvements"></a>
  
#### Future Improvements
 1.  Alternative feeds should continue to be explored such as black soldier fly larvae. Mysis still pose an issue both in biosecurity and labor intensity.
 
 2. During the next experiment, a greater emphasis should be placed on census data quantity for better modeling and analysis.
 <br>
 </details>
  
A [workflowr][] project.

README outline tailored from [awesomeahi95][]

[workflowr]: https://github.com/workflowr/workflowr

[awesomeahi95]: https://github.com/awesomeahi95
