defmodule MyElKbWeb.PageController do
  use MyElKbWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
