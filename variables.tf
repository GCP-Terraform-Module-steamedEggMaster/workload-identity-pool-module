# 워크로드 아이덴티티 풀 ID
variable "workload_identity_pool_id" {
  description = "워크로드 아이덴티티 풀의 고유 ID (4-32자, gcp-로 시작 불가)"
  type        = string
}

# 표시 이름
variable "display_name" {
  description = "워크로드 아이덴티티 풀의 표시 이름 (최대 32자)"
  type        = string
  default     = null
}

# 설명
variable "description" {
  description = "워크로드 아이덴티티 풀의 설명 (최대 256자)"
  type        = string
  default     = null
}

# 비활성화 여부
variable "disabled" {
  description = "워크로드 아이덴티티 풀 비활성화 여부"
  type        = bool
  default     = false
}

# GCP 프로젝트 ID
variable "project" {
  description = "워크로드 아이덴티티 풀을 생성할 GCP 프로젝트 ID (지정하지 않으면 provider 기본값 사용)"
  type        = string
  default     = null
}

# 생성 타임아웃
variable "timeout_create" {
  description = "리소스 생성 작업의 타임아웃 (기본값: 20분)"
  type        = string
  default     = "20m"
}

# 업데이트 타임아웃
variable "timeout_update" {
  description = "리소스 업데이트 작업의 타임아웃 (기본값: 20분)"
  type        = string
  default     = "20m"
}

# 삭제 타임아웃
variable "timeout_delete" {
  description = "리소스 삭제 작업의 타임아웃 (기본값: 20분)"
  type        = string
  default     = "20m"
}