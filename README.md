# TodoGenericServer

**TODO: Add description**

## Installation

An important benefit of the generic ServerProcess abstraction is that it lets you easily
create various kinds of processes that rely on this common code. For example, in chapter
5, you developed a simple to-do server that maintains a to-do list abstraction in its
internal state. This server can also be powered by the generic server.

This is the perfect opportunity for you to practice a bit. Take the complete code from
todo_server.ex from the chapter 5 source, and save it to a different file. Then add the
last version of the ServerProcess module to the same file. Finally, adapt the code of the
TodoServer module to work with GenericServer.

Once you have everything working, compare the code between the two versions. The
new version of TodoServer should be smaller and simpler, even for such a simple server
process that supports only two different requests. If you get stuck, you can find the solution
in the todo_generic_server.ex file.

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `todo_generic_server` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:todo_generic_server, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/todo_generic_server](https://hexdocs.pm/todo_generic_server).
