data "archive_file" "lambda" {
  type        = "zip"
  source_file = "lambda_code.py"
  output_path = "lambda_code.zip"
}

resource "aws_lambda_function" "my_lambda_function" {
  function_name = "my_lambda_function"
  role          = aws_iam_role.lambda_role.arn
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.12"
  source_code_hash = data.archive_file.lambda.output_base64sha256
  filename = "lambda_code.zip"
  architectures = [ "arm64" ]
}