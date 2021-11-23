terraform {
  backend "s3" {
    dynamodb_table = "terraform-lock"
    key            = "prod/state.tfstate"
    region         = "us-east-1"
    bucket         = "sf-build-terraform-state"
    profile        = "sf"
  }
}
