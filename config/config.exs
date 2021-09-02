# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :watermelon,
  ecto_repos: [Watermelon.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :watermelon, WatermelonWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "X9Cp6y1fuXh94dd+GpJGGS088NHGjILm/lUXVPOFkktoDQxr9r5wMEd4egrnAuXU",
  render_errors: [view: WatermelonWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Watermelon.PubSub,
  live_view: [signing_salt: "w9wZbdBI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
