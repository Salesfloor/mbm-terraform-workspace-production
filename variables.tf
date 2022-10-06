
# General
variable "aws_region" {
  type        = string
  description = "AWS region used for all resources"
}

variable "service" {
  type        = string
  description = "Prefix added to names of all resources"
  default     = "build-server"
}

variable "env" {
  type        = string
  description = "env added to names/tags of all resources"
  default     = "production"
}

# Network
variable "cidr" {
  type        = string
  description = "Cidr block for the VPC"
}

variable "az_list" {
  type        = list(string)
  description = "The list of AZ to create the subnets in, only use this if you want to restrict the zones where the subnets are created"
  default     = []
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Cidr for the private subnet"
  default     = []
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Cidr for the public subnet"
  default     = []
}

# Instance
variable "allowed_ips" {
  description = "The list of Authorized networks to allow ssh access to Mac instances"
  type        = list(any)
}

variable "nos_of_instances" {
  description = "The number of Mac instances to create"
  type        = number
  default     = 1
}

variable "role_name" {
  type        = string
  description = "(Optional) Name of the role to add to the profile. If not specified a new role will be created"
  default     = ""
}

variable "ami" {
  type        = string
  description = "Please specify the AMI to use to create the VM, if you do not, the default MAC OS AMI will be used (amzn-ec2-macos-11.6-*-*)"
  default     = ""
}