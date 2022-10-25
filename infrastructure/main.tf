module "demo_ec2_instance" {
    source        = "./ssm-ec2-module"
    vpc_id        = data.aws_vpc.talent_academy.id
    subnet_id     = data.aws_subnet.private.id
    ami_id        = data.aws_ami.my_ubuntu_image.id
    instance_name = "tf-module-demo1"
}

