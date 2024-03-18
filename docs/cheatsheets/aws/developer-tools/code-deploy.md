# CodeDeploy :fontawesome-brands-aws:

---

An application specific file(AppSpec file), which is unique to CodeDeploy, is a YAML formattted or JSON formatted file. The AppSpec file is used to manage each deployment as a series of lifecycle even hooks, which are defined in the file.

## AppSpec file on an EC2

Example

```yml linenums="1" title="appspec.yml"
version: 0.0
os: linux
files:
  - source: dist/my-angular-project
    destination: /var/www/my-angular-project
permissions:
  - object: /var/www/my-angular-project
    pattern: '**'
    mode: '0755'
    owner: root
    group: root
    type:
      - file
      - directory
hooks:
  ApplicationStart:
    - location: deploy-scripts/application-start-hook.sh
      timeout: 300
```
