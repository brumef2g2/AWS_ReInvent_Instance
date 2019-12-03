data "terraform_remote_state" "base_layer" {
  backend = "remote"

  config = {
    organization = "re-Invent"

    workspaces = {
      name = "AWS_ReInvent_2K19_Base_layer"
    }
  }
}

data "aws_ami" "ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-disco-19.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
