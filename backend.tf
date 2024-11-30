terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-unique-fiap-fase4-database"
    key            = "terraform/state"
    region         = "us-east-1"
  }
}
