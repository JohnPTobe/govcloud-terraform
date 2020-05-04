ssh_public_key = ""
dcos_version = "1.13.8"
cluster_name = "starfleet-red"
num_masters = 3
num_public_agents = 3
num_private_agents = 10
tags = {
  "development" = "MACE"
  "cluster" = "dcos"
  "configuration" = "terraform"
}
admin_ips = [ "172.33.0.0/16", "172.34.0.0/16" ]
vpc_id = "vpc-6c303708"
subnet_tags = {
    development = "MACE"
  }
bootstrap_instance_type = "m2.Medium"
security_group_ids = ["sg-cb73bcb2"]
