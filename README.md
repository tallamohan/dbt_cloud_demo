# Ecommerce Data:

The dbt project converts raw data from an app database into a dimensional model, preparing customer and purchase data for analytics. 
The data pipeline is composed of multiple stages, beginning with the ingestion of raw data through dbt seed.
From these raw data sources, several staging tables are generated: `stg_customers`, `stg_products`, and `stg_purchases`. These tables hold cleaned and structured data on customers, products, and transactions, respectively, which supports analysis and reporting. The `customer_demographics` table summarizes customer data such as age and nationality, facilitating demographic analysis and targeted marketing efforts. The `product_popularity` table aggregates data on product purchase frequency, delivering insights into product demand to inform inventory and marketing strategies. Finally, the `purchase_patterns` table examines customer purchase behavior over time, aiding in understanding buying trends and optimizing the customer journey.


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
