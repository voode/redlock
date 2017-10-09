defmodule Redlock.Mixfile do
  use Mix.Project

  def project do
    [
      app: :redlock,
      version: "0.1.0",
      elixir: "~> 1.5",
      package: package(),
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :secure_random, :redix, :poolboy]
    ]
  end

  defp deps do
    [
      #{:ex_doc, "~> 0.15", only: :dev, runtime: false}
      {:redix, "~> 0.6.1"},
      {:poolboy, "~> 1.5"},
      {:secure_random, "~> 0.5.1"}
    ]
  end

  defp package() do
    [
      description: "Graceful shutdown support for Phoenix or plain Plug application",
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/lyokato/redlock",
        #"Docs"   => "https://hexdocs.pm/redlock"
      },
      maintainers: ["Lyo Kato"]
    ]
  end
end