# The output values are the values that will be returned to the user after Terraform finishes applying. 
# These are often used to extract certain values that are not easily accessible or noticeable. 
# They can also be used to tell the user what values they can use in future configurations or scripts.

# Output the endpoint for the EKS control plane
# This is important as it allows other services and users to interact with the EKS cluster
output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}

# Output the security group ID attached to the EKS cluster
# This is important for managing network access to and from the EKS cluster
output "cluster_security_group_id" {
  description = "Security group ID attached to the EKS cluster."
  value       = module.eks.cluster_security_group_id
}

# Output the IAM role name associated with EKS cluster
# This is important for managing permissions and authorizations for services interacting with the EKS cluster
output "cluster_iam_role_name" {
  description = "IAM role name associated with EKS cluster."
  value       = module.eks.cluster_iam_role_name
}
