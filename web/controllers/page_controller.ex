defmodule Emailized.PageController do
  use Emailized.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
