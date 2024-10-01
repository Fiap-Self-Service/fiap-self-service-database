terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-unique-fiap-database"
    key            = "terraform/state"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks-fiap-database"
  }
}
