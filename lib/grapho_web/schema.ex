defmodule Grapho.Schema do
  use Absinthe.Schema

  import_types Grapho.Schema.DataTypes

  query do
    @desc "Get a list of mangas"
    field :mangas, list_of(:manga) do
      resolve fn _parent, _args, _resolution ->
        {:ok, Grapho.Collectables.list_mangas()}
      end
    end
  end
end
