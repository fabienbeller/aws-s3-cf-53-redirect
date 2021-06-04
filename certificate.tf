module "cf_certificate" {
  providers = {
    aws = aws.us-east-1
  }
  source                    = "terraform-aws-modules/acm/aws"
  version                   = "2.13.0"
  domain_name               = var.domain_name
  subject_alternative_names = var.sources
  zone_id                   = data.aws_route53_zone.public_zone.zone_id
  dns_ttl                   = "120"
  tags                      = var.tags
}