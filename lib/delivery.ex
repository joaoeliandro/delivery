defmodule Delivery do
  alias Delivery.Users.Create, as: UsersCreate
  alias Delivery.Users.Get, as: UserGet

  defdelegate create_user(params), to: UsersCreate, as: :call
  defdelegate get_user_by_id(id), to: UserGet, as: :by_id
end
