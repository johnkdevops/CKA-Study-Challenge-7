variable "region" {
  description = "AWS region"
}

variable "public_key_path" {
  description = "Path to the public key to be used for SSH access"
}

variable "private_key_path" {
  description = "Path to the private key to be used for SSH connections"
}

variable "key_name" {
  description = "Key pair name"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "instance_count" {
  description = "Number of instances to launch"
}

variable "username" {
  description = "Username for SSH connections"
}

