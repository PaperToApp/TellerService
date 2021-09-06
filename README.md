# Watermelon

Wanted a random name for project, so I choose a fruit, watermelon.

The Roadmap.

- create generators to generate random data like accounts, transactions, etc.
- create a fixed master data set using above generators.
- when querying, the data will be queryied from above dataset, purely with elixir.
- I create a behaviour for now, so we can switch to Repo anytime in future.
- create structs and implement them.
- make these functions called from controllers to return JSON.
- implement basic auth to check for token.
- implement phoenix dashboard to show analytics, number of count. This needs a database. To be discussed.
- add test for results are same.