terraform {
  backend "s3" {
    dynamodb_table = "terraform-lock"
    key            = "production/state.tfstate"
    region         = "us-east-1"
    bucket         = "sf-build-terraform-state"
    profile        = "sf"
  }
}
