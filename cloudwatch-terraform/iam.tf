data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      type        = "Federated"
      identifiers = ["arn:aws:iam::${var.aws_account_id}:oidc-provider/${var.oidc_provider}"]
    }

    condition {
      test     = "StringEquals"
      variable = "${var.oidc_provider}:sub"
      values   = ["system:serviceaccount:amazon-cloudwatch:cloudwatch-agent"]
    }
  }
}

resource "aws_iam_policy" "cloudwatch_policy" {
  name        = "CloudWatchAgentPolicy"
  description = "Policy for CloudWatch agent"
  policy      = file("${path.module}/cloudwatch-policy.json")
}

resource "aws_iam_role" "cloudwatch_agent_role" {
  name               = "cloudwatch-agent-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
}

resource "aws_iam_role_policy_attachment" "attach_policy" {
  role       = aws_iam_role.cloudwatch_agent_role.name
  policy_arn = aws_iam_policy.cloudwatch_policy.arn
}

