defmodule HelloWeb.SampleLive do
  # use Phoenix.LiveView
   use HelloWeb, :live_view

  def render(assigns) do

    # Socket id: <%= @id %><br>
    # Session token: <%= @token %><br>

    ~L"""
    current_user.id: <%= @current_user.id %><br>
    """
  end

  def mount(_params, session, socket) do
  #   id = socket.id
  #   token = session["_csrf_token"]
  #   user_token = session["user_token"]
  #   IO.puts("*---------")
  #   IO.inspect(user_token)
  #   IO.puts("---------*")
  #   current_user = Hello.Accounts.get_user_by_session_token(user_token)
  #   {:ok, assign(socket, id: id, token: token, current_user: current_user)}

  {:ok, assign_current_user(socket, session)}
end

end
