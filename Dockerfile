FROM governmentpaas/cf-cli:cf7

LABEL "name"="GOV.UK PaaS CLI GitHub Action"
LABEL "maintainer"="gov-uk-paas-support@digital.cabinet-office.gov.uk"
LABEL "version"="0.1.0"

LABEL "com.github.actions.name"="GitHub Action for GOV.UK PaaS"
LABEL "com.github.actions.description"="GitHub Action for use with the GOV.UK PaaS Cloud Foundry command line interface Docker image."
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="blue"

COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
