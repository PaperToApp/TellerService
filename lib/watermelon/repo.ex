defmodule Watermelon.Repo do
  use Ecto.Repo,
    otp_app: :watermelon,
    adapter: Ecto.Adapters.Postgres
end
