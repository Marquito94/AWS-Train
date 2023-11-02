terraform {
  backend "s3" {
    bucket = "terraform-state-190"
    key    = "state"
    region = "us-east-2"
  }
}
