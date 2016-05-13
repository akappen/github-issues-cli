# Issues

Example CLI app from Programming Elixir 1.2.

## Installation

1. Clone the repository

```
$ git clone https://github.com/akappen/github-issues-cli.git
$ cd github-issues-cli
```

2. Build the escript

```
$ mix deps.get
$ mix escript.build
```

## Usage

Prints a table of most recent issues for the elixir-lang user's elixir
project. Help is available with the `--help` flag.

```
$ ./issues elixir-lang elixir
```
