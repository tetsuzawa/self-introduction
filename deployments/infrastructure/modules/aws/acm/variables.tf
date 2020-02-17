variable "main_domain_name" {
  type = string
  default = ""
  description = "The Domain of the application. (e.g. `example.com`)"
}

variable "zone_id" {
  type = string
  default = ""
  description = "ID of hosted zone."
}
