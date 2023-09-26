defmodule ElixirGistClone.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ElixirGistCloneWeb.Telemetry,
      # Start the Ecto repository
      ElixirGistClone.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: ElixirGistClone.PubSub},
      # Start Finch
      {Finch, name: ElixirGistClone.Finch},
      # Start the Endpoint (http/https)
      ElixirGistCloneWeb.Endpoint
      # Start a worker by calling: ElixirGistClone.Worker.start_link(arg)
      # {ElixirGistClone.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElixirGistClone.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ElixirGistCloneWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
