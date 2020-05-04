///////////////// VARIABLES /////////////////
//
// Only ssh_public_key is mandatory
//
////////////////////////////////////////////
variable "ssh_public_key" {
  description = <<EOF
Specify a SSH public key in authorized keys format (e.g. "ssh-rsa ..") to be used with the instances. Make sure you added this key to your ssh-agent
EOF
}

variable "dcos_version" {
  description = "DC/OS version to be used"
  default     = "1.13.3"
}

variable "cluster_name" {
  description = "Name of the DC/OS cluster"
  default     = "starfleet-red"
}

variable "num_masters" {
  description = "Specify the amount of masters. For redundancy you should have at least 3"
  default     = 1
}

variable "num_private_agents" {
  description = "Specify the amount of private agents. These agents will provide your main resources"
  default     = 1
}

variable "num_public_agents" {
  description = "Specify the amount of public agents. These agents will host marathon-lb and edgelb"
  default     = 1
}

variable "dcos_license_key_contents" {
  default     = ""
  description = "[Enterprise DC/OS] used to privide the license key of DC/OS for Enterprise Edition. Optional if license.txt is present on bootstrap node."
}

variable "dcos_type" {
  default = "open"
}

variable "tags" {
  description = "Add custom tags to all resources"
  type        = "map"
  default     = {}
}

variable "admin_ips" {
  description = "List of CIDR admin IPs"
  type        = "list"
}

variable "vpc_id" {
  description = "existing VPC to launch into"
}

variable "subnet_tags" {
  description = "Selects subnet(s) to launch into in the vpc"
  type        = "map"
  default     = {}
}

variable "bootstrap_instance_type" {
  default = "m2.Medium"
}

variable "master_instance_type" {
  default = "m2.Medium"
}

variable "public_instance_type" {
  default = "m2.Medium"
}

variable "private_instance_type" {
  default = "m2.Medium"
}

variable "security_group_ids" {
  description = "Existing security group(s) to use"
  type        = "list"
}

////////////////////////////////////////////
/////////////// END VARIABLES //////////////
////////////////////////////////////////////
