defmodule Emailized.AdminTest do
  use Emailized.ModelCase

  alias Emailized.Admin

  @valid_attrs %{country: "some content", email: "some content", first_sign_in: true, firstname: "some content", is_admin: true, lastname: "some content", password: "some content", username: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Admin.changeset(%Admin{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Admin.changeset(%Admin{}, @invalid_attrs)
    refute changeset.valid?
  end
end
