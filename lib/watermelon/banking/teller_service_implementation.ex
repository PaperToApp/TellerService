defmodule Watermelon.Banking.TellerServiceImplementation do
  @behaviour Watermelon.Banking.TellerServiceBehavior

  @impl true
  def list_accounts(token) do
    {:ok, prepare_data_for_list_accounts(token)}
  end

  @impl true
  def account_by_id(token, id) do
    id * id
  end

  defp prepare_data_for_list_accounts(token) do
    accounts = data()
                      |> Keyword.get(String.to_atom(token))


    end

  def data(), do: [
    "9JeEWBfZvB": [
      %{
        account_number: "195050122896784957",
        currency: "USD",
        enrollment_id: "enr_64835289988525",
        id: "acc_90463823925598",
        institution: %{id: "chase", name: "Chase"},
        last_four: "4957",
        links: [],
        name: "My Checking",
        subtype: "checking",
        transactions: [
          %{
            account_id: "acc_90463823925598",
            amount: 76,
            date: "2021-09-07",
            description: "Sears",
            details: %{
              category: "transportation",
              counterparty: %{name: "Sears", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_84217036804255",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_90463823925598",
            amount: 88,
            date: "2021-09-06",
            description: "IKEA",
            details: %{
              category: "home",
              counterparty: %{name: "IKEA", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_4156060336719",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_90463823925598",
            amount: 75,
            date: "2021-09-05",
            description: "Office Depot",
            details: %{
              category: "sport",
              counterparty: %{name: "Office Depot", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_71548330108036",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_90463823925598",
            amount: 100,
            date: "2021-09-04",
            description: "iTunes",
            details: %{
              category: "tax",
              counterparty: %{name: "iTunes", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_3846487121560",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_90463823925598",
            amount: 61,
            date: "2021-09-03",
            description: "Jack In The Box",
            details: %{
              category: "tax",
              counterparty: %{name: "Jack In The Box", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_70491588772394",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_90463823925598",
            amount: 78,
            date: "2021-09-02",
            description: "Sonic",
            details: %{
              category: "advertising",
              counterparty: %{name: "Sonic", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_62728951730063",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_90463823925598",
            amount: 75,
            date: "2021-09-01",
            description: "Sprint PCS",
            details: %{
              category: "service",
              counterparty: %{name: "Sprint PCS", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_90677595921381",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_90463823925598",
            amount: 58,
            date: "2021-08-31",
            description: "Nordstrom",
            details: %{
              category: "service",
              counterparty: %{name: "Nordstrom", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_9870581266549",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_90463823925598",
            amount: 70,
            date: "2021-08-30",
            description: "7-Eleven",
            details: %{
              category: "software",
              counterparty: %{name: "7-Eleven", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_83695274438135",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_90463823925598",
            amount: 85,
            date: "2021-08-29",
            description: "Walmart",
            details: %{
              category: "insurance",
              counterparty: %{name: "Walmart", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_76503388359247",
            links: [],
            status: "posted",
            type: "ach"
          }
        ],
        type: "depository"
      },
      %{
        account_number: "31641796892056404",
        currency: "USD",
        enrollment_id: "enr_45867332878861",
        id: "acc_31155050262894",
        institution: %{id: "wells_fargo", name: "Wells Fargo"},
        last_four: "6404",
        links: [],
        name: "Bill Clinton",
        subtype: "checking",
        transactions: [
          %{
            account_id: "acc_31155050262894",
            amount: 89,
            date: "2021-09-07",
            description: "Verizon Wireless",
            details: %{
              category: "dining",
              counterparty: %{name: "Verizon Wireless", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_41337976300567",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_31155050262894",
            amount: 69,
            date: "2021-09-06",
            description: "Neiman Marcus",
            details: %{
              category: "charity",
              counterparty: %{name: "Neiman Marcus", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_27210341801996",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_31155050262894",
            amount: 52,
            date: "2021-09-05",
            description: "Wingstop",
            details: %{
              category: "office",
              counterparty: %{name: "Wingstop", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_91516715127006",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_31155050262894",
            amount: 98,
            date: "2021-09-04",
            description: "Sears",
            details: %{
              category: "software",
              counterparty: %{name: "Sears", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_62397605897267",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_31155050262894",
            amount: 69,
            date: "2021-09-03",
            description: "Lids",
            details: %{
              category: "bar",
              counterparty: %{name: "Lids", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_41762470552598",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_31155050262894",
            amount: 49,
            date: "2021-09-02",
            description: "Piz",
            details: %{
              category: "advertising",
              counterparty: %{name: "Piz", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_48232334240397",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_31155050262894",
            amount: 81,
            date: "2021-09-01",
            description: "Dunkin",
            details: %{
              category: "service",
              counterparty: %{name: "Dunkin", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_45564266519930",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_31155050262894",
            amount: 60,
            date: "2021-08-31",
            description: "Duane Reade",
            details: %{
              category: "home",
              counterparty: %{name: "Duane Reade", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_22023116415764",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_31155050262894",
            amount: 87,
            date: "2021-08-30",
            description: "AM",
            details: %{
              category: "insurance",
              counterparty: %{name: "AM", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_96338939600578",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_31155050262894",
            amount: 89,
            date: "2021-08-29",
            description: "Nordstrom",
            details: %{
              category: "fuel",
              counterparty: %{name: "Nordstrom", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_21822009945434",
            links: [],
            status: "posted",
            type: "ach"
          }
        ],
        type: "depository"
      }
    ],
    PyfNSRGlNY: [
      %{
        account_number: "128975790170463774",
        currency: "USD",
        enrollment_id: "enr_28375348160270",
        id: "acc_41061334918608",
        institution: %{id: "bank_of_america", name: "Bank of America"},
        last_four: "3774",
        links: [],
        name: "Bill Clinton",
        subtype: "checking",
        transactions: [
          %{
            account_id: "acc_41061334918608",
            amount: 52,
            date: "2021-09-07",
            description: "Spotify",
            details: %{
              category: "health",
              counterparty: %{name: "Spotify", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_8193740371819",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_41061334918608",
            amount: 75,
            date: "2021-09-06",
            description: "Neiman Marcus",
            details: %{
              category: "office",
              counterparty: %{name: "Neiman Marcus", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_94905414159042",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_41061334918608",
            amount: 94,
            date: "2021-09-05",
            description: "Dollar Tree",
            details: %{
              category: "tax",
              counterparty: %{name: "Dollar Tree", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_84634234894529",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_41061334918608",
            amount: 81,
            date: "2021-09-04",
            description: "Office Depot",
            details: %{
              category: "income",
              counterparty: %{name: "Office Depot", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_4321539497360",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_41061334918608",
            amount: 72,
            date: "2021-09-03",
            description: "The Caltrain",
            details: %{
              category: "accommodation",
              counterparty: %{name: "The Caltrain", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_28730476581858",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_41061334918608",
            amount: 61,
            date: "2021-09-02",
            description: "Lids",
            details: %{
              category: "sport",
              counterparty: %{name: "Lids", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_88513222891006",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_41061334918608",
            amount: 74,
            date: "2021-09-01",
            description: "Chipotle Mexican Grill",
            details: %{
              category: "home",
              counterparty: %{
                name: "Chipotle Mexican Grill",
                type: "organization"
              },
              processing_status: "complete"
            },
            id: "txn_87922158266562",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_41061334918608",
            amount: 91,
            date: "2021-08-31",
            description: "Walgreens",
            details: %{
              category: "tax",
              counterparty: %{name: "Walgreens", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_84623646432253",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_41061334918608",
            amount: 70,
            date: "2021-08-30",
            description: "Staples",
            details: %{
              category: "clothing",
              counterparty: %{name: "Staples", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_49737221558697",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_41061334918608",
            amount: 69,
            date: "2021-08-29",
            description: "AT&T Wireless",
            details: %{
              category: "sport",
              counterparty: %{name: "AT&T Wireless", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_41701436510037",
            links: [],
            status: "posted",
            type: "ach"
          }
        ],
        type: "depository"
      },
      %{
        account_number: "65220880688233016",
        currency: "USD",
        enrollment_id: "enr_58356851461916",
        id: "acc_97852252941654",
        institution: %{id: "capital_one", name: "Capital One"},
        last_four: "3016",
        links: [],
        name: "Barack Obama",
        subtype: "checking",
        transactions: [
          %{
            account_id: "acc_97852252941654",
            amount: 99,
            date: "2021-09-07",
            description: "Lyft",
            details: %{
              category: "transportation",
              counterparty: %{name: "Lyft", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_47221855312930",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_97852252941654",
            amount: 78,
            date: "2021-09-06",
            description: "Dunkin",
            details: %{
              category: "software",
              counterparty: %{name: "Dunkin", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_61853476030985",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_97852252941654",
            amount: 77,
            date: "2021-09-05",
            description: "Shake Shack",
            details: %{
              category: "software",
              counterparty: %{name: "Shake Shack", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_75103335293807",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_97852252941654",
            amount: 75,
            date: "2021-09-04",
            description: "GameStop",
            details: %{
              category: "software",
              counterparty: %{name: "GameStop", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_84112647123857",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_97852252941654",
            amount: 69,
            date: "2021-09-03",
            description: "CVS",
            details: %{
              category: "clothing",
              counterparty: %{name: "CVS", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_81915153531697",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_97852252941654",
            amount: 88,
            date: "2021-09-02",
            description: "KFC",
            details: %{
              category: "charity",
              counterparty: %{name: "KFC", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_20498023345708",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_97852252941654",
            amount: 84,
            date: "2021-09-01",
            description: "Sprint PCS",
            details: %{
              category: "shopping",
              counterparty: %{name: "Sprint PCS", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_31186943971939",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_97852252941654",
            amount: 96,
            date: "2021-08-31",
            description: "Williams-Sonoma",
            details: %{
              category: "sport",
              counterparty: %{name: "Williams-Sonoma", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_21789336641454",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_97852252941654",
            amount: 56,
            date: "2021-08-30",
            description: "Verizon Wireless",
            details: %{
              category: "health",
              counterparty: %{name: "Verizon Wireless", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_571151853653",
            links: [],
            status: "posted",
            type: "ach"
          },
          %{
            account_id: "acc_97852252941654",
            amount: 68,
            date: "2021-08-29",
            description: "Papa John's",
            details: %{
              category: "software",
              counterparty: %{name: "Papa John's", type: "organization"},
              processing_status: "complete"
            },
            id: "txn_5306545768392",
            links: [],
            status: "posted",
            type: "ach"
          }
        ],
        type: "depository"
      }
    ]
  ]end
