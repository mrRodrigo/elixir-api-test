defmodule PaymentApi.Repo do
  use Ecto.Repo,
    otp_app: :paymentApi,
    adapter: Ecto.Adapters.MyXQL
end
