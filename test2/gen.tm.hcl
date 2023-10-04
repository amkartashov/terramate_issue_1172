generate_hcl "gen.tf" {
  lets {
    test = tm_substr(terramate.stack.path.absolute, 0, 1) == "/"
  }
  content {
  }
}
