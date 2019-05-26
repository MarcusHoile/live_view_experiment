# LiveViewExperiment

An experiment with phoenix live view. A dashboard that gets updated from pubsub events.

To see it work

```
iex -S mix phx.server
```

and then

```elixir
LiveViewExperimentWeb.Endpoint.broadcast("districts:sync_state", "some_event", %{name: "Some District", status: "connected"})
```

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `cd assets && yarn install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
