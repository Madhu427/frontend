resource "aws_instance" "ec2-inst" {
  count         = var.INSTANCE_COUNT
  ami           = data.aws_ami.ami1.id
  instance_type = var.INSTANCE_TYPE

#  tags = {
#    Name = "${var.COMPONENT}-${var.ENV}-${count.index + 1}"
#  }
}

output "out" {
 value =  data.aws_ami.ami1.id
}