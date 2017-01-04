defmodule Emailized.Repo.Migrations.CreateAdmin do
  use Ecto.Migration

  def change do
    create table(:admins) do
      add :firstname, :string
      add :lastname, :string
      add :username, :string
      add :password, :string
      add :is_admin, :boolean, default: false, null: false
      add :email, :string
      add :country, :string
      add :first_sign_in, :boolean, default: false, null: false

      timestamps()
    end

  end
end
