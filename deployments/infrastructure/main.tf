resource "aws_route53_zone" "site_zone" {
  name = "tetsuzawa.com"
}

locals {
  main_domain_name = "tetsuzawa.com"
  sub_domain_name  = "introduction"
  bucket_name      = "introduction.tetsuzawa.com"
}

module "acm" {
  source           = "./modules/aws/acm"
  main_domain_name = local.main_domain_name
  zone_id          = aws_route53_zone.site_zone.zone_id
  providers = {
    aws = aws.us-east-1
  }
}

module "cloudfront" {
  source                      = "./modules/aws/cloudfront"
  bucket_name                 = local.bucket_name
  main_domain_name            = local.main_domain_name
  sub_domain_name             = local.sub_domain_name
  bucket_regional_domain_name = module.static_site.bucket_regional_domain_name
  acm_certificate_arn = module.acm.certificate_arn
  providers = {
    aws = aws.us-east-1
  }
}

module "static_site" {
  source                    = "./modules/aws/static_site"
  bucket_name               = local.bucket_name
  sub_domain_name           = local.sub_domain_name
  zone_id                   = aws_route53_zone.site_zone.zone_id
  cloudfront_domain_name    = module.cloudfront.domain_name
  cloudfront_iam_arn        = module.cloudfront.iam_arn
  cloudfront_hosted_zone_id = module.cloudfront.hosted_zone_id
  acm_certificate_arn       = module.acm.certificate_arn
  iam = {
    "default.name" : "poweruser"
  }
  providers = {
    aws = aws
  }
}

