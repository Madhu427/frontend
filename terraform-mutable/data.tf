data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "base-with-ansible"
  owners           = ["self"]
  }

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "tf-bucket-61"
    key    = "vpc/${ENV}/terraform.tfstate"
    region = "us-east-1"
  }
}




