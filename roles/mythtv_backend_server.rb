name "mythtv_backend_server"
description "A backend instance of MythTV for recording/livetv"
run_list(
  "role[base]",
  "role[ubuntu]",
  "role[base_server]",
  "recipe[mythtv::master_backend]"
)
override_attributes :rvm => {
    :rubies => ["ruby-1.8.7"],
    :default_ruby => "ruby-1.8.7"
  },
  :mysql => {
    :iptables_allow => "enable"
  }

