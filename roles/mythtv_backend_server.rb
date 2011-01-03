name "mythtv_backend_server"
description "A backend instance of MythTV for recording/livetv"
run_list(
  "role[server]",
  "recipe[mythtv::master_backend]"
)
default_attributes(
  :rvm => {
    :rubies => ["ruby-1.8.7"],
    :default_ruby => "ruby-1.8.7"
  },
  :mysql => {
    :iptables_allow => "enable"
  }
)
