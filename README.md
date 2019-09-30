# GitHub Action for GOV.UK PaaS

GitHub Action for use with the GOV.UK PaaS Cloud Foundry command line interface Docker image.

## Usage

Without running any `cf-cli` commands, this action will use `cf auth` to authenticate with Cloud Foundry.

If you don't set a value for `CF_API`, the default is `https://api.cloud.service.gov.uk`.

```yaml
uses: alphagov/paas-cf/actions/cli@cf7
name: Push to some instance of CloudFoundry  
  run: push --strategy rolling -f manifest.yml # <- Example CF command
  env:
    CF_API: "https://api.example.com"
    CF_ORG: "example-organisation"
    CF_SPACE: "production"
    CF_USERNAME: "username@example.com"
    # Here's how to set CFPassword - https://help.github.com/en/articles/virtual-environments-for-github-actions#creating-and-using-secrets-encrypted-variables
    CF_PASSWORD: ${{ secrets.CFPassword }}
```

The Action directory is tagged with @cf7, since the master branch of `paas-cf` doesn't currently use CloudFoundry CLI version 7. 