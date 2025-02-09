resource "github_repository" "this" {
  name                 = var.repository_name
  description          = var.repository_description
  visibility           = var.visibility
  vulnerability_alerts = var.vulnerability_alerts
}

resource "github_branch_protection" "this" {
  count          = var.protect_branch ? 1 : 0
  repository_id  = github_repository.this.node_id
  pattern        = var.branch_pattern
  enforce_admins = var.protected_branch_enforce_admins

}