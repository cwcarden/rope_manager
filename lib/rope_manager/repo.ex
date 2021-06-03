defmodule RopeManager.Repo do
  use Ecto.Repo,
    otp_app: :rope_manager,
    adapter: Ecto.Adapters.Postgres
end
