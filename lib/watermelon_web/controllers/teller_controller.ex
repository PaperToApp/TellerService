defmodule WatermelonWeb.TellerController do
  use WatermelonWeb, :controller
  alias Watermelon.Banking

  def accounts(conn, params) do
    {:ok, accounts} = Banking.list_accounts(params["token"])

    render(conn, "accounts.json", accounts: accounts)
  end

end
