module "cf_certificate" {
  source = "git::https://github.com/tmknom/terraform-aws-acm-certificate.git?ref=tags/2.0.0"

  enabled     = true
  domain_name = var.public_domain
  zone_id     = data.aws_route53_zone.public_zone.zone_id
  ttl         = "120"
  tags        = var.tags

  timeouts_create = "30m"
}