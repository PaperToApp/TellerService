defmodule WatermelonWeb.TellerView do
  use WatermelonWeb, :view
  alias WatermelonWeb.TellerView

  def render("accounts.json", %{accounts: accounts}) do
    %{data: render_many(accounts, TellerView, "account.json")}
  #   %{
  #     account_number: "123",
  #     enrollment_id: "account.enrollment_id"
  # }
  end

  def render("account.json", %{account: account}) do
    %{
      account_number: "123",
      enrollment_id: "account.enrollment_id"
  }
  end

end
