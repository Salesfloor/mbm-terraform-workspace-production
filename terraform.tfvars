# General
aws_region = "us-east-1"
az_list    = ["us-east-1a", "us-east-1b"] # we specify the az_list to restrict the regions to only where Mac os instances are available
env        = "prod"                       // eg: stg,prod

# Network
service             = "build-server"
cidr                = "10.10.0.0/16"
public_subnet_cidrs = ["10.10.0.0/24", "10.10.1.0/24"]

# Instances
ami              = "ami-0153ce059c6d80a47"
nos_of_instances = 1
allowed_ips = [
  {
    "cidr_block" : "99.238.254.40/32",
    "description" : "Jobas Home"
  },
  {
    "cidr_block" : "174.112.104.40/32",
    "description" : "Akshits Home"
  },
  {
    "cidr_block" : "3.213.202.205/32",
    "description" : "VPN IP"
  },
  {
    "cidr_block" : "70.82.55.20/32",
    "description" : "Office IP"
  },
  {
    "cidr_block" : "24.48.98.186/32",
    "description" : "Office VPN 2"
  },
  {
    "cidr_block" : "34.95.17.15/32",
    "description" : "CloudNat IP 1"
  },
  {
    "cidr_block" : "34.95.25.111/32",
    "description" : "CloudNat IP 2"
  },
  {
    "cidr_block" : "34.152.15.5/32",
    "description" : "CloudNat IP 3"
  },
  {
    "cidr_block" : "35.203.90.70/32",
    "description" : "CloudNat IP 4"
  },
  {
    "cidr_block" : "34.95.60.76/32",
    "description" : "CloudNat IP 5"
  },
  {
    "cidr_block" : "34.152.47.84/32",
    "description" : "CloudNat IP 6"
  },
  {
    "cidr_block" : "34.152.24.66/32",
    "description" : "CloudNat IP 7"
  },
  {
    "cidr_block" : "34.95.3.229/32",
    "description" : "CloudNat IP 8"
  },
  {
    "cidr_block" : "34.152.17.67/32",
    "description" : "CloudNat IP 9"
  },
  {
    "cidr_block" : "35.203.23.110/32",
    "description" : "CloudNat IP 10"
  },
  
]
role_name = "build-server-role"

