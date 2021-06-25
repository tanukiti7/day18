defmodule HelloWeb.LiveHelpers do
  import Phoenix.LiveView
  alias Hello.Accounts, as: Ac

  def assign_current_user(socket, session) do
    assign_new(socket, :current_user, fn ->
       Ac.get_user_by_session_token(session["user_token"]) end)
  end
end
