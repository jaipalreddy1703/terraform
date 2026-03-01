variable "common-tags" {
    default = {
        Project = "roboshop"
        Terraform = "true"
        Envi = "dev"
    }
}


variable "ec2-tags"{
    default = {
        Name = "functions=demo"
        Envi = "prod"
    }
}

variable "sg-tags"{

    default = {
        Name = "function- demo"
    }
}

