module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "1.9.0"
  bucket  = var.bucket_name
  website = {
    index_document = "index.html"
    error_document = "error.html"
    routing_rules = jsonencode([{
      Redirect : {
        "HostName" : var.redirect_host,
        "HttpRedirectCode" : "301",
        "Protocol" : "https",
        "ReplaceKeyPrefixWith" : var.redirect_prefix
      }
    }])
  }
}
