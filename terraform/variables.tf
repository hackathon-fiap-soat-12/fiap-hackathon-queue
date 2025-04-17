variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Account Region"
}

variable "dlq_retention_period" {
  type        = number
  default     = 1209600
  description = "DLQ Retention Period in seconds"
}

variable "dlq_max_message_size" {
  type        = number
  default     = 262144
  description = "DLQ Max message size"
}

variable "queue_visibility_timeout" {
  type        = number
  default     = 3600
  description = "Queue Visibility Timeout in seconds"
}

variable "queue_message_retention" {
  type        = number
  default     = 86400
  description = "Queue message retention"
}

variable "queue_delay" {
  type        = number
  default     = 0
  description = "Queue delay in seconds"
}

variable "queue_max_message_size" {
  type        = number
  default     = 262144
  description = "Queue Max message size"
}

variable "queue_receive_wait_time" {
  type        = number
  default     = 0
  description = "Queue receive wait time in seconds"
}

variable "queue_redrive_max_receive_count" {
  type        = number
  default     = 5
  description = "Redrive configuration for max receive count"
}
