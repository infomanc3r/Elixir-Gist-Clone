defmodule ElixirGistClone.Support.Factory do
  use ExMachina.Ecto, repo: ElixirGistClone.Repo
  alias ElixirGistClone.Accounts.User
  alias ElixirGistClone.Gists.Gist

  def user_factory do
    %User{
      email: Faker.Internet.email(),
      password: Faker.Internet.slug(),
      confirmed_at: DateTime.utc_now()
    }
  end

  def gist_factory do
    %Gist{
      name: Faker.Lorem.word(),
      description: Faker.Lorem.sentence(),
      markup_text: Faker.Lorem.paragraph(),
      user: build(:user)
    }
  end

end
