name "webserver"
description "A webserver"
run_list "role[base]", "recipe[apache]"
default_attributes({
  "apache" => {
  	"greeting" => "Washington, DC",
  	"sites" => {
  		"bears" => {
  			"port" => 8081
  		},
  		"lion" => {
  			"port" => 83
  		},
  	}

  }
})
