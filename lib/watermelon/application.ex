defmodule Watermelon.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Watermelon.Repo,
      # Start the Telemetry supervisor
      WatermelonWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Watermelon.PubSub},
      # Start the Endpoint (http/https)
      WatermelonWeb.Endpoint
      # Start a worker by calling: Watermelon.Worker.start_link(arg)
      # {Watermelon.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Watermelon.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    WatermelonWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
