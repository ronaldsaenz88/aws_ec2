#Configuration EC2 Instance in AWS

#__author__ = "Ronald Saenz"
#__status__ = "Development"
#__copyright__ = "Copyright 2021, RSAENZ"
#__maintainer__ = "Ronald Saenz"
#__email__ = "ronaldsaenz88@gmail.com"
#__version__ = "0.0.4"

terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "RonaldSaenz-AWS"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "aws_ec2"
    }
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}

#Folder AWS and gets region
provider "aws" {
  profile = "default"
  region = var.region
}

#prepare Data of Instance EC2 en AWS
data "aws_ami" "ec2" {
  most_recent = true

  filter {
    name = "name"
    values = [var.boot_image]

  }

  filter {
    name = "virtualization-type"
    values = [var.virtualization_type]
  }

  owners = [var.boot_canonical] #Canonical
}


#create Instance EC2 en AWS
resource "aws_instance" "web" {
  ami = "${data.aws_ami.ec2.id}"
  instance_type = var.instance_name

  tags = {
    Name = var.tags_name
    Owner = var.tags_owner
  }
}