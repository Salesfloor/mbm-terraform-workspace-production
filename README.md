# Prod  
The Prod workspace is used to create the production machines that will be used to build salesfloor applications, it uses the networking and mac-instances modules.
> Change the name of the AWS provider profile and backend profile to match the credentials that has access to the Nuance AWS account.
## Running
- `Terraform init`
- `Terraform plan`
- `Terraform apply`

## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.0.4 |
| aws | 3.64.2 |
| local | 2.1.0 |
| random | 3.1.0 |
| tls | 3.1.0 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allowed\_ips | The list of Authorized networks to allow ssh access to Mac instances | `list(any)` | n/a | yes |
| aws\_region | AWS region used for all resources | `string` | n/a | yes |
| az\_list | The list of AZ to create the subnets in, only use this if you want to restrict the zones where the subnets are created | `list(string)` | `[]` | no |
| cidr | Cidr block for the VPC | `string` | n/a | yes |
| env | env added to names/tags of all resources | `string` | `"sandbox"` | no |
| nos\_of\_instances | The number of Mac instances to create | `number` | `1` | no |
| private\_subnet\_cidrs | Cidr for the private subnet | `list(string)` | n/a | yes |
| public\_subnet\_cidrs | Cidr for the public subnet | `list(string)` | n/a | yes |
| service | Prefix added to names of all resources | `string` | `"build-server"` | no |

## Outputs

| Name | Description |
|------|-------------|
| instance\_ips | n/a |

