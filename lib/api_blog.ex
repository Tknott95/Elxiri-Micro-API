defmodule ApiBlog do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the Ecto repository
      supervisor(ApiBlog.Repo, []),
      # Start the endpoint when the application starts
      supervisor(ApiBlog.Endpoint, []),
      # Start your own worker by calling: ApiBlog.Worker.start_link(arg1, arg2, arg3)
      # worker(ApiBlog.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ApiBlog.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ApiBlog.Endpoint.config_change(changed, removed)
    :ok
  end

  #  def all(ApiBlog.Post) do
  #    [
  #     %ApiBlog.Post{
  #       id: 1,
  #       blog_title: "Example Elixir Blog Post 1",
  #       blog_post_body: "Does everybody know that pig named Lorem Ipsum? She's a disgusting pig, right? The best taco bowls are made in Trump Tower Grill. Lorem Ispum is a choke artist. It chokes!"},
  #     %ApiBlog.Post{
  #       id: 2,
  #       blog_title: "Example Elixir Blog Post @",
  #       blog_post_body: "Number 2 Post I think the only difference between me and the other placeholder text is that I’m more honest and my words are more beautiful. Look at that text! Would anyone use that? Can you imagine that, the text of your next webpage?!? She's a disgusting pig right? The best taco bowls are made in Trump Tower Grill. Lorem Ispum is a choke artist. It chokes!"},
  #    ]
  #  end
end
