# Variables in Terraform are a way to define values that can be used within the configuration. 
# They help in making the configuration more dynamic and flexible, and can be used for various purposes such as configuring input parameters or setting default values.

# AWS access key variable
# This is important as it is used for authentication when making requests to AWS
variable "aws_access_key" {}

# AWS secret key variable
# This is important as it is used along with the access key for secure authentication when making requests to AWS
variable "aws_secret_key" {}

# AWS region variable with a default value
# This is important as it defines the geographical region where resources will be created. 
# The default value helps in case no other value is provided.
variable "region" {
  default = "us-west-2"
}
