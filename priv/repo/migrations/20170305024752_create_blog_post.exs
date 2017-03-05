defmodule ApiBlog.Repo.Migrations.CreateBlogPost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :blog_title, :string
      add :blog_post_body, :string

      timestamps
    end

    create unique_index(:posts, [:blog_title])
  end
end
