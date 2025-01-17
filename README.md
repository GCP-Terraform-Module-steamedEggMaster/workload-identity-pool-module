# workload-identity-pool-module
GCP Terraform Workload Identity Pool Module Repo

GCP에서 Workload Identity Pool을 생성하고 관리하기 위한 Terraform 모듈입니다.  <br>
이 모듈은 Kubernetes 서비스 계정과 GCP 리소스 간의 안전한 통합을 지원합니다.

<br>

## 📑 **목차**
1. [모듈 특징](#모듈-특징)
2. [사용 방법](#사용-방법)
    1. [사전 준비](#1-사전-준비)
    2. [입력 변수](#2-입력-변수)
    3. [모듈 호출 예시](#3-모듈-호출-예시)
    4. [출력값 (Outputs)](#4-출력값-outputs)
    5. [지원 버전](#5-지원-버전)
    6. [모듈 개발 및 관리](#6-모듈-개발-및-관리)
3. [테스트](#테스트)
4. [주요 버전 관리](#주요-버전-관리)
5. [기여](#기여-contributing)
6. [라이선스](#라이선스-license)

---

## 모듈 특징

- Workload Identity Pool을 생성하고 관리.
- Kubernetes 서비스 계정과 GCP 리소스 간의 IAM 역할 연동.
- 생성된 Workload Identity Pool의 주요 속성 출력.

---

## 사용 방법

### 1. 사전 준비

다음 사항을 확인하세요:
1. Google Cloud 프로젝트 준비.
2. 적절한 IAM 권한 필요: `roles/iam.admin`.

<br>

### 2. 입력 변수

| 변수명               | 타입   | 필수 여부 | 기본값 | 설명                                                                 |
|----------------------|--------|-----------|--------|----------------------------------------------------------------------|
| `workload_identity_pool_id` | string | ✅        | 없음   | Workload Identity Pool의 고유 ID                                     |
| `display_name`        | string | ❌        | `null` | Workload Identity Pool의 표시 이름                                    |
| `description`         | string | ❌        | `null` | Workload Identity Pool의 설명                                         |
| `disabled`            | bool   | ❌        | `false`| Workload Identity Pool 비활성화 여부                                  |
| `project`             | string | ❌        | `null` | GCP 프로젝트 ID (지정하지 않으면 provider 기본값 사용)                 |
| `timeout_create`      | string | ❌        | `20m`  | 생성 타임아웃                                                         |
| `timeout_update`      | string | ❌        | `20m`  | 업데이트 타임아웃                                                     |
| `timeout_delete`      | string | ❌        | `20m`  | 삭제 타임아웃                                                         |

<br>

### 3. 모듈 호출 예시

```hcl
module "workload_identity_pool" {
  source = "git::https://github.com/GCP-Terraform-Module-steamedEggMaster/workload-identity-pool-module.git?ref=v1.0.0"

  workload_identity_pool_id = "my-pool-id"
  display_name              = "My Workload Identity Pool"
  description               = "This is a workload identity pool for Kubernetes integration"
  disabled                  = false
  project                   = "my-project-id"
  timeout_create            = "30m"
  timeout_update            = "30m"
  timeout_delete            = "30m"
}
```

<br>

### 4. 출력값 (Outputs)

| 출력명        | 설명                                                                                       |
|---------------|--------------------------------------------------------------------------------------------|
| `id`          | 리소스의 고유 ID (형식: `projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}`) |
| `workload_pool_domain` | Workload Identity Pool의 구글 도메인                                            |
| `state`       | Workload Identity Pool의 현재 상태 (ACTIVE, DELETED 등)                                   |
| `name`        | Workload Identity Pool의 리소스 이름                                                      |
| `display_name`| Workload Identity Pool의 표시 이름                                                        |
| `description` | Workload Identity Pool의 설명                                                             |
| `project`     | Workload Identity Pool이 속한 GCP 프로젝트 ID                                             |
| `disabled`    | Workload Identity Pool 비활성화 여부                                                      |

<br>

### 5. 지원 버전

#### a.  Terraform 버전
| 버전 범위 | 설명                              |
|-----------|-----------------------------------|
| `1.10.3`   | 최신 버전, 지원 및 테스트 완료                  |

#### b. Google Provider 버전
| 버전 범위 | 설명                              |
|-----------|-----------------------------------|
| `~> 6.0`  | 최소 지원 버전                   |

<br>

### 6. 모듈 개발 및 관리

- **저장소 구조**:
  ```
  workload-identity-pool-module/
  ├── .github/workflows/  # github actions 자동화 테스트
  ├── examples/           # 테스트를 위한 루트 모듈 모음 디렉터리
  ├── test/               # 테스트 구성 디렉터리
  ├── main.tf             # 모듈의 핵심 구현
  ├── variables.tf        # 입력 변수 정의
  ├── outputs.tf          # 출력 정의
  ├── versions.tf         # 버전 정의
  ├── README.md           # 문서화 파일
  ```

<br>

## Terratest를 이용한 테스트
이 모듈을 테스트하려면 제공된 Go 기반 테스트 프레임워크를 사용하세요. 아래를 확인하세요:

1. Terraform 및 Go 설치.
2. 필요한 환경 변수 설정 (GCP_PROJECT_ID, API_SERVICES 등).
3. 테스트 실행:
```bash
go test -v ./test
```

<br>

## 주요 버전 관리
이 모듈은 [Semantic Versioning](https://semver.org/)을 따릅니다.  
안정된 버전을 사용하려면 `?ref=<version>`을 활용하세요:

```hcl
source = "git::https://github.com/GCP-Terraform-Module-steamedEggMaster/workload-identity-pool-module.git?ref=v1.0.0"
```

### Module ref 버전
| Major | Minor | Patch |
|-----------|-----------|----------|
| `1.0.0`   |    |   |


<br>

## 기여 (Contributing)
기여를 환영합니다! 버그 제보 및 기능 요청은 GitHub Issues를 통해 제출해주세요.

<br>

## 라이선스 (License)
[MIT License](LICENSE)