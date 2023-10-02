# Ermetic GitHub Action - IaC Sync (Terraform)

Use this Ermetic GitHub action to sync from Cloud to Code so that you can trace your cloud resources and issues back to
their code origins. Doing so can help you see which resource is the source of a detected risk, identify the owner, and
clearly see what needs to be fixed.

<img alt="Ermetic" src="../../../media/logo.svg " width="300" />

## Use the Ermetic GitHub Action

## GitHub Action Parameters

| Parameter                | Description                                                                                                                                                                                                                            | Default             | Example                       |
|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|-------------------------------|
| api-token                | (Required) The API token used to communicate with Ermetic. Generated in the Ermetic Console during initial GitHub Actions setup.                                                                                                       |                     |                               |
| api-url                  | (Required) The URL of the Ermetic API. The API URL varies based on the region in which your Ermetic environment is deployed.                                                                                                           |                     | `https://us.app.ermetic.com/` |
| logs                     | Whether to print log messages to the standard workflow output. Log messages include information about the run process of the scanner and debug information, such as the number of files/lines scanned. Possible values: `true` `false` |                     | `true`                        |
| path                     | The Terraform root module path that will be synced by Ermetic, entered as a comma separated list. If left blank, Ermetic will sync the working directory.                                                                              |                     | `prod/,stg/`                  |
| silent                   | Whether to print sync result content to the standard workflow output. Sync result output contains information about files that have been traced back to their origins. Independent from logs. Possible values: `true` `false`          | `false`             | `false`                       |
| skip-code-commit-history | Whether to include commit information related to the sync. This includes the user who performed the commit, as well as the commit time and hash. Possible values: `true` `false`                                                       | `false`             | `false`                       |
| state-file-path          | The Terraform state file path.                                                                                                                                                                                                         | `terraform.tfstate` | `terraform.tfstate`           | 
