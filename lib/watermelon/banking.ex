defmodule Watermelon.Banking do
  alias Watermelon.Banking.TellerService

  def list_accounts(token) do
    service.list_accounts(token)
  end

  def show_account(token, account_id) do
    service.account_by_id(token, account_id)
  end

  defp service() do
    Application.get_env(:watermelon, :teller_service)
  end
end
