name "base_server"
description "The base role for all server nodes"
run_list(
  "recipe[iptables]",
  "recipe[openssh]",
  "recipe[users]",
  "recipe[sudo]",
  "recipe[rvm]"
)
default_attributes(
  :rvm => {
    :default_ruby => "ree-1.8.7"
  },
  :iptables => {
    :status => "enable"
  }
)
