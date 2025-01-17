output "workload_identity_pool_info" {
  description = "워크로드 아이덴티티 풀에 대한 모든 주요 정보"
  value = {
    id           = module.workload_identity_pool.id           # 리소스의 고유 ID
    state        = module.workload_identity_pool.state        # 워크로드 아이덴티티 풀의 상태
    name         = module.workload_identity_pool.name         # 리소스 이름
    display_name = module.workload_identity_pool.display_name # 표시 이름
    description  = module.workload_identity_pool.description  # 리소스 설명
    project      = module.workload_identity_pool.project      # 프로젝트 ID
    disabled     = module.workload_identity_pool.disabled     # 비활성화 상태 여부
  }
}