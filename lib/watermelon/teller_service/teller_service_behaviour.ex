defmodule Watermelon.TellerService.Behavior do

  @callback list_accounts() :: [String.t]
  @callback account_by_id(String.t) :: {:ok, term} | {:error, String.t}
end
