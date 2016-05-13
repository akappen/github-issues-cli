defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [app: :issues,
     escript: escript_config,
     version: "0.0.1",
     name: "Issues",
     source_url: "https://github.com/akappen/github-issues-cli",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [
      httpoison: "~> 0.8",
      poison: "~> 1.5",
      ex_doc: "~> 0.11",
      earmark: ">= 0.0.0"
    ]
  end

  defp escript_config do
    [main_module: Issues.CLI]
  end
end
