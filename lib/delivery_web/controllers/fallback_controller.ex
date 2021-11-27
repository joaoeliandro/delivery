defmodule DeliveryWeb.FallbackController do
  use DeliveryWeb, :controller

  alias Delivery.Error
  alias DeliveryWeb.ErrorView

  def call(conn, {:error, %Error{status: status, reason: reason}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", result: reason)
  end
end
