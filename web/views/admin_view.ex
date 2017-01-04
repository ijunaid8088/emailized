defmodule Emailized.AdminView do
  use Emailized.Web, :view

  def render("index.json", %{admins: admins}) do
    %{data: render_many(admins, Emailized.AdminView, "admin.json")}
  end

  def render("show.json", %{admin: admin}) do
    %{data: render_one(admin, Emailized.AdminView, "admin.json")}
  end

  def render("admin.json", %{admin: admin}) do
    %{id: admin.id,
      firstname: admin.firstname,
      lastname: admin.lastname,
      username: admin.username,
      password: admin.password,
      is_admin: admin.is_admin,
      email: admin.email,
      country: admin.country,
      first_sign_in: admin.first_sign_in}
  end
end
