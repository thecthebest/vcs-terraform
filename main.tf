#vcs workflow
terraform {

}

provider "aws" {
  region = "us-east-1"
}

module "apache" {
  source        = "thecthebest/apache-example/aws"
  version       = "1.0.0"
  ami_id        = var.ami_id
  vpc_id        = var.vpc_id
  instance_type = "t2.micro"
  server_name   = var.server_name
  public_key    = var.public_key
}

output "public_ip" {
  value = module.apache.public_ip
}