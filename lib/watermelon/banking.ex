defmodule Watermelon.Banking do
  alias Watermelon.Banking.TellerService

  def list_accounts(token) do
    service.list_accounts(token)
  end

  defp service() do
    Application.get_env(:watermelon, :teller_service)
  end
end
