# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options
# Kohn Om
current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "kom001"
client_key               "#{current_dir}/kom001.pem"
validation_client_name   "kohn_chef-validator"
validation_key           "#{current_dir}/kohn_chef-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/kohn_chef"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
