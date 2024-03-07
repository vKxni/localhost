defmodule Localhost.TCP do
  use ThousandIsland.Handler

  @impl ThousandIsland.Handler
  def handle_data(_data, socket, state) do
    ThousandIsland.Socket.send(socket, "HTTP/1.1 200 OK\r\n\r\nHello, User!")
    {:close, state}
  end
end
