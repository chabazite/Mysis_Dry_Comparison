<h1 align='center'> Feed Comparison for <em>A. mexicanus</em> </h1>

## Business Case

As a fixture in the cavefish community, Mysis shrimp is used as both a breeding and growth supplement. Unfortunately, when comparing the nutrition to a dry diet, there is a large difference in protein, lipid, and moisture content.  Protein and lipid levels are recommended to be at least 45% Sealey et al. (2009) and 10-15% Sabina et al. (2016) for growth and breeding, respectively.
<br>

<img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/nutrition_table.png' width =750 align = "middle">
<br>

Our facility team has also found fish carcasses, plastics, and other unidentifiable items within the frozen packages. This places a question on the biosecurity practices, critical in a laboratory environment.
<br>

When considering an optimal diet for laboratory fish, Lawrence et al. (2015) quotes “[an optimal diet] is one that efficiently promotes definition and stability in nutritional profile, biosecurity, and maximal performance (growth, survival, and reproduction). While both biosecurity and nutrition are discussed above, the maximal performance of Mysis versus a dry diet is still unknown.
<br>
 
The stakeholders should also consider the indirect & direct costs of Mysis. As a natural resource, it is costly, the quality is variable, and it is time-consuming. The technicians devote an extra 3-4 hours per week preparing and feeding out this feed. 
 <br>
 
We will use a standard dry feed in our study. It poses a lower risk to biosecurity, provides optimal nutrition, and requires minimal time for preparation. To convince the stakeholders of its viability, this study will focus on the above performance metrics using Mysis and dry feed.
<br>

 The project objectives are to:
 <br>
 
  1. Raise A. mexicanus on a dry feed and compare the growth rate and survivability to fish raised on the traditional Mysis feed
  2. Compare the embryo fecundity of adult broodstock raised using this alternative feed.


Medium: [Fish Food Analysis](https://medium.com/@Andrew-Ingalls/a-change-in-diet-fish-food-analysis-fce185e251bc)

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
     * <strong>Tidyverse</strong>
     * <strong>Openxlsx</strong>
     * <strong>gt</strong>
     * <strong>ggridges</strong>
     * <strong>Viridis</strong>
     * <strong>Raag</strong>
     * <strong>ggResidpanel</strong>
     * <strong>qqplotr</strong>
     * <strong>EnvStats</strong>
     * <strong>Rstatix</strong>
     * <strong>Broom</strong> 
     * <strong>ggpubr</strong>
     * <strong>gridExtra</strong>
     * <strong>wrs2</strong>
     * <strong>Workflowr</strong>
 
 
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
           * Create a dataframe for nutrition facts vased on manufacturers info
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
           * Length-Mass Relationship Regression Modelling
                * Log-log transformation to work with linear model
                * Spearman correlation for each feed group
                * Wilcoxon ANOCOVA to compare both feed group regression models
      * Survival
           * Significance test for census events between groups
           * Signficance test for death records between groups
           * Linear & poly regression models with low R-squared values
      * Sex Sorts
           * Significance test for sex categories between feed groups
      * Fecundity
           * Significance tests ffor average viable embryo production per event between feed groups
      * Medium Exports

 </details>
 
<a name="Executive_Summary"></a>
## Executive Summary

<a name="Data_Collection_and_Wrangling"></a>
### Data Collection and Wrangling:
<details open>
<summary>Show/Hide</summary>
<br>
 
This phase involved a considerable amount of planning as the data was collected firsthand. This reduced the need for data cleanup after collection. The features to collect would be length, mass, census, viable embryos, and total embryos. As the reduction of stress is important for biological experiment, data was collected under anesthesia. 
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
### Exploratory Data Analysis
<details open>
<summary>Show/Hide</summary>
<br>
 
 #### Growth 
 <br>

 <table><tr><td><img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Density_Age_Mass.png' width=500></td><td><img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Density_Age_Length.png' width=500></td></tr></table>
 <br>
 
 <table><tr><td><img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/BoxPlot_Mass.png' width=500></td><td><img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/BoxPlot_Length.png' width=500></td></tr></table>
 <br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/LMR_SP.png'>
 <br>
 
 #### Survival 
 <br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Survival_Tanks.png'>
 <br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Survival_Avg.png'>
 <br>
 
 #### Sex Sort 
 <br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Sex_sort_mean.png'>
 <br>
 
 #### Fecundity 
 <br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Total_Viable.png'>
 <br>
 
 <img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/EDA_Figures/Average_Viable.png'>
 <br>
 
  </details>
  
<a name="Regression_and_Significance_Test"></a>
### Regression and Significance Testing:
<details open>
<summary>Show/Hide</summary>
<br>
  
 #### Growth 
 <table><tr><td><img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/Significance%20Testing/Sig_Mass.png' width=500></td><td><img src='https://github.com/chabazite/Mysis_Dry_Comparison/blob/main/output/Significance%20Testing/Sig_Length.png' width=500></td></tr></table>
 <br>
 
 
 
 #### Survival 
 <br>
 
 #### Sex Sort 
 <br>
 
 #### Fecundity 
 <br>
 
  </details>
 
<a name="Evaluation"></a>
### Evaluation
<details open>
<summary>Show/Hide</summary>
<br>
 
 <a name="Future_Improvements"></a>
  
#### Future Improvements
 
 </details>
  
A [workflowr][] project.

README outline tailored from [awesomeahi95][]

[workflowr]: https://github.com/workflowr/workflowr

[awesomeahi95]: https://github.com/awesomeahi95
