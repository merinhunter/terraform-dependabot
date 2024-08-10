resource "random_pet" "this" {
  length = 2
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "4.0.0"  # ~> 4.1.0

  bucket        = random_pet.this.id
  force_destroy = true
}
