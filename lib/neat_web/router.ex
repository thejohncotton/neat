defmodule NeatWeb.Router do
    use Plug.Router

    plug :match
    plug :dispatch
    get "/" do
        send_resp(conn, 200, "Hello World!")
    end
    match _ do
        send_resp(conn, 404, "This is not the page you are looking for.")
    end
end