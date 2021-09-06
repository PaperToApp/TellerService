defmodule Watermelon.Banking.DummyDataGenerator do
  @account_names [
    "My Checking",
    "Jimmy Carter",
    "Ronald Reagan",
    "George H. W. Bush",
    "Bill Clinton",
    "George W. Bush",
    "Barack Obama",
    "Donald Trump"
  ]

  @merchants [
    "Uber",
    "Uber Eats",
    "Lyft",
    "Five Guys",
    "In-N-Out Burger",
    "Chick-Fil-A",
    "AM",
    "Apple",
    "Amazon",
    "Walmart",
    "Target",
    "Hotel Tonight",
    "Misson Ceviche",
    "The Caltrain",
    "Wingstop",
    "Slim Chickens",
    "CVS",
    "Duane Reade",
    "Walgreens",
    "McDonald's",
    "Burger King",
    "KFC",
    "Popeye's",
    "Shake Shack",
    "Lowe's",
    "Costco",
    "Kroger",
    "iTunes",
    "Spotify",
    "Best Buy",
    "TJ Maxx",
    "Aldi",
    "Dollar",
    "Macy",
    "H.E. Butt",
    "Dollar Tree",
    "Verizon Wireless",
    "Sprint PCS",
    "T-Mobi ",
    "Starbucks",
    "7-Eleven",
    "AT&T Wireless",
    "Rite Aid",
    "Nordstrom",
    "Ross",
    "Gap",
    "Bed, Bath & Beyond",
    "J.C. Penney",
    "Subway",
    "O'Reilly",
    "Wendy's",
    "Dunkin",
    "Petsmart",
    "Dick's Sporting Goods",
    "Sears",
    "Staples",
    "Domino's Pizza",
    "Piz",
    "Papa John's",
    "IKEA",
    "Office Depot",
    "Foot Locker",
    "Lids",
    "GameStop",
    "Seph",
    "Panera",
    "Williams-Sonoma",
    "Saks Fifth Avenue",
    "Chipotle Mexican Grill",
    "Neiman Marcus",
    "Jack In The Box",
    "Sonic",
    "Shell"
  ]

  @merchant_categories [
    "accommodation",
    "advertising",
    "bar",
    "charity",
    "clothing",
    "dining",
    "education",
    "entertainment",
    "fuel",
    "groceries",
    "health",
    "home",
    "income",
    "insurance",
    "office",
    "phone",
    "service",
    "shopping",
    "software",
    "sport",
    "tax",
    "transportation",
    "utilities"
  ]

  @institutions ["Chase", "Bank of America", "Wells Fargo", "Citibank", "Capital One"]

  # TODO put me in a struct
  def generate_account_resource do
    institution = take_random_institution()

    %{
      id: random_account_id(),
      enrollment_id: random_enrollment_number,
      currency: "USD",
      institution: %{
        id: name_to_snake_case(institution),
        name: institution
      },
      last_four: "",
      links: [],
      name: take_random_type(),
      subtype: "checking",
      type: "depository"
    }
  end

  def generate_transaction() do
    merchant_name = take_random_merchant()
    merchant_category = take_random_merchant_category()

    generate_transaction_with(%{
      account_id: random_account_id,
      merchant_name: merchant_name,
      merchant_category: merchant_category,
      transaction_date: random_date(),
    })
  end

  defp generate_transaction_with(
         %{
           account_id: account_id,
           merchant_name: merchant_name,
           merchant_category: merchant_category,
           transaction_date: transaction_date
         } = data
       ) do
    %{
      account_id: account_id,
      amount: random_amount(),
      id: random_transaction_number(),
      description: merchant_name,
      date: transaction_date,
      details: %{
        processing_status: "complete",
        category: merchant_category,
        counterparty: %{
          name: merchant_name,
          type: "organization"
        }
      },
      id: random_transaction_number(),
      status: "posted",
      type: "ach",
      links: []
    }
  end

  defp random_date() do
    # give transaction a date, witin last 90 days
    random_number_upto_90 = Enum.random(-1..-90)

    Date.utc_today
    |> Date.add(random_number_upto_90)
    |>  Date.to_iso8601
  end

  defp random_amount() do
    Enum.random(49..100)
  end

  defp take_random_type() do
    @account_names |> Enum.random()
  end

  defp take_random_merchant() do
    @merchants |> Enum.random()
  end

  defp take_random_merchant_category() do
    @merchant_categories |> Enum.random()
  end

  defp take_random_institution() do
    @institutions |> Enum.random()
  end

  defp random_transaction_number() do
    gerenerate_random_uniq("txn")
  end

  defp random_account_id() do
    gerenerate_random_uniq("acc")
  end

  defp random_enrollment_number() do
    gerenerate_random_uniq("enr")
  end

  defp gerenerate_random_uniq(prefix) do
    "#{prefix}_#{random_number}"
  end

  defp name_to_snake_case(name) do
    # name
    # |> Macro.underscore
    # |> String.replace(" ", "_")
    # didnt work for "Bank of America", resulting "bank of _america"
    name
    |> :string.lowercase()
    |> String.replace(" ", "_")
  end

  defp random_number() do
    :random.uniform(99_999_999_999_999)
    # :crypto.strong_rand_bytes(14)
    # add underscore, avoid for time constraint
    # we need just alpha numeric
  end
end
