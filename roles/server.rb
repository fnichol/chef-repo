name "server"
description "The typical base role for a server deployment"
run_list(
  "role[base]",
  "role[ubuntu]",
  "role[base_server]"
)
