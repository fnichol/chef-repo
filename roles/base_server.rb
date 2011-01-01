name "base_server"
description "The base role for all server nodes"
run_list(
  "recipe[iptables]",
  "recipe[openssh]",
  "recipe[users]",
  "recipe[sudo]",
  "recipe[rvm]"
)
default_attributes :rvm => {
    :rubies => ["ree-1.8.7-2010.02"],
    :default_ruby => "ree-1.8.7-2010.02"
  },
  :iptables => {
    :status => "enable"
  }
