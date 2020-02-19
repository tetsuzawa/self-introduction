//data "aws_acm_certificate" "main" {
//  domain = "*.${var.main_domain_name}"
//}

resource "aws_acm_certificate" "cert" {
  domain_name = var.main_domain_name
  subject_alternative_names = ["*.${var.main_domain_name}"]
  validation_method = "DNS"
}

resource "aws_route53_record" "cert" {
  # Count=2, because we need to valdiate both "example.com" and "*.example.com".
  count = 1
  name = aws_acm_certificate.cert.domain_validation_options[count.index]["resource_record_name"]
  type = aws_acm_certificate.cert.domain_validation_options[count.index]["resource_record_type"]
  zone_id = var.zone_id
  records = [aws_acm_certificate.cert.domain_validation_options[count.index]["resource_record_value"]]
  ttl = 300
}

resource "aws_acm_certificate_validation" "acm_cert" {
  certificate_arn = aws_acm_certificate.cert.arn
  validation_record_fqdns = aws_route53_record.cert.*.fqdn
}
