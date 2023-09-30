defmodule Paradise.Repo do
  use Ecto.Repo,
    otp_app: :paradise,
    adapter: Ecto.Adapters.Postgres
end
