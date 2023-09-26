defmodule ElixirGistClone.Repo do
  use Ecto.Repo,
    otp_app: :elixir_gist_clone,
    adapter: Ecto.Adapters.Postgres
end
