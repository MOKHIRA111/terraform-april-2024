resource "aws_iam_user" "lb" {
  name = "loadbalancer"
}

resource "aws_iam_user" "lb2" {
  name = "loadbalancer2"
}

resource "aws_iam_user" "lb5" {
  name = "loadbalancer5"
}

resource "aws_iam_user" "lb4" {
  name = "loadbalancer4"
}


resource "aws_iam_group" "dev1" {
  name = "dev"
}

resource "aws_iam_group" "dev2" {
  name = "dev2"
}
resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.lb.name,
    aws_iam_user.lb2.name,
  ]

  group = aws_iam_group.dev2.name
}
resource "aws_iam_user" "hello" {
  name = "mokhira"
}




