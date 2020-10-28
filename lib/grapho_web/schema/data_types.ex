defmodule Grapho.Schema.DataTypes do
  use Absinthe.Schema.Notation

  object :manga do
    field :id, :id
    field :title, :string
    field :author, :string
    field :number, :string
    field :year, :string
  end
end
