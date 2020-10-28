defmodule Grapho.Repo do
  use Ecto.Repo,
    otp_app: :grapho,
    adapter: Ecto.Adapters.Postgres
end
