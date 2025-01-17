# 워크로드 아이덴티티 풀 ID 출력
output "id" {
  description = "리소스의 고유 ID (형식: projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}})"
  value       = google_iam_workload_identity_pool.workload_identity_pool.id
}

output "workload_pool_domain" {
  description = "Workload Identity Pool 구글 도메인"
  value       = "${var.workload_identity_pool_id}.svc.id.goog"
}

# 워크로드 아이덴티티 풀의 상태 출력
output "state" {
  description = "워크로드 아이덴티티 풀의 현재 상태 (ACTIVE, DELETED 등)"
  value       = google_iam_workload_identity_pool.workload_identity_pool.state
}

# 워크로드 아이덴티티 풀의 이름 출력
output "name" {
  description = "워크로드 아이덴티티 풀의 리소스 이름 (형식: projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id})"
  value       = google_iam_workload_identity_pool.workload_identity_pool.name
}

# 워크로드 아이덴티티 풀의 표시 이름 출력
output "display_name" {
  description = "워크로드 아이덴티티 풀의 표시 이름"
  value       = google_iam_workload_identity_pool.workload_identity_pool.display_name
}

# 워크로드 아이덴티티 풀의 설명 출력
output "description" {
  description = "워크로드 아이덴티티 풀의 설명"
  value       = google_iam_workload_identity_pool.workload_identity_pool.description
}

# 워크로드 아이덴티티 풀이 속한 프로젝트 ID 출력
output "project" {
  description = "워크로드 아이덴티티 풀이 속한 GCP 프로젝트 ID"
  value       = google_iam_workload_identity_pool.workload_identity_pool.project
}

# 워크로드 아이덴티티 풀의 활성화 여부 출력
output "disabled" {
  description = "워크로드 아이덴티티 풀이 비활성화 상태인지 여부"
  value       = google_iam_workload_identity_pool.workload_identity_pool.disabled
}