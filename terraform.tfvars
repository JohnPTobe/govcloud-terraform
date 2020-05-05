ssh_public_key = ""
aws_key_name = "mesos_admin_gov"
dcos_version = "1.13.9"
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
bootstrap_instance_type = "t2.medium"
security_group_ids = ["sg-cb73bcb2"]

aws_ami_id = "ami-5a740e3b"
dcos_exhibitor_storage_backend = "aws_s3"
dcos_s3_bucket = "starfleet-exhibitor"
dcos_s3_prefix = "red"
