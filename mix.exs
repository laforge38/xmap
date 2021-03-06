defmodule XMap.Mixfile do
  use Mix.Project

  @version "0.2.4"

  def project do
    [
      app: :xmap,
      name: "XMap",
      version: @version,
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env),
      deps: deps(),
      package: package(),
      preferred_cli_env: [docs: :docs],
      description: description(),
      docs: docs(),
      test_coverage: [tool: XMap.Cover]
    ]
  end

  def application do
    [
      extra_applications: [:xmerl]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  defp deps do
    [
      {:credo, "~> 0.8.10", only: :dev},
      {:ex_doc, "~> 0.18.1", only: :docs}
    ]
  end

  defp description do
    """
    XML to Map converter.
    """
  end

  defp package do
    [
      maintainers: ["Fernando Tapia Rico"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/fertapric/xmap"},
      files: ~w(mix.exs LICENSE README.md lib)
    ]
  end

  defp docs do
    [
      source_ref: "v#{@version}",
      main: "XMap",
      canonical: "http://hexdocs.pm/xmap",
      source_url: "https://github.com/fertapric/xmap"
    ]
  end
end
