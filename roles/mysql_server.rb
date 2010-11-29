name "mysql_server"
description "A MySQL server deployment."
run_list(
  "role[base]",
  "role[ubuntu]",
  "role[base_server]",
  "recipe[mysql::server]"
)
override_attributes "mysql" => {
  "enable_iptables" => "yes"
}
