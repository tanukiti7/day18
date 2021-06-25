defmodule LiveSample.Repo do
  use Ecto.Repo,
    otp_app: :live_sample,
    adapter: Ecto.Adapters.Postgres
end
