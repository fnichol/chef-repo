name "web_server"
description "A web server deployment with nginx/passenger."
run_list(
  "role[server]",
  "recipe[rvm_passenger::nginx]"
)
override_attributes "nginx" => {
  "extra_configure_flags" => [ "--with-http_sub_module" ]
}
