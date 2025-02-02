####### VPC-Tier Module Variables ########
variable "database" {}
variable "ipaddr" {}
variable "app_ami" {}
variable "app_instance_type" {}
variable "ssh_key_pair" {}

variable "network" {
  description = "Object with a list of CIDR block ranges for the network."
  type        = map(any)
  default = {
    "staging" = {
      "vid" = "10.0.0.0/16"
      "subnets" = {
        "web" = ["10.0.0.0/18", "10.0.64.0/18"]
        "db"  = []
      }
    }
    "production" = {
      "vid" = "172.0.0.0/16"
      "subnets" = {
        "web" = ["172.0.0.0/18", "172.0.64.0/18"]
        "db"  = []
      }
    }
  }
}
