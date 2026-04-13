# <h1 align="center">Data Analysis Portfolio</h1>
<h5 align="center">By Oliver Summers </h5>

<details markdown="1">
<summary>Applications</summary>
<br>

- Excel/Power BI - data cleaning and pivot analysis and visualisations
- GitHub - version control and portfolio hosting

</details>

# Contents

<details>
<summary>#1 - CRM B2B Software Performance Analysis</summary>
<br>

## **Summary**

<br>
This project analyses a B2B sales pipeline dataset from Maven Analytics, covering a fictitious computer hardware company. Data was cleaned and prepared in Excel before being visualised in Power BI.
The analysis addresses three key questions: how sales teams compare against each other, which agents are underperforming and why and which products deliver the strongest win rates.

## **Key Findings**
<br>

**Sales Team Performance** - Total closed revenue across all teams is $10M. Melvin Marxen (Central) is the standout performer, contributing 23% of total revenue at an average deal value of $2,554. Win rates are consistent across all agents at approximately 63%, indicating the sales process is working uniformly across teams. Performance differences are driven by deal value rather than conversion ability - Dustin Brinkmann's average deal value of $1,465 is 38% below the team average of $2,361, making him the primary drag on Central's overall contribution despite a comparable win rate.

<p align="center">
  <img width="523" height="167" alt="Sales Manager Win Performance" src="https://github.com/user-attachments/assets/ca76cf12-6580-4dc5-a660-4d7d1c0382e4" />
</p>

<br>

<img width="3402" height="1991" alt="Sales Manager Win Rates" src="https://github.com/user-attachments/assets/ec03a027-d898-4f13-8bf7-f46b6751584e" />

<br>

**Sales Agent Performance** - At agent level, win rates remain consistent across the team, confirming that underperformance is not a conversion issue. Violet Mclelland is the clearest underperformer - lowest revenue at $123,431, lowest average deal value at $1,012, and above average days to close at 58 days. Moses Frase and Lajuana Vencill are flagged for pipeline velocity concerns at 65 and 63 days to close respectively, well above the 52 day team average, representing stale pipeline that distorts forecasting accuracy. Elease Gluck and Rosalina Dieter show the highest average deal values in the dataset at $3,615 and $3,269 but contribute only 2% of revenue each - indicating a pipeline volume problem rather than a capability issue.

<p align="center">
  <img width="677" height="617" alt="Sales Agent Performance" src="https://github.com/user-attachments/assets/d32bd269-be86-47ae-8d21-a07dacfd793d" />
</p>

<br>

**Product Win Rates** - Product win rates are consistent across the portfolio ranging from 60–65%, with no significant outliers on conversion alone. When cross-referenced with average deal value the picture becomes more nuanced. GTX Plus Pro and GTX Pro combine strong 64% win rates with deal values of $5,490 and $4,816 respectively, making them the highest priority products for sales focus. GTK 500 carries the highest average deal value in the portfolio at $26,707 — approximately 11x the portfolio average — meaning a 1% improvement in its win rate has greater revenue impact than equivalent improvement across any other product. MG Special, despite the highest win rate at 65%, generates an average of just $55 per deal making its revenue contribution marginal.

<img width="2656" height="1491" alt="Product Win Rates" src="https://github.com/user-attachments/assets/71529137-a797-42f4-b7ce-bfc2d2d3ae02" /> 

<br>

<img width="3019" height="2287" alt="Product by Average Won Value" src="https://github.com/user-attachments/assets/df64ee5c-c74f-4685-975b-b837a18e94aa" />

______________

*Further Notes:*

- Source: Maven Analytics Data Playground — CRM Sales Opportunities
- License: Public Domain

</details>
