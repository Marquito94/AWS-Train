terraform {
  backend "s3" {
    bucket = "terraform-state-8"
    key    = "state"
    region = "us-east-2"
  }
}