defmodule Watermelon.Banking.TellerServiceBehavior do
  @moduledoc false
  @callback list_accounts(String.t) :: [String.t]
  @callback account_by_id(String.t, String.t) :: {:ok, term} | {:error, String.t}
end
