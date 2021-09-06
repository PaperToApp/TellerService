defmodule Watermelon.Banking.TellerServiceImplementation do
  @behaviour Watermelon.Banking.TellerServiceBehavior

  @impl true
  def list_accounts() do
    {:ok, [1,2,3]}
  end

  @impl true
  def account_by_id(id) do
    id * id
  end

end
