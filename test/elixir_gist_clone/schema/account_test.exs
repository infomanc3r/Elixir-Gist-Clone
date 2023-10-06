defmodule ElixirGistClone.Schema.AccountTest do
  use ExUnit.Case
  alias ElixirGistClone.Accounts.User

  @expected_fields_with_types [
    {:id, :binary_id},
    {:email, :string},
    {:hashed_password, :string},
    {:confirmed_at, :naive_datetime},
    {:inserted_at, :naive_datetime},
    {:updated_at, :naive_datetime}
  ]

  describe "fields and types" do
    @tag custom: true
    test "has expected fields with types" do
      actual_fields_with_types =
        for field <- User.__schema__(:fields) do
          type = User.__schema__(:type, field)
          {field, type}
        end

      assert actual_fields_with_types == @expected_fields_with_types
    end
  end

end
