variable "name" {

    type = string
    default = "locals"
  
}

variable "envi" {

    type = string
    default = "dev"
  
}

# variable "instance_name" {

#     type = string
#     default = "${var.name}-${var.envi }"  #locals-dev
  
# }


variable "ec2_tags" {

    default = {
        Name = "locals-demo"
        Environment = "prod"
    }
  
}