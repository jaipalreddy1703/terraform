variable "instances" {

    type = map
    default = {
        mongodb = "t3.micro"
        mysql = "t3.small"
        user = "t3.micro"
        shipping = "t3.small"
    }
  
}

variable "zone_id" {
    default = "Z00087883QCEFVVFLOJWL"
}

variable "domain_name" {
    default = "vakiti.online"
}
