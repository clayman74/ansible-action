# Ansible for GitHub Action
This action allows you to run `ansible` and `ansible-lint` to check, test and run playbooks and roles in your pipeline.

## Usage
To use the action simply add the following lines to your `.github/main.workflow`.

```hcl
action "Lint" {
  uses = "docker://clayman083/ansible-action"
  args = ["ansible-lint", "."]
}

## License
The Dockerfile and associated scripts and documentation in this project are released under the [MIT](license).
```

