data "aws_caller_identity" "current" {}
data "aws_iam_policy_document" "Inspector_Remediation_SNS_Topic_Policy_Data" {
  policy_id = "__default_policy_ID"

  statement {
    actions = [
      "SNS:Publish",
    ]

    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["${var.InspectorRemediationSNSTopicPolicyData_USWEST1_Principal}"]
    }

    resources = [
      "${aws_sns_topic.Inspector_Remediation_SNS_Topic.arn}",
    ]

    sid = "__default_statement_ID"
  }
}
data "aws_iam_policy" "Data_Policy_AmazonSSMFullAccess" {
  arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
}
data "aws_iam_policy" "Data_Policy_AWSLambdaBasicExecutionRole" {
  arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}
data "aws_iam_policy" "Data_Policy_AmazonInspectorReadOnlyAccess" {
  arn = "arn:aws:iam::aws:policy/AmazonInspectorReadOnlyAccess"
}