module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "1.19.0"
  bucket  = var.bucket_name
  website = var.redirect
}
