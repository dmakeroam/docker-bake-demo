group "all" {
  targets = ["frontend", "backend"]
}

variable "backend_tag" {
  default = "latest"
}

target "backend" {
  context = "./backend"
  dockerfile = "./Dockerfile"
  tags = ["dmakeroam/backend:${backend_tag}"]
}

variable "frontend_tag" {
  default = "latest"
}

target "frontend" {
  context = "./frontend"
  dockerfile = "./Dockerfile"
  tags = ["dmakeroam/frontend:${frontend_tag}"]
}