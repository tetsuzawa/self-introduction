output "domain_name" {
  value = aws_cloudfront_distribution.static_site.domain_name
}

output "hosted_zone_id" {
  value = aws_cloudfront_distribution.static_site.hosted_zone_id
}

output "iam_arn" {
  value = aws_cloudfront_origin_access_identity.static_site_origin_access_identity.iam_arn
}
