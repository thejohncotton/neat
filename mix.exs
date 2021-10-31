defmodule Neat.MixProject do
  use Mix.Project

  def project do
    [
      app: :neat,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: releases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Neat.Application, []}

    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:earmark, git: "https://github.com/pragdave/earmark"},
      {:plug_cowboy, "~> 2.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
  defp releases do
    [
      neat: [
        include_executables_for: [:unix],
        cookie: "x93o-Hw4CZy6MGCqBI0PHDxV8WreQ9gl9Hzgue4bakS8KOUAeZ2F9w=="
      ]
    ]
  end
end
