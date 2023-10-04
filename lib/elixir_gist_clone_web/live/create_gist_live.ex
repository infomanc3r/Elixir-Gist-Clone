defmodule ElixirGistCloneWeb.CreateGistLive do
  use ElixirGistCloneWeb, :live_view
  import Phoenix.HTML.Form
  alias ElixirGistClone.{Gists, Gists.Gist}

  def mount(_params, _session, socket) do
    socket = assign(
      socket,
      form: to_form(Gists.change_gist(%Gist{}))
    )

    {:ok, socket}
  end

end
