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

  def generate_token_aaccount_transactions() do
    generate_tat(2, 2, 3)
  end

  defp generate_tat(token_count \\ 2, account_count \\ 5, transaction_count \\ 5) do
    for _i <- 1..token_count do
      %{
        generate_urlsafe_token() =>
          for _j <- 1..account_count do
            institution = take_random_institution()
            account_id = random_account_id()
            {account_number, last_four} = generate_random_account()

            transactions =
              for k <- 1..transaction_count,
                  do:
                    generate_transaction_with(%{
                      account_id: account_id,
                      merchant_name: take_random_merchant(),
                      merchant_category: take_random_merchant_category(),
                      transaction_date: generate_date_for_day(k),
                      transaction_amount: random_amount()
                    })

            %{
              id: account_id,
              transactions: transactions,
              enrollment_id: random_enrollment_number(),
              currency: "USD",
              institution: %{
                id: name_to_snake_case(institution),
                name: institution
              },
              account_number: account_number,
              last_four: last_four,
              links: [],
              name: take_random_type(),
              subtype: "checking",
              type: "depository"
            }
          end
      }
    end
  end

  def generate_data_for_2_accounts_10_days() do
    generate_tat(2, 2, 10)
  end

  # TODO put me in a struct
  def generate_account_resource do
    generate_tat(2, 2, 10)
  end

  def generate_transaction() do
    merchant_name = take_random_merchant()
    merchant_category = take_random_merchant_category()

    generate_transaction_with(%{
      account_id: random_account_id(),
      merchant_name: merchant_name,
      merchant_category: merchant_category,
      transaction_date: random_date(),
      transaction_amount: random_amount()
    })
  end

  defp generate_transaction_with(
         %{
           account_id: account_id,
           merchant_name: merchant_name,
           merchant_category: merchant_category,
           transaction_date: transaction_date,
           transaction_amount: transaction_amount
         } = _data
       ) do
    %{
      account_id: account_id,
      amount: transaction_amount,
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

    Date.utc_today()
    |> Date.add(random_number_upto_90)
    |> Date.to_iso8601()
  end

  defp generate_date_for_day(number) do
    Date.utc_today()
    |> Date.add(number * -1)
    |> Date.to_iso8601()
  end

  defp generate_urlsafe_token() do
    length = 10

    :crypto.strong_rand_bytes(length)
    |> Base.url_encode64()
    |> binary_part(0, length)
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

  defp generate_random_account() do
    four_digit_number = Enum.random(1000..9999) |> to_string
    {random_with_suffix(four_digit_number), four_digit_number}
  end

  defp random_transaction_number() do
    random_with_prefix("txn")
  end

  defp random_account_id() do
    random_with_prefix("acc")
  end

  defp random_enrollment_number() do
    random_with_prefix("enr")
  end

  defp random_with_suffix(suffix) do
    "#{random_number()}#{suffix}"
  end

  defp random_with_prefix(prefix) do
    "#{prefix}_#{random_number()}"
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
