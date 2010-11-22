name "base"
description "The base role for all nodes"
run_list(
  "recipe[openssh]",
  "recipe[git]",
  "recipe[mercurial]",
  "recipe[bashrc]"
)
