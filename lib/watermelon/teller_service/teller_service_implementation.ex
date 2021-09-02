defmodule Watermelon.TellerService.Implementation do
  @behaviour Watermelon.TellerService.Behavior

  @impl true
  def list_accounts() do
    [1,2,3]
  end

  @impl true
  def account_by_id(id) do
    id * id
  end

end
