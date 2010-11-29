name "xbmc_frontend"
description "An Ubuntu Linux frontend for XBMC"

rl = [
  "role[base]",
  "role[ubuntu]",
  "role[base_server]"
]

if node[:dmi][:baseboard][:product_name] == "FMCP7A-ION-LE"
  rl << "recipe[ubuntu_nvidia_gpu::official_repository]"
end

r1 << "recipe[xbmc::apt_repository]"

run_list(*rl)
default_attributes :rvm => {
  :rubies => ["ruby-1.9.2-p0"],
  :default_ruby => "ruby-1.9.2-p0"
}

