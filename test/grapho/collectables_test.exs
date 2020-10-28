defmodule Grapho.CollectablesTest do
  use Grapho.DataCase

  alias Grapho.Collectables

  describe "mangas" do
    alias Grapho.Collectables.Manga

    @valid_attrs %{author: "some author", number: 42, title: "some title", year: 42}
    @update_attrs %{author: "some updated author", number: 43, title: "some updated title", year: 43}
    @invalid_attrs %{author: nil, number: nil, title: nil, year: nil}

    def manga_fixture(attrs \\ %{}) do
      {:ok, manga} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Collectables.create_manga()

      manga
    end

    test "list_mangas/0 returns all mangas" do
      manga = manga_fixture()
      assert Collectables.list_mangas() == [manga]
    end

    test "get_manga!/1 returns the manga with given id" do
      manga = manga_fixture()
      assert Collectables.get_manga!(manga.id) == manga
    end

    test "create_manga/1 with valid data creates a manga" do
      assert {:ok, %Manga{} = manga} = Collectables.create_manga(@valid_attrs)
      assert manga.author == "some author"
      assert manga.number == 42
      assert manga.title == "some title"
      assert manga.year == 42
    end

    test "create_manga/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Collectables.create_manga(@invalid_attrs)
    end

    test "update_manga/2 with valid data updates the manga" do
      manga = manga_fixture()
      assert {:ok, %Manga{} = manga} = Collectables.update_manga(manga, @update_attrs)
      assert manga.author == "some updated author"
      assert manga.number == 43
      assert manga.title == "some updated title"
      assert manga.year == 43
    end

    test "update_manga/2 with invalid data returns error changeset" do
      manga = manga_fixture()
      assert {:error, %Ecto.Changeset{}} = Collectables.update_manga(manga, @invalid_attrs)
      assert manga == Collectables.get_manga!(manga.id)
    end

    test "delete_manga/1 deletes the manga" do
      manga = manga_fixture()
      assert {:ok, %Manga{}} = Collectables.delete_manga(manga)
      assert_raise Ecto.NoResultsError, fn -> Collectables.get_manga!(manga.id) end
    end

    test "change_manga/1 returns a manga changeset" do
      manga = manga_fixture()
      assert %Ecto.Changeset{} = Collectables.change_manga(manga)
    end
  end
end
