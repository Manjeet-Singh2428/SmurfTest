terraform {
  backend "s3" {
    bucket         = "test-tf221"
    key            = "s3/terraform.tfstate"
    region         = "us-west-2"
  }
}