defmodule WatermelonWeb.PageController do
  use WatermelonWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
