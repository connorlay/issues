defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [app: :issues,
     version: "0.0.1",
     elixir: "~> 1.2",
     escript: escript_config,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [
      { :httpoison, "~> 0.8.0" },
      { :jsx,       "~> 2.0"   }
    ]
  end

  def escript_config do
    [ main_module: Issues.CLI ]
  end
end
