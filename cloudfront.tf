module "cdn" {
  source                 = "cloudposse/cloudfront-cdn/aws"
  version                = "0.12.0"
  namespace              = ""
  stage                  = ""
  name                   = var.name
  comment                = var.name
  aliases                = var.sources
  parent_zone_name       = var.domain_name
  dns_aliases_enabled    = true
  default_root_object	   = ""
  origin_domain_name     = module.s3-bucket.this_s3_bucket_website_endpoint
  acm_certificate_arn    = module.cf_certificate.this_acm_certificate_arn
  allowed_methods        = ["GET", "HEAD"]
  cached_methods         = ["GET", "HEAD"]
  origin_http_port       = 80
  origin_https_port      = 443
  origin_protocol_policy = "http-only"
  viewer_protocol_policy = "redirect-to-https"
  origin_ssl_protocols   = ["TLSv1.2"]
  price_class            = "PriceClass_100"
  compress               = true
  enabled                = true
}