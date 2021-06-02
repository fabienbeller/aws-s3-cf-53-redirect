resource "aws_route53_record" "public_domain" {
  zone_id = data.aws_route53_zone.public_zone.zone_id
  name    = var.public_domain
  type    = "A"

  alias {
    name                   = module.cdn.cf_domain_name
    zone_id                = module.cdn.cf_hosted_zone_id
    evaluate_target_health = false
  }
}