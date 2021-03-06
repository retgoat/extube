defmodule Extube.Mixfile do
  use Mix.Project

  def project do
    [app: :extube,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     package: [
       contributors: ["Paul E Lowndes"],
       licenses: ["MIT"],
       links: %{github: "https://github.com/gtcode/extube"}
     ],
     description: """
     Elixir Youtube API v3 Client
     """]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :inets, :ssl, :httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:exvcr, "~> 0.4.0", only: [:test]},
     {:poison, "~> 1.5.2"},
     {:httpoison, "~> 0.8.1"}
    ]
  end
end
