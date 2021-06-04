name            = "testing-two"
domain_name     = "yoyoacademy.com"
bucket_name     = "redirect-test-two-com"
sources         = ["testone.yoyoacademy.com", "testtwo.yoyoacademy.com"]
redirect_host   = "yoyogroup.com"
redirect_prefix = "products/yoyogo/"
tags = {
  Environment = "prod"
  ManagedBy   = "Terraform"
}