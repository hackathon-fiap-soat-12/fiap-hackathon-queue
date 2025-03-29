resource "aws_sqs_queue" "video-create-queue" {
  name                       = "video-create-queue"
  visibility_timeout_seconds = var.queue_visibility_timeout
  message_retention_seconds  = var.queue_message_retention
  delay_seconds              = var.queue_delay
  max_message_size           = var.queue_max_message_size
  receive_wait_time_seconds  = var.queue_receive_wait_time

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.video-create-dlq.arn
    maxReceiveCount     = var.queue_redrive_max_receive_count
  })

  depends_on = [aws_sqs_queue.video-create-dlq]
}

resource "aws_sqs_queue" "process-video-queue" {
  name                       = "process-video-queue"
  visibility_timeout_seconds = var.queue_visibility_timeout
  message_retention_seconds  = var.queue_message_retention
  delay_seconds              = var.queue_delay
  max_message_size           = var.queue_max_message_size
  receive_wait_time_seconds  = var.queue_receive_wait_time

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.process-video-dlq.arn
    maxReceiveCount     = var.queue_redrive_max_receive_count
  })

  depends_on = [aws_sqs_queue.process-video-dlq]
}

resource "aws_sqs_queue" "video-update-queue" {
  name                       = "video-update-queue"
  visibility_timeout_seconds = var.queue_visibility_timeout
  message_retention_seconds  = var.queue_message_retention
  delay_seconds              = var.queue_delay
  max_message_size           = var.queue_max_message_size
  receive_wait_time_seconds  = var.queue_receive_wait_time

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.video-update-dlq.arn
    maxReceiveCount     = var.queue_redrive_max_receive_count
  })

  depends_on = [aws_sqs_queue.video-update-dlq]
}

resource "aws_sqs_queue" "notification-push-queue" {
  name                       = "notification-push-queue"
  visibility_timeout_seconds = var.queue_visibility_timeout
  message_retention_seconds  = var.queue_message_retention
  delay_seconds              = var.queue_delay
  max_message_size           = var.queue_max_message_size
  receive_wait_time_seconds  = var.queue_receive_wait_time

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.notification-push-dlq.arn
    maxReceiveCount     = var.queue_redrive_max_receive_count
  })

  depends_on = [aws_sqs_queue.notification-push-dlq]
}
