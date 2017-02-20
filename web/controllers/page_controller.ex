defmodule PresencePhoenix.PageController do
  use PresencePhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
