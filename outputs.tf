output "instance_id" {
  description = "Id of instance created"
  value = "${aws_instance.web.id}"
}

output "instance_private_ip" {
  description = "Private IP configured on instance"
  value = "${aws_instance.web.private_ip}"
}

output "tags" {
  description = "List of tags of instances"
  value       = aws_instance.this.*.tags
}