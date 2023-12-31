defmodule ElixirGistClone.GistsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirGistClone.Gists` context.
  """

  @doc """
  Generate a gist.
  """
  def gist_fixture(attrs \\ %{}) do
    {:ok, gist} =
      attrs
      |> Enum.into(%{
        name: "some name",
        description: "some description",
        markup_text: "some markup_text"
      })
      |> ElixirGistClone.Gists.create_gist()

    gist
  end

  @doc """
  Generate a saved_gist.
  """
  def saved_gist_fixture(attrs \\ %{}) do
    {:ok, saved_gist} =
      attrs
      |> Enum.into(%{

      })
      |> ElixirGistClone.Gists.create_saved_gist()

    saved_gist
  end
end
