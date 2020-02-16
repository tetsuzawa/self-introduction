variable "bucket_name" {
  type = string
  default = ""
}

variable "main_domain_name" {
  type = string
  default = ""
  description = "The Domain which you want to serve the website on (e.g. `example.com`)"
}

variable "sub_domain_name" {
  type = string
  default = ""
  description = "The Sub Domain which you want to serve the website on (e.g. `test`)"
}


variable "zone_id" {
  description = "The ID of hosted zone which your domain will be hosted"
}

variable "acm_certificate_arn" {
  type = map(string)
  default = {}
  description = "The Domain of site (e.g. `example.com`)"
}

variable "iam" {
  type = map(string)
  default = {}
}

variable "cloudfront_iam_arn" {
  type = string
  default = ""
}

variable "cloudfront_domain_name" {
  type = string
  default = ""
}

variable "cloudfront_hosted_zone_id" {
  type = string
  default = ""
}

variable "cloudfront_region" {
  type = string
  default = "us-east-1"
}
