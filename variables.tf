variable "project_name" {
  description = "The Project Name to set for the EC2 Instance."
  type        = string
  default     = "terraform_admin"
}
variable "instance_name" {
  description = "The Instance Name"
  type        = string
  default     = "t2.micro"
}

variable "region" {
  description = "The Region"
  type        = string
  default     = "us-east-2"
}

variable "boot_image" {
  description = "The Boot Image"
  type        = string
  default     = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
}

variable "boot_canonical" {
  description = "The Boot Canonical Image"
  type        = string
  default     = "099720109477"
}

variable "virtualization_type" {
  description = "Virtualization Type of EC2 AWS."
  type        = string
  default     = "hvm"
}

variable "tags_name" {
  description = "Tag Name."
  type        = string
  default     = "Flugel"
}

variable "tags_owner" {
  description = "Tag Owner."
  type        = string
  default     = "InfraTeam"
}

variable "local_exec" {
  description = "Default test message."
  type        = string
  default     = "echo +'Hello world'"
}