name = "testing"
domain_name = "test.com"
bucket_name = "redirect-test-com"
sources = ["test.com", "www.test.com"]
redirect = {
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
tags = {
   Environment = "prod"
   ManagedBy   = "Terraform"
 }