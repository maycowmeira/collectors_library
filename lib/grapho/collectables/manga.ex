defmodule Grapho.Collectables.Manga do
  use Ecto.Schema
  import Ecto.Changeset

  schema "mangas" do
    field :author, :string
    field :number, :integer
    field :title, :string
    field :year, :integer

    timestamps()
  end

  @doc false
  def changeset(manga, attrs) do
    manga
    |> cast(attrs, [:title, :number, :author, :year])
    |> validate_required([:title, :number, :author, :year])
  end
end
