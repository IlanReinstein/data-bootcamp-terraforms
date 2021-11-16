variable "raw_name" {
  description = "The name of the Google Cloud Storage bucket. Must be globally unique."
}
variable "stage_name" {
  description = "The name of the Google Cloud Storage bucket. Must be globally unique."
}

variable "project_id" {
  description = "The ID of the google project to which the resource belongs. If it is not provided, the provider project is used."
  default     = ""
}

variable "region" {
  description = "The GCS region. If it is not provided, the provider region is used."
  default     = ""
}
