resource "aws_sqs_queue" "video-create-dlq" {
  name                       = "video-create-dlq"
  message_retention_seconds  = var.dlq_retention_period
  max_message_size           = var.dlq_max_message_size
}

resource "aws_sqs_queue" "process-video-dlq" {
  name                       = "process-video-dlq"
  message_retention_seconds  = var.dlq_retention_period
  max_message_size           = var.dlq_max_message_size
}

resource "aws_sqs_queue" "video-update-dlq" {
  name                       = "video-update-dlq"
  message_retention_seconds  = var.dlq_retention_period
  max_message_size           = var.dlq_max_message_size
}

resource "aws_sqs_queue" "notification-push-dlq" {
  name                       = "notification-push-dlq"
  message_retention_seconds  = var.dlq_retention_period
  max_message_size           = var.dlq_max_message_size
}
