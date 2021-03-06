defmodule DeliveryWeb.UsersView do
  use DeliveryWeb, :view

  alias Delivery.User

  def render("create.json", %{user: %User{} = user}) do
    %{
      user: user
    }
  end

  def render("user.json", %{user: %User{} = user}) do
    %{
      user: user
    }
  end
end
