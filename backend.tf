terraform {
  backend "s3" {
    bucket         = "test-tf211"
    key            = "s3/terraform.tfstate"
    region         = "us-west-2"
  }
}