defmodule Watermelon.BankingTest do
  alias Watermelon.Banking
  use ExUnit.Case, async: true

  # use TellerServiceMock, async: true

  setup do
    {:ok, account_number: "195050122896784957", token: "9JeEWBfZvB"}
  end

  describe "list_accounts/0" do
    # setup :list_accounts

    test "list down the accounts", state do
      {:ok, accounts} = Banking.list_accounts(state[:token])
    end

    test "list account of account id", state do
      {:ok, account} = Banking.show_account(state[:token], state[:account_number])
      assert account[:account_number] == state[:account_number]
    end
  end
end
