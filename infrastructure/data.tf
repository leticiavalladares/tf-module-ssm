data "aws_ami" "my_ubuntu_image" {
  owners           = ["029687280754"]
    
  filter {
    name   = "name"
    values = ["apache-on-ubuntu"]
  }
}

data "aws_vpc" "talent_academy" {
  filter {
    name   = "tag:Name"
    values = ["vpc"]
  }
}

data "aws_subnet" "private" {
  filter {
    name   = "tag:Name"
    values = ["priv-subnet-1"]
  }
}