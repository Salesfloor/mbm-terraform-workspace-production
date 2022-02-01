/**
 * # Sandbox 
 * The sandbox workspace is used to create the dev machines that will be used to create the base AMI for Nuance build servers, it uses the networking and mac-instances modules.
 * > Change the name of the AWS provider profile and backend profile to match the credentials that has access to the Nuance AWS account.
 * ## Running
 * - `Terraform init`
 * - `Terraform plan`
 * - `Terraform apply`
 */


module "network" {
  source               = "git@sgit.cloudops.com:consulting/clients/salesfloor/terraform-modules/networking.git?ref=v0.1.0"
  aws_region           = var.aws_region
  service              = var.service
  env                  = var.env
  cidr                 = var.cidr
  az_list              = var.az_list
  private_subnet_cidrs = var.private_subnet_cidrs
  public_subnet_cidrs  = var.public_subnet_cidrs
}

module "instances" {
  # Should be changed to v0.1.1
  source = "git@sgit.cloudops.com:consulting/clients/salesfloor/terraform-modules/mac-instances.git?ref=v0.1.0"

  nos_of_instances = var.nos_of_instances
  vpc_id           = module.network.vpc_id
  subnet_ids       = module.network.public_subnet_ids
  az_list          = var.az_list
  service          = var.service
  env              = var.env
  allowed_ips      = var.allowed_ips
  role_name        = var.role_name
  ami              = var.ami
}