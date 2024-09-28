terraform {
  backend "s3" {
    bucket = "restaurant-group-23-backend-tf"
    key = "restaurant/terraform.tfstate"
    region = "us-east-1"
  }
}