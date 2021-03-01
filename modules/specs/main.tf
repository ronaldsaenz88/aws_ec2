module "vm_test" {
  source              = "../../../"
  boot_canonical      = "099720109477"
  boot_image          = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
  instance_name       = "t2.micro"
  project_name        = "terraform_admin"
  region              = "us-east-2"
  tags_name           = "Flugel"
  tags_owner          = "InfraTeam"
  virtualization_type = "hvm"
}