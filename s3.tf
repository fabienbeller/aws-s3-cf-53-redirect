module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "1.19.0"
  bucket  = var.bucket_name
  website = {
   index_document = "index.html"
   error_document = "error.html"
   routing_rules = jsonencode([{
     Redirect : {
           "HostName": "kettlebellsforafrica.co.za",
           "HttpRedirectCode": "301",
           "Protocol": "https",
           "ReplaceKeyPrefixWith": "shop/kettlebells/60kg-kettlebell-pre-order-now-open/"
       }
   }])
 }
}
