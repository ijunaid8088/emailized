defmodule Emailized.Router do
  use Emailized.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Emailized do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    # resources "/admins", AdminController
  end

  # Other scopes may use custom stacks.
  scope "/api", Emailized do
    pipe_through :api

    post "/admin", AdminController, :create
  end
end
