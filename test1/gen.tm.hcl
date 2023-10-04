generate_hcl "gen.tf" {
  lets {
    test = tm_startswith(terramate.stack.path.absolute, "/")
  }
  content {
  }
}
