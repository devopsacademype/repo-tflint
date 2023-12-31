resource "aws_instance" "web" {
   
  #checkov:skip=CKV_AWS_79:Metadata of EC2 Instance not required
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_sg.id]
  iam_instance_profile   = var.iam_instance_profile
  
  #tfsec:ignore:aws-ec2-enforce-http-token-imds 
  metadata_options {
    
  }
}