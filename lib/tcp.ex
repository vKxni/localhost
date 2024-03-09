defmodule Localhost.TCP do
  use ThousandIsland.Handler
  alias Localhost.Time

  @impl ThousandIsland.Handler
  def handle_data(_data, socket, state) do
    debug()

    ThousandIsland.Socket.send(socket, Time.my_time())
    {:close, state}
  end

  defp debug(), do: ThousandIsland.Logger.attach_logger(:debug)
end
