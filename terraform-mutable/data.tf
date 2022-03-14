data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "devopsLP"
  owners           = ["self"]
  }

output "out1" {
  value =  data.aws_ami.ami
}