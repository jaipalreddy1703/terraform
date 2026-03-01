resource "aws_instance" "example" {

    for_each = var.instances
    ami = "ami-0220d79f3f480ecf5"
    instance_type = each.value
    tags = {
      Name = each.key
      Project = "roboshop-dev"
    }
}