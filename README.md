<h1 align='center'> Feed Comparison for <em>A. mexicanus</em> </h1>

## Business Case

“The ‘optimal’ diet for laboratory fish is one that efficiently promotes definition and stability in nutritional profile, biosecurity, and maximal performance (growth, survival, and reproduction)” (Lawrence et al. 2015). This quote provides a strong foundation for any feed studies in a laboratory environment. Mysis shrimp are a standard breeding and growth supplement in the cavefish community.  Unfortunately, their lack of nutritional content and increased biosecurity risk do not support its use. 
<br>

As a natural resource, Mysis is costly, variable, and can be contaminated. Additionally, the time devoted to feeding could be reduced by approximately 3-4 hours per week if removed. This, in addition to Lawrence's definition, is reason enough to identify alternative feeds for A. mexicanus.
<br>

We will use a standard dry feed as the alternative in our study. It poses a lower risk to biosecurity, provides optimal nutrition, and requires minimal time for preparation. To convince the stakeholders of its viability, I will use performance metrics such as growth, survival, and reproduction.  I will measure this against the performance of Mysis. 
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
      * 1.3 Survival
      * 1.4 Sex Sort
      * 1.5 Fecundity
      * 1.6 Nutrition
 2. Exploratory Data Analysis
      * 2.1 Library Imports
           * Set theme constants
      * 2.2 Growth
           * Check distributions of data based on ages and groups
           * Compare feed groups using boxplots for length and mass
           * Plot the length-mass relationship as scatterplots to visually inspect correlation
      * 2.3 Survival
      * 2.4 Sex Sorts
      * 2.5 Fecundity
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
      * Survival
      * Sex Sorts
      * Fecundity
      * Medium Exports

 </details>
 
<a name="Executive_Summary"></a>
## Executive Summary

<a name="Data_Collection_and_Wrangling"></a>
### Data Collection and Wrangling:
<details open>
<summary>Show/Hide</summary>
<br>
  </details>
  
<a name="Exploratory_Data_Analysis"></a>
### Exploratory Data Analysis
<details open>
<summary>Show/Hide</summary>
<br>
  </details>
  
<a name="Regression_and_Significance_Test"></a>
### Regression and Significance Testing:
<details open>
<summary>Show/Hide</summary>
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
