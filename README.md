# bike-sales-sql-project
## Objective
The goal of this project was to understand what factors actually influence whether a customer buys a bike or not.
## Approach

I started with Excel, where I explored the data from multiple angles:
- Income vs Purchase
- Gender vs Purchase
- Commute Distance vs Purchase
- Age Range vs Purchase
- Number of Children vs Purchase
- Home Ownership vs Purchase

This gave me a general idea of patterns, but it was not always clear which factor was truly important.

Then I used SQL to go deeper into the data. With SQL, I was able to:
- Group data more clearly
- Compare "Yes" vs "No" counts directly
- Re-run and adjust analysis easily
- Combine multiple factors for better understanding

## Key Observations

- Income did not show a strong or consistent pattern in influencing bike purchases.

- Age showed that middle-aged people tend to buy more bikes, but it was not a very strong or reliable factor because it did not show a clear behavioral pattern.

- Commute distance turned out to be much more reliable:
  - Customers with shorter commute distances (0–2 miles) had higher purchase counts
  - As commute distance increased, bike purchases consistently decreased
  - This created a clear top-to-bottom pattern, which made it easier to trust as a decision factor

## Deeper Insight Using SQL

By combining age range and commute distance, it became clear that:

Customers who are middle-aged and have short commute distances are the most likely to purchase bikes.

This kind of combined insight was much easier to identify using SQL compared to Excel.

## Conclusion

Even though age initially looked important, it is not strong enough on its own.

Commute distance is a more reliable factor because it shows a consistent pattern where purchase behavior changes as distance increases.

## What I Learned

- Initial assumptions (like income being important) can be wrong
- Just looking at data once is not enough — it needs to be tested from different angles
- SQL helps in identifying clearer patterns compared to Excel
- Combining multiple factors gives better insights than analyzing them separately
