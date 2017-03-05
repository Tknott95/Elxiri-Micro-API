defmodule ApiBlog.Router do
  use ApiBlog.Web, :router

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

  # scope "/", ApiBlog do
  #   pipe_through :browser # Use the default browser stack

  #   get "/", PageController, :index
  # end

  # Other scopes may use custom stacks.
  scope "/api", ApiBlog do
    pipe_through :api
    
    get "/posts", PostController, :index
    get "/posts/:id", PostController, :show
  end

end
