resource "aws_s3_bucket" "static_site" {
  bucket        = var.bucket_name
  force_destroy = true
}

//resource "aws_s3_bucket" "static_site_access_logs" {
//  bucket        = "logs${var.bucket_name}"
//  force_destroy = true
//}

data "aws_iam_policy_document" "static_site_s3_policy" {
  statement {
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.static_site.arn}/*"]

    principals {
      type        = "AWS"
      identifiers = [var.cloudfront_iam_arn]
    }
  }
}

resource "aws_s3_bucket_policy" "static_site" {
  bucket = aws_s3_bucket.static_site.id
  policy = data.aws_iam_policy_document.static_site_s3_policy.json
}

//data "aws_iam_policy_document" "static_site_access_logs" {
//  statement {
//    actions   = ["s3:PutObject"]
//    resources = ["${aws_s3_bucket.static_site_access_logs.arn}/*"]
//
//    principals {
//      type        = "AWS"
//      identifiers = [var.cloudfront_iam_arn]
//    }
//  }
//}
//
//resource "aws_s3_bucket_policy" "static_site_access_logs" {
//  bucket = aws_s3_bucket.static_site_access_logs.id
//  policy = data.aws_iam_policy_document.static_site_access_logs.json
//}
