defmodule ApiBlog.PostController do
  use ApiBlog.Web, :controller

  alias ApiBlog.Post
  alias ApiBlog.Repo


  def index(conn, _params) do
    # posts = [
    #   %ApiBlog.Post{
    #     id: 1,
    #     blog_title: "Example Elixir Blog Post 1",
    #     blog_post_body: "Does everybody know that pig named Lorem Ipsum? She's a disgusting pig, right? The best taco bowls are made in Trump Tower Grill. Lorem Ispum is a choke artist. It chokes!"
    #   },
    #    %ApiBlog.Post{
    #     id: 2,
    #     blog_title: "Example Elixir Blog Post 2",
    #     blog_post_body: "Number 2 Post I think the only difference between me and the other placeholder text is that I’m more honest and my words are more beautiful. Look at that text! Would anyone use that? Can you imagine that, the text of your next webpage?!? She's a disgusting pig, right? The best taco bowls are made in Trump Tower Grill. Lorem Ispum is a choke artist. It chokes!"
    #   },
    # ]

    # posts = Repo.all(ApiBlog.Post)

    posts = Repo.all(Post)
  
    json conn, posts
  end

  # def show(conn, %{"id" => id}) do
  #   posts = Repo.get(ApiBlog.Post, String.to_integer(id))

  #   json conn, posts
  # end

end
