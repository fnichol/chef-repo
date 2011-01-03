name "xbmc_frontend"
description "An Ubuntu Linux frontend for XBMC"
run_list(
  "role[server]",
  "recipe[xbmc::live]"
)
default_attributes :rvm => {
  :rubies => ["ruby-1.8.7"],
  :default_ruby => "ruby-1.8.7"
}

