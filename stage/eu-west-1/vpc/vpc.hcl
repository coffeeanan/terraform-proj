# # Indicate where to source the terraform module from.
# # The URL used here is a shorthand for
# # "tfr://registry.terraform.io/terraform-aws-modules/vpc/aws?version=3.5.0".
# # Note the extra `/` after the protocol is required for the shorthand
# # notation.
# # #######################################################
# terraform {
#   source = "tfr:///terraform-aws-modules/vpc/aws?version=3.5.0"

#   extra_arguments "common_vars" {
#     commands = get_terraform_commands_that_need_vars()

#     arguments = [
#       # "-var-file=../../common.tfvars",
#       # "-var-file=../region.tfvars"
#     ]
#   }
# }

# # Indicate the input values to use for the variables of the module.
# # #######################################################
# inputs = {
#   name = "my-vpc"
#   cidr = "10.0.0.0/16"

#   azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
#   private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#   public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

#   enable_nat_gateway = true
#   enable_vpn_gateway = false

#   tags = {
#     Terraform = "true"
#     Environment = "stage"
#   }
# }