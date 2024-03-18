# TradeXpress Business Analysis

This project presents a comprehensive analysis of TradeXPress, a global trade company specializing in supplying high-quality products. TradeXPress operates by providing wholesale items to retailers. The analysis covers the period from July 2020 to April 2022, aiming to provide a detailed overview of the business's performance and offer strategic recommendations for future growth. The key areas of focus include:

- Sales trends analysis
- Product performance evaluation
- Identification of key customers
- Assessment of shipping costs and delays
- Evaluation of employees' performance
- Market analysis of different countries

## Database Design

The project began with the design of an Entity-Relationship (ER) Diagram, which served as the foundation for modeling the database. The ER Diagram was meticulously mapped to ensure accurate representation of the business's data structure. Subsequently, the database was implemented using Microsoft SQL Server, adhering to best practices in database design and implementation.

- ER Diagram: ![ERD](https://github.com/jumaa0/TradeXpress-Business-Analysis/assets/126451388/3c8358eb-f4f2-470f-a26d-e1c64182f306)
- Database Schema: ![Schema](https://github.com/jumaa0/TradeXpress-Business-Analysis/assets/126451388/65fae6a7-3f50-4803-891e-985d6fe0bab4)

## Data Insertion

To populate the database, data was transformed using Microsoft Excel to meet the database's schema requirements. The import-export wizard in Microsoft SQL Server was then used to efficiently insert the transformed data into the database.

- Data Insertion Process: ![DB_Diagram](https://github.com/jumaa0/TradeXpress-Business-Analysis/assets/126451388/b553bd80-6b5e-43fb-8eea-126e451bfad5)

## ETL, Data Warehouse, and Modeling

The project involved the creation of a comprehensive ETL (Extract, Transform, Load) process to ensure the accuracy and reliability of the data. Dimension tables were created to provide context and detail for the analysis, while a fact table was established to capture key business metrics. The implementation of a star schema facilitated efficient querying and analysis of the data.

- Dimension Tables: ![DIMs](https://github.com/jumaa0/TradeXpress-Business-Analysis/assets/126451388/3689cfd6-5e5b-44c4-b850-c413d42c4326)
- Fact Table: ![FACT](https://github.com/jumaa0/TradeXpress-Business-Analysis/assets/126451388/706e518f-7ad0-45d7-b94c-5c297ffb2228)
- Star Schema: ![Star_schema](https://github.com/jumaa0/TradeXpress-Business-Analysis/assets/126451388/481634b0-84f5-4f9f-80bb-3deb180cea0a)

## Analysis and Reporting

The project utilized Tableau Public for analysis and reporting, providing an interactive and visually appealing overview of the business's performance. The Tableau dashboard allowed for in-depth exploration of key metrics and trends, enabling stakeholders to make informed decisions based on the data.

- Tableau Dashboard: ![Tableau Dashboard](https://github.com/jumaa0/TradeXpress-Business-Analysis/assets/126451388/aa06d4dd-02de-44d6-bdd9-dbd11a2a1527)

For a detailed analysis, please visit the [Tableau Public Dashboard](https://public.tableau.com/app/profile/ahmed.jumaa8179/viz/TradeXpress/Overview?publish=yes).
