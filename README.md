# Elixir Portal

### How to "play" locally
* Clone the repository and start start an iex session inside the project with `iex -S mix`
* Create your portal doors with `Portal.shoot(:orange)` and `Portal.shoot(:blue)`
* Create a portal with some data to send through `portal = Portal.transfer(:orange, :blue, [1, 2, 3, 4])`
* Send the data back and forth, one item at a time with `Portal.push_right(portal)` and `Portal.push_left(portal)`
