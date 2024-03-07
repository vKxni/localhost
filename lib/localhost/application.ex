defmodule Localhost.Application do
  # https://hexdocs.pm/elixir/Application.html
  use Application

  @impl true
  def start(_type, _args) do
    tcp_port = String.to_integer(System.get_env("PORT") || "9000")

    children = [
      # TCP server
      {ThousandIsland, port: tcp_port, handler_module: Localhost.TCP},
      # Debug log
      Supervisor.child_spec({Task, fn -> Localhost.Util.start_log() end}, id: :start_log)
    ]

    # https://hexdocs.pm/elixir/Supervisor.html
    opts = [strategy: :one_for_one, name: Localhost.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
