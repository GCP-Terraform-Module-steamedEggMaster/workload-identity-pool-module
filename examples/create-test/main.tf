module "workload_identity_pool" {
  source = "../../"

  workload_identity_pool_id = "test-pool-id" # 워크로드 아이덴티티 풀 ID
  display_name              = "Example Pool"    # 표시 이름
  description               = "This is an example workload identity pool" # 설명
  disabled                  = false             # 활성화 여부
}