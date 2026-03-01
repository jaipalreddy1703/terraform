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

variable "frutis" {
    type = list(string)
    default = ["apple","banana","orange","apple","banana"]
}

variable "fruits_set" {
    type = set(string)
    default = ["apple","banana","orange","apple","banana"]  
  
}