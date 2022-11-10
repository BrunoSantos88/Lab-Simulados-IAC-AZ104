variable "resourse_group_name_rede" {
  default     = "rede-publica"
  description = "rede da regiao eastus"
  # 192.1.0.0/16
}

variable "resourse_group_name_subnet" {
  default     = "rede-interna"
  description = "subnet da regiao eastus"
  # 192.1.0.0/24
}


variable "resource_group_name_group" {
  default = "grupoderecursos"
}

variable "resource_group_name_location" {
  default = "eastus"
}

variable "resource_group_name_name_avabilityset" {
  default = "avset"
}

variable "application_port" {
  description = "Port that you want to expose to the external load balancer"
  default     = 80
}