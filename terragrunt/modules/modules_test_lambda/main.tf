resource "aws_lambda_function" "test_lambda" {
  function_name = var.lambda_name
  role          = aws_iam_role.lambda_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  filename      = "lambda_test.zip"
  source_code_hash = filebase64sha256("lambda_test.zip")

  # test No encryption for env vars
  environment {
    variables = {
      SECRET_KEY = "test-secret-value"
      DEBUG      = "true"
    }
  }
    #test lack of vpc configuration
}