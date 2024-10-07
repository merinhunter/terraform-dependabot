resource "random_pet" "this" {
  length = 2
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "4.2.0"

  bucket        = random_pet.this.id
  force_destroy = true
}

module "test" {
  source = "./modules/test"
}
