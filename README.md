# Dmdd


About:

In today’s world economy, people are leading a successful life in all parts of the world. Amidst covid wrecking out normal lives,A lot of families have lost members, countries' economies have hit bottom, people are still bouncing back to reach normality. But the real question arises, how many people are actually happy with the lives they are leading? 
 
This project mainly revolves around different categories that could influence a person’s success and happiness by analyzing data of internet usage, world happiness report, world’s crime report, world’s literacy report, world’s gdp, covid statistics, universities in a country, olympics success rate and not the least world’s alcohol consumption. 
 
By analyzing, scrapping, munging, cleaning and normalizing huge amounts of data, this database provides a person a clear understanding of which country they could settle with respect to all satisfying permutations and combinations of categories mentioned above. 
- Ultimately, by refining the data, a person can now visualize data by looking at graphs that could affect a person’s opinion to expand business, or to even settle in! 


System requirements
python3.9
pip 22.3.1

Python Libraries needed
pandas
beautifulsoup
numpy
jupyter_notebook

ER Diagram-

![FINAL_DMDD_ER](https://user-images.githubusercontent.com/113812925/207753296-f10e9ecc-e9d9-4792-8873-d74cf5f13670.png)


Real world use-cases-
A person can establish analysis on various factors from this database
- A student can check what are the countries with highest gdp rate and literacy_index to enhance his/her future studies
-A person can move to a country based on the covid status and crime rate in that country
-A person can establish the happiest country with lowest criminal rate
-A person could also check universities of highest gdp countries
-A person can check how alcohol and crime can depends and vary in each country. 



steps to run
run ddl commands to create tables - DDL/create_tables.sql
import csv files to respective tables - 
scrape covid data using script - scritp/covidscript.ipynb
import covid csv into the table 
import tables csv into database - script/ingestion_pythonscript.ipynb
