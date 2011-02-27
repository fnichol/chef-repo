name "web_server"
description "A web server deployment with nginx/passenger."
run_list(
  "role[server]",
  "recipe[nginx::source]"
)
override_attributes(
  :nginx => {
    :extra_configure_flags    => [ "--with-http_sub_module" ]
  }
)
default_attributes(
  :rvm => {
    :default_ruby             => "ree-1.8.7-2011.03"
  },
  :rvm_passenger => {
    :rvm_ruby                 => "ree-1.8.7-2011.03@passenger"
  }
)
