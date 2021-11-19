defmodule Delivery do
  alias Delivery.Users.Create, as: UsersCreate

  defdelegate create_user(params), to: UsersCreate, as: :call
end
