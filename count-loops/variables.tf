variable "instances" {
    type = list
    default = ["mongodb","redis","mysql","rabbitmq","mysql","payments","shipping","user","cart","catalogue","frontend"]
}

variable "zone_id" {
    default = "Z00087883QCEFVVFLOJWL"
}

variable "domain_name" {
    default = "vakiti.online"
}