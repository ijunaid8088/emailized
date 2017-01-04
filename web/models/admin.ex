defmodule Emailized.Admin do
  use Emailized.Web, :model

  schema "admins" do
    field :firstname, :string
    field :lastname, :string
    field :username, :string
    field :password, :string
    field :is_admin, :boolean, default: false
    field :email, :string
    field :country, :string
    field :first_sign_in, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:firstname, :lastname, :username, :password, :is_admin, :email, :country, :first_sign_in])
    |> validate_required([:firstname, :lastname, :username, :password, :is_admin, :email, :country, :first_sign_in])
  end
end
