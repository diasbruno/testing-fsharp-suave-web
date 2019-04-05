open System
open System.Net
open System.Threading
open Suave

[<EntryPoint>]
let main argv =
  let port = "8000" |> uint16
  let bindings = [HttpBinding.create HTTP IPAddress.Any port]
  let cts = new CancellationTokenSource()
  let conf = { defaultConfig with bindings = bindings }
  let listening, server = startWebServerAsync conf (Successful.OK "Hello World")

  Async.Start(server, cts.Token)
  Console.ReadKey true |> ignore
  cts.Cancel()

  0
