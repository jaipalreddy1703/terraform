output "roboshop_instances" {

    value = aws_instance.example
    description = "description"
  
}


output "frutis_names" {
  value = var.frutis
}

output "frutis_set" {
  value = var.fruits_set
}
