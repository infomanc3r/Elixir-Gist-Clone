defmodule ElixirGistCloneWeb.PageController do
  use ElixirGistCloneWeb, :controller

  def home(conn, _params) do
    redirect(conn, to: "/create")
  end
end
