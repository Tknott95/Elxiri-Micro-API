defmodule ApiBlog.Post do
    use ApiBlog.Web, :model

    schema "posts" do
        field :blog_title, :string
        field :blog_post_body, :string

        timestamps
    end
end