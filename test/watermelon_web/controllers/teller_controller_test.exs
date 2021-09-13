defmodule WatermelonWeb.TellerControllerTest do
  use WatermelonWeb.ConnCase

  test "GET /teller/accounts", %{conn: conn} do
    account_number = "195050122896784957"
    token = "9JeEWBfZvB"

    # conn = get(conn, Routes.teller_path(conn, :accounts))

    conn = get(conn, "api/teller/accounts", %{token: token})
    assert json_response(conn, 200)["data"] == []
  end
end
