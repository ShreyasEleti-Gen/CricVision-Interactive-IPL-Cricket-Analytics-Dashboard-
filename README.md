🏏 CricVision – Interactive IPL Cricket Analytics Dashboard
Transforming IPL Cricket Data into Actionable Sports Insights Using SQL and Power BI
📌 Project Overview
CricVision is an interactive IPL Cricket Analytics Dashboard designed to analyse historical Indian Premier League (IPL) data and transform raw cricket records into meaningful insights.

The project combines MySQL, SQL, Power BI, and DAX to analyse player performances, team statistics, batting and bowling trends, and season-wise tournament achievements.

The dashboard provides a centralized analytical platform where users can explore IPL statistics through interactive visualizations, dynamic KPIs, and season- and player-based filters.
🎯 Project Objectives
- Analyse historical IPL match and player performance data.
- Transform raw cricket datasets into structured analytical views using SQL.
- Evaluate batting and bowling performance using key metrics.
- Analyse team standings and season-wise performance.
- Identify Orange Cap and Purple Cap winners.
- Develop an interactive Power BI dashboard for cricket analytics.
- Enable dynamic filtering based on IPL seasons and individual players.
🛠️ Tools & Technologies
Technology	Purpose
MySQL	Data storage and database management
SQL	Data cleaning, joins, aggregations and analytical queries
Power BI	Interactive dashboard development
DAX	Dynamic KPIs, calculated tables and measures
Power Query	Data preparation and transformation
CSV / JSON	IPL source datasets

📊 Dashboard Features
CricVision consists of three interactive dashboard pages.
1. Executive Dashboard
Provides an overall summary of the selected IPL season.

Key Features:
- Total Runs and Total Wickets.
- Season Champion and Runner-up.
- Orange Cap – Leading run scorer.
- Purple Cap – Leading wicket-taker.
- Top players based on Fours and Sixes.
- IPL Points Table.
- Dynamic Season Slicer.


2. Batting Intelligence
Provides detailed insights into individual batting performances.

Key Features:
- Total Runs.
- Batting Average.
- Strike Rate.
- Fours and Sixes.
- Half-centuries and Centuries.
- Player Profile with Dynamic Image.
- Season-wise Run Analysis.
- Interactive Player Selection.

3. Bowling Intelligence
Focuses on individual bowling performance and effectiveness.

Key Features:
- Total Wickets.
- Bowling Average.
- Economy Rate.
- Bowling Strike Rate.
- Dot Balls.
- Five-Wicket Hauls.
- Best Bowling Figures.
- Wickets by Season.
- Top Batters Dismissed.
- Wickets Against Different Teams.
🔄 Project Methodology
The project follows a structured data analytics workflow:
IPL CSV / JSON Datasets
          |
          ▼
    Data Collection
          |
          ▼
    MySQL Database
          |
          ▼
 SQL Data Transformation
          |
          ▼
 Analytical SQL Views
          |
          ▼
    Power BI Connection
          |
          ▼
     Data Modelling
          |
          ▼
   DAX Calculations
          |
          ▼
 Interactive Dashboard


Step 1: Data Collection
Collected structured IPL datasets containing match-level, player-level, batting, bowling, and delivery-level information.
Step 2: Data Storage
Imported the raw datasets into MySQL and organized them into appropriate database tables.
Step 3: Data Transformation
Used SQL queries to:
- Join multiple datasets.
- Filter and aggregate records.
- Calculate batting and bowling statistics.
- Generate team-level statistics.
- Create analytical SQL views.
- Separate league-stage matches from playoff matches for points table calculations.
Step 4: Data Modelling
Connected MySQL analytical views to Power BI and established relationships between relevant tables.

Created a common Dim Player table by combining player information from Player Summary, Batting Stats, and Bowling Stats datasets.
Step 5: DAX Analysis
Developed dynamic DAX measures to calculate:
- Total Runs
- Batting Average
- Strike Rate
- Fours and Sixes
- Total Wickets
- Bowling Average
- Economy Rate
- Bowling Strike Rate
- Dot Balls
- Five-Wicket Hauls
- Matches Played
Step 6: Dashboard Development
Designed three interactive Power BI dashboard pages with dynamic slicers, KPI cards, charts, player profiles, and performance indicators.
Step 7: Dynamic Player Images
Integrated a separate player-image table to dynamically display the selected player's image across the dashboard.

📈 Key Insights
The dashboard enables users to identify several important IPL performance patterns:
1. Player Performance: Compare individual player performances across different IPL seasons.
2. Batting Analysis: Identify players who contribute through consistent run scoring, boundaries, and sixes.
3. Bowling Effectiveness: Evaluate bowlers using wickets, economy, bowling average, and strike rate.
4. Bowler Matchups: Identify batsmen dismissed most frequently by individual bowlers.
5. Team Performance: Analyse team standings using wins, losses, matches played, and points.
6. Tournament Achievements: Quickly identify season champions, Orange Cap winners, and Purple Cap winners.
7. Interactive Analysis: Explore player and season statistics through dynamic dashboard filters.

⚙️ Challenges Addressed
Some of the major challenges encountered during development included:
- Managing large IPL match-level and delivery-level datasets.
- Integrating multiple datasets with different table structures.
- Handling inconsistent player naming conventions.
- Developing accurate season-based DAX calculations.
- Excluding playoff matches from league-stage points table calculations.
- Establishing correct Power BI relationships.
- Implementing dynamic player images based on player selection.

💼 Real-World Applications
CricVision can support different stakeholders in the cricket and sports analytics industry:
- Cricket Analysts: Study player performances and identify historical trends.
- Team Management: Evaluate team strengths and weaknesses.
- Coaches: Analyse player performance and batter-versus-bowler matchups.
- Players: Understand individual performance and consistency.
- Sports Journalists: Use historical statistics for match previews and analysis.
- Fantasy Cricket Analysts: Explore player statistics for performance-based analysis.

🚀 Future Enhancements
The project can be extended with advanced analytics capabilities:
- Player-versus-player comparison.
- Machine Learning-based match winner prediction.
- Player performance prediction.
- Real-time match win probability.
- Advanced batter-versus-bowler analysis.
- Venue-based performance analytics.
- Powerplay, middle-over, and death-over analysis.
- AI-generated match summaries using Generative AI.
- Real-time IPL data integration.
- Mobile-optimized dashboard.


📂 Project Structure
A suggested GitHub repository structure:
CricVision/
│
├── Dataset/
│   ├── matches.csv
│   ├── deliveries.csv
│   └── player_data/
│
├── SQL/
│   ├── create_tables.sql
│   ├── data_transformation.sql
│   └── analytical_queries.sql
│
├── PowerBI/
│   └── CricVision_Dashboard.pbix
│
├── Images/
│   ├── executive_dashboard.png
│   ├── batting_dashboard.png
│   └── bowling_dashboard.png
│
├── Documentation/
│   └── CricVision_Final_Report.pdf
│
└── README.md



👨‍💻 Author
Eleti Shreyas Reddy
B.Tech | Computer Science Graduate
Interested in Data Analytics, Artificial Intelligence, and Data-Driven Solutions.
