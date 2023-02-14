# Hotel Booking Data Analysis
I used SQL to develop a database and analyse hotel booking data, after which I transferred to PowerBi for visualisation.

## Hotel Booking Data Analysis
Analysing your hotel booking data is necessary to draw various insights about your revenue and seasonality.

## The stakeholders have the following questions:
- Is our hotel revenue growing by year? – There are two hotel types so it would be good to segment revenue by hotel type

- Should we increase our parking lot size? – We want to understand if there is a trend in guests with personal cars

- What trends can we see in the data? – Focus on average daily rate and guests to explore seasonality

## Data Collection:
The dataset is Hotel Revenue Historical Full Dataset by Gaelim Holland, which can be accessed here "https://absentdata.com/hotel_revenue_historical_full/#google_vignette"
It has 32 columns, 100,756 rows and 5 sheets which I downloaded in Excel format.

## Build Database
I created a database on SQL and imported the hotel revenue data.

## Analyse and Retrieve Data with SQL
I started by exploring the different tables in the dataset
![SQL Screenshot1](https://user-images.githubusercontent.com/116668601/218734430-899590e0-53f4-4c5f-bc7a-3da7b3c95f19.png)

Then, I combined all the data from the three years into one big table named **Hotels** using the Union Statement.
![SQL Screenshot2](https://user-images.githubusercontent.com/116668601/218734580-1f9182e8-0523-4bdb-93e7-72fa9da884df.png)

After that, I explored the data further and finally used the _LEFTJOIN_ statement to add the sheets containing the market segment and meal cost to the **Hotels** table.
![SQL Screenshot3](https://user-images.githubusercontent.com/116668601/218734719-46888b29-9274-48c9-81ab-abab6f2a3f50.png)


## Connect PowerBi to Database
I connected the database to PowerBi for visualisation using the last script shown above. In PowerBi, I created the Revenue column by multiplying the total rooms booked by the average daily rate and discount.

## Data Visualisation in PowerBi
The following dashboard answers the questions presented by the stakeholders.
![Data Visualisation In PowerBi](https://user-images.githubusercontent.com/116668601/218734918-79132696-69cd-4993-ae95-62c4b308ce58.png)

## Data Insights (Answering the Stakeholders Qestions):
- The hotel revenue is growing by year.
- No, the parking lot size should not be increased because the parking percentage is quite low and neutral. There is not enough evidence to decide whether or not the parking lot should be increased.
- There are other trends in the data such as the average daily rate trend. It shows an upward trend.

## Limitations:
There are no limitations for now. However, I hope to analyse the data more effectively.
