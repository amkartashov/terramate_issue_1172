# https://github.com/terramate-io/terramate/issues/1172

Affected code is in [test1/gen.tm.hcl](/test1/gen.tm.hcl)

## To reproduce:

```bash
git clone https://github.com/amkartashov/terramate_issue_1172.git && cd terramate_issue_1172
terramate generate
```

Output:

```
Code generation report

Failures:

- /test1
        error: /home/me/git/amkartashov/terramate_issue_1172/test1/gen.tm.hcl:3,12-25: lets eval: let.test: eval expression: There is no function named "tm_startswith".

Hint: '+', '~' and '-' means the file was created, changed and deleted, respectively.
```

## W/A:

Use tm_substr as in [test2/gen.tm.hcl](/test2/gen.tm.hcl)
