resource "aws_route53_zone" "site_zone" {
  name = "tetsuzawa.com"
}

module "acm" {
//  source = "github.com/tetsuzawa/terraform-environments//modules/aws/acm"
  source = ".terraform/modules/acm/modules/aws/acm"
  main_domain_name = "tetsuzawa.com"
  //  zone_id = aws_route53_zone.site_zone.zone_id
  providers = {
    aws = aws.us-east-1
  }
}

module "static_site" {
//  source = "github.com/tetsuzawa/terraform-environments//modules/aws/static_site"
  source = ".terraform/modules/acm/modules/aws/static_site"
  bucket_name = "tetsuzawa.com"
  main_domain_name = "tetsuzawa.com"
  sub_domain_name = {
    "default.name" : ""
  }
  zone_id = aws_route53_zone.site_zone.zone_id
  acm_certificate_arn = {
    "main": "tetsuzawa.com"
  }
  iam = {
    "default.name" : "poweruser"
  }
  providers = {
    aws = aws.us-east-1
  }
}

//module "static_site_foo" {
//  source  = "github.com/lucheholdings/terrafrom_static_site//modules/static_site"
//  bucket_name = "site-foo.example.com"
//  domain = "foo.example.com"
//  zone_id = "${aws_route53_zone.site_zone.zone_id}"
//  acm_certificate_arn = "${module.acm.certificate_arn}"
//}
//
//module "static_site_bar" {
//  source  = "github.com/lucheholdings/terrafrom_static_site//modules/static_site"
//  bucket_name = "site-bar.example.com"
//  domain = "bar.example.com"
//  zone_id = "${aws_route53_zone.site_zone.zone_id}"
//  acm_certificate_arn = "${module.acm.certificate_arn}"
//}
