name "webserver"
description "A webserver"
run_list "recipe[apache]"
default_attributes({
  "apache" => {
  	"greeting" => "Washington, DC"
  }
})
