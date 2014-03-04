name "base"
description "Base role"
run_list( 
  "recipe[chef-client::delete_validation]",
  "recipe[motd]", 
  "recipe[users]"
)