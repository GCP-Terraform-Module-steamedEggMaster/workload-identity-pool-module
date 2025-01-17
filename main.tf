resource "google_iam_workload_identity_pool" "workload_identity_pool" {
  # 필수 옵션
  workload_identity_pool_id = var.workload_identity_pool_id # 워크로드 아이덴티티 풀 ID

  # 선택적 옵션
  display_name = var.display_name         # 워크로드 아이덴티티 풀의 표시 이름 (Optional)
  description  = var.description          # 워크로드 아이덴티티 풀의 설명 (Optional)
  disabled     = var.disabled             # 워크로드 아이덴티티 풀 활성화 여부 (Optional)
  project      = var.project              # GCP 프로젝트 ID (Optional)

  timeouts {
    create = var.timeout_create           # 생성 작업의 타임아웃
    update = var.timeout_update           # 업데이트 작업의 타임아웃
    delete = var.timeout_delete           # 삭제 작업의 타임아웃
  }
}