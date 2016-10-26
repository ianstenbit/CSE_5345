# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :notes,
  ecto_repos: [Notes.Repo]

# Configures the endpoint
config :notes, Notes.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QZEI21uL4hQAmrJN+aFjx+v8MLNsdCD56pG6lXo1xI6851b5v1ZI4rjUF6CedFob",
  render_errors: [view: Notes.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Notes.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"