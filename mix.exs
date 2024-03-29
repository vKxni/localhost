defmodule Localhost.MixProject do
  use Mix.Project

  def project do
    [
      app: :localhost,
      description: "View the (local) time through a local(host) telnet.",
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Localhost.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
     {:thousand_island, "~> 1.3.5"},
     {:timex, "~> 3.7.11"}
    ]
  end
end
