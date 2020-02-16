//data "aws_route53_zone" "web" {
//  name = var.main_domain_name
//}

resource "aws_route53_record" "static_site" {
//  zone_id = data.aws_route53_zone.web.zone_id
  zone_id = var.zone_id
  name = var.sub_domain_name == "" ? var.main_domain_name : "${var.sub_domain_name}.${var.main_domain_name}"
  type = "A"

  alias {
    name = var.cloudfront_domain_name
    zone_id = var.cloudfront_hosted_zone_id
    evaluate_target_health = false
  }
}
