module "cdn" {
  source  = "terraform-aws-modules/cloudfront/aws"
  version = "1.6.0"

  aliases = var.sources

  comment             = var.name
  enabled             = true
  is_ipv6_enabled     = true
  price_class         = "PriceClass_100"
  retain_on_delete    = false
  wait_for_deployment = false

  origin = {
    s3bucket = {
      domain_name = module.s3-bucket.this_s3_bucket_website_domain

      custom_origin_config = {
        http_port              = 80
        https_port             = 443
        origin_protocol_policy = "http-only"
        origin_ssl_protocols   = ["TLSv1.2"]
      }
    }
  }

  default_cache_behavior = {
    target_origin_id       = "s3bucket"
    viewer_protocol_policy = "redirect-to-https"

    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    compress         = true
  }

  viewer_certificate = {
    acm_certificate_arn = module.cf_certificate.this_acm_certificate_arn
    ssl_support_method  = "sni-only"
  }
}