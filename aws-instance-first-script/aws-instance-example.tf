# resource "aws_instance" "web1" {
#    ami           = "${lookup(var.ami_id, var.region)}"
#    instance_type = "t2.micro"
#  }
resource "aws_s3_bucket" "bucket_testt_divesh" {
  bucket = "buckettesttdivesh"
  acl    = "private"

  tags = {
    Name        = "buckettesttdivesh"
    Environment = "Dev"
  }
}
