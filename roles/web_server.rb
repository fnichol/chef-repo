name "web_server"
description "A web server deployment with nginx/passenger."
run_list(
  "role[base]",
  "role[ubuntu]",
  "role[base_server]",
  "recipe[rvm_passenger]",
  "recipe[rvm_passenger::nginx]"
)
override_attributes "nginx" => {
    "extra_configure_flags" => [ "--with-http_sub_module" ]
  },
  "rvm_passenger" => {
    "version" => "3.0.0",
    "rvm_ruby" => "ree-1.8.7-2010.02",
    "root_path" => "/usr/local/rvm/gems/ree-1.8.7-2010.02/gems/passenger-3.0.0"
  }
