defmodule MyElKb.Repo do
  use Ecto.Repo,
    otp_app: :my_el_kb,
    adapter: Ecto.Adapters.Postgres
end
