name "xbmc_frontend"
description "An Ubuntu Linux frontend for XBMC"
run_list(
  "role[base]",
  "role[ubuntu]",
  "role[base_server]",
  "recipe[xbmc::apt_repository]"
)
override_attributes :rvm => {
  :rubies => ["ruby-1.8.7-p302"],
  :default_ruby => "ruby-1.8.7-p302"
}

