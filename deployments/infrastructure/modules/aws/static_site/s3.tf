resource "aws_s3_bucket" "static_site" {
  bucket = var.bucket_name
  force_destroy = true
  acl = "private"

  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}


data "aws_iam_policy_document" "static_site_s3_policy" {
  statement {
    actions = [
      "s3:GetObject"]
    resources = [
      "${aws_s3_bucket.static_site.arn}/*"]

    principals {
      type = "AWS"
      identifiers = [
        var.cloudfront_iam_arn]
    }
  }
}

resource "aws_s3_bucket_policy" "static_site" {
  bucket = aws_s3_bucket.static_site.id
  policy = data.aws_iam_policy_document.static_site_s3_policy.json
}

resource "aws_s3_bucket_public_access_block" "static_site" {
  bucket = aws_s3_bucket.static_site.id

  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}

