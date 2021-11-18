defmodule DeliveryWeb.WelcomeController do
  use DeliveryWeb, :controller

  def index(conn, params) do
    conn
    |> put_status(:ok)
    |> json(%{message: "Welcome"})
  end
end
