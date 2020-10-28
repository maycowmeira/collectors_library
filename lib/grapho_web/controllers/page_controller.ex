defmodule GraphoWeb.PageController do
  use GraphoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
