defmodule ExqliteTestingWeb.PageController do
  use ExqliteTestingWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
