name "webapp_server"
description "A webapp server deployment that can host rails/rack/etc. applications."
run_list(
  "role[web_server]",
  "recipe[webapp]"
)
override_attributes(
  :rvm => {
    :rvmrc => {
      :rvm_trust_rvmrcs_flag  => 1
    }
  }
)
