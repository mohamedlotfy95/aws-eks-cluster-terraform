# Specify the provider, in this case AWS
provider "aws" {
  # Set the region where resources will be created
  region = "us-west-2"
}

# Define the EKS module
module "eks" {
  # Source of the EKS module
  source          = "terraform-aws-modules/eks/aws"
  
  # Name of the EKS cluster
  cluster_name    = "my-eks-cluster"
  
  # Version of the EKS cluster
  cluster_version = "1.20"
  
  # Subnets where the EKS cluster will be created
  subnets         = ["subnet-abcde012", "subnet-bcde012a", "subnet-fghi345a"]
  
  # VPC where the EKS cluster will be created
  vpc_id          = "vpc-abcde012"

  # Define node groups for the EKS cluster
  node_groups = {
    eks_nodes = {
      # Desired number of worker nodes
      desired_capacity = 2
      
      # Maximum number of worker nodes
      max_capacity     = 10
      
      # Minimum number of worker nodes
      min_capacity     = 1

      # Instance type for the worker nodes
      instance_type = "m4.large"
      
      # Key pair name for SSH access to worker nodes
      key_name      = "my-key-name"
      
      # Enable Auto Scaling for worker nodes
      autoscaling_enabled = true
    }
  }
}
