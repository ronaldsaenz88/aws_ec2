# aws_ec2
Project AWS - Create EC2 Instance

## Usage

Before executing you must configure the environment variables:

Linux:
```bash
$ export AWS_ACCESS_KEY_ID="XXXXXXXXXXXX"
$ export AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
```

Windows:
```
set AWS_ACCESS_KEY_ID="XXXXXXXXXXXX"
set AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
```

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply 
```

If you want to change the variables, you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply -var="region=us-east-2" -var="project_name=terraform_admin" -var="instance_name=t2.micro" -var="boot_image=ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*" -var="boot_canonical=099720109477" -var="tags_name=Flugel" -var="tags_owner=InfraTeam"
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

## Examples

* [Basic EC2 instance](https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/tree/master/examples/basic)
* [EC2 instance with EBS volume attachment](https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/tree/master/examples/volume-attachment)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.6 |
| aws | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| region | (Optional) Region of the AWS provider. | `string` | `"us-east-2"` | no |
| project_name | (Optional) Project Name. | `string` | `"terraform_admin"` | no |
| instance_name | (Optional) EC2 Instance Name. | `string` | `"t2.micro"` | no |
| boot_image | (Optional) Boot Image to create instance. | `string` | `"ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"` | no |
| boot_canonical | (Optional) Boot Canonical to create instance. | `string` | `"099720109477"` | no |
| virtualization_type | (Optional) Virtualization Type of EC2 AWS. | `string` | `"hvm"` | no |
| tags_name | (Optional) A mapping of tags (Name) to assign to the bucket. | `string` | `"Flugel"` | no |
| tags_owner | (Optional) A mapping of tags (Owner) to assign to the bucket. | `string` | `"InfraTeam"` | no |

## Outputs

| Name | Description |
|------|-------------|
| _ec2\_instance\_id | Id of instance created. |
| _ec2\_instance\_private_ip | Private IP configured on instance. |
| _ec2\_instance\_tags | List of tags of instances. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module managed by [Ronald Saenz](https://github.com/ronaldsaenz88).

## License

GNU General Public Licensed. See LICENSE for full details.