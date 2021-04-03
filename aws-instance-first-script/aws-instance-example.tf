# resource "aws_instance" "web1" {
#    ami           = "${lookup(var.ami_id, var.region)}"
#    instance_type = "t2.micro"
#  }
resource "aws_s3_bucket" "bucket_test" {
  bucket = "my-test-bucket"
  acl    = "private"

  tags = {
    Name        = "my-test-bucket"
    Environment = "Dev"
  }
}
