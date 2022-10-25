resource "aws_iam_instance_profile" "instance_profile" {
  name = "${var.instance_name}-profile"
  role = aws_iam_role.instance_role.name
}

resource "aws_iam_role" "instance_role" {
  name = "${var.instance_name}-role"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
               "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "SSMPolicy" {
  role       = aws_iam_role.instance_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}