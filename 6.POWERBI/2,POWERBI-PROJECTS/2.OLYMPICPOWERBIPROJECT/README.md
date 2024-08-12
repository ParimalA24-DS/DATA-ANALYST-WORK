# 🏅 Olympic  Data Analysis Project

![Olympic Dashboard](https://github.com/ParimalA24-DS/DATA-ANALYST-WORK/blob/main/6.POWERBI/2%2CPOWERBI-PROJECTS/2.OLYMPICPOWERBIPROJECT/OlympicDashboard.PNG)

## Project Title: Olympic Data Analysis

### Problem Statement
Analyse the Olympic 2024 dataset to determine the percentage distribution of medals won by gender (male vs. female) across all sports. The goal is to provide insights into gender representation and achievement in the 2024 Olympics.

### Key Performance Indicators (KPIs)
1. **Percentage of Medals Won by Male Athletes**: Measure the percentage of total medals won by male athletes across all sports.
2. **Percentage of Medals Won by Female Athletes**: Measure the percentage of total medals won by female athletes across all sports.
3. **Gender Disparity Ratio in Medals**: Calculate the ratio of male to female medals won to identify gender disparity.
4. **Top Sports for Each Gender**: Identify which sports had the highest medal counts for male and female athletes.
5. **Year-over-Year Gender Medal Comparison**: Compare the gender-based medal distribution in 2024 with previous Olympic years to identify trends.

### Data Understanding
The dataset contains 271,117 records with the following 15 columns:
- **ID**: Unique identifier for each athlete.
- **Name**: Athlete's name.
- **Gender**: Gender of the athlete (Male/Female).
- **Age**: Age of the athlete.
- **Height**: Athlete's height.
- **Weight**: Athlete's weight.
- **Team**: The team or country the athlete represents.
- **Country**: National Olympic Committee code.
- **Games**: Edition of the Olympic Games.
- **Year**: Year the event took place.
- **Season**: Season of the Olympics (Summer/Winter).
- **City**: Host city.
- **Sport**: Sport category.
- **Event**: Specific event within the sport.
- **Medal**: Type of medal won (Gold/Silver/Bronze).

### Data Preparation
1. **Column Removal**:
   - The `Games` column was removed as it included both year and season values, which were redundant.
   - The `Height` and `Weight` columns were removed from the dataset as they were not necessary for the analysis.

2. **Sheet Adjustments**:
   - In the second sheet, the unnecessary `Notes` column was deleted.
   - The first row was set as the header for proper data alignment.

3. **Merging Data**:
   - The `NOC` columns from both the `Athletes` and `Country Definitions` sheets were merged using a full outer join in Power Query Editor. This integrated all records from both tables, preserving unmatched rows and combining relevant information.

4. **Column Renaming**:
   - The `Sex` column was renamed to `Gender`.
   - The `NOC` column was renamed to `Country`.
   - The `Region` column was renamed to `Region`.

5. **Data Cleaning**:
   - The `Gender` column values were standardized to 'Male' and 'Female'.
   - Missing values in the `Country` column were handled by removing the corresponding rows from the dataset.

### Dashboard and Visualization
The final analysis included the following visualizations:
1. **Medals Won by Gender %**
2. **Male and Female Ratios by Year**
3. **Top 10 Countries by Medals**
4. **Top Olympic Medallists by Total Medals**
5. **Total Number of Participating Countries**
6. **Total Number of Sports**

These insights provide a comprehensive overview of gender representation in the  Olympics.
----
## 🌱 Learn & Grow Together

### 📫 Contact Me
If you'd like to connect, collaborate, or discuss anything related to data analytics, feel free to reach out!

- **LinkedIn**: [LinkedIn Profile](https://www.linkedin.com/in/parimalautade)
- **GitHub**: [GitHub Profile](https://github.com/ParimalA24-DS)

Let's learn and grow together!
