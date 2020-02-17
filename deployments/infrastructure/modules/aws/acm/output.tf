//output "acm" {
//  value = {
//    "main_arn" = data.aws_acm_certificate.main.arn
//  }
//}
output "certificate_arn" {
  description = "Arn of validated certificate arn"
  //  value = aws_acm_certificate_validation.acm_cert.certificate_arn
  value = {
    "main_arn" = aws_acm_certificate_validation.acm_cert.certificate_arn
  }
}
