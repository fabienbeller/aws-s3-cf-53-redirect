provider "aws" {
  version = "~> 2.0"
  region  = "eu-west-1"
}

# Certificates used by Cloudfront have to be in the us-east-1 region.
provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  alias   = "us-east-1"
}