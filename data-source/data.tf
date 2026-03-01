data "aws_ami" "joindevops"{
    most_recent = true
    owners = [ "973714476881" ]

    filter {
      name = "name"
      values = ["Redhat-9-DevOps-Practice"]
    }

    filter {
      name = "root-device-type"
      values =["ebs"]
    }

    filter{
        name = "virtualization-type"
        values = ["hvm"]
    }
}


# to get details about a instance created in aws 
data "aws_instance" "terraform_instance"{
    instance_id = "i-01d48da895571e4f2"
}