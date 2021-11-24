defmodule Delivery do
  alias Delivery.Users.Create, as: UsersCreate
  alias Delivery.Users.Get, as: UserGet
  alias Delivery.Users.Delete, as: UserDelete

  defdelegate create_user(params), to: UsersCreate, as: :call
  defdelegate get_user_by_id(id), to: UserGet, as: :by_id
  defdelegate delete_by_id(id), to: UserDelete, as: :call
end
