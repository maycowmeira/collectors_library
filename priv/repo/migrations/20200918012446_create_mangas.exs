defmodule Grapho.Repo.Migrations.CreateMangas do
  use Ecto.Migration

  def change do
    create table(:mangas) do
      add :title, :string
      add :number, :integer
      add :author, :string
      add :year, :integer

      timestamps()
    end

  end
end
