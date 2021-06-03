resource "aws_route53_record" "public_domain" {
  zone_id = data.aws_route53_zone.public_zone.zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = module.cdn.this_cloudfront_distribution_domain_name
    zone_id                = module.cdn.this_cloudfront_distribution_hosted_zone_id
    evaluate_target_health = false
  }
}