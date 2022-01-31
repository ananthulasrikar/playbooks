# install working plugins:
# yarn list --pattern roadiehq
# yarn list --pattern backstage

cd packages/app
# https://github.com/backstage/backstage/tree/master/plugins/pagerduty
yarn add @backstage/plugin-pagerduty

# https://github.com/RoadieHQ/backstage-plugin-datadog
yarn add @roadiehq/backstage-plugin-datadog

# https://github.com/RoadieHQ/roadie-backstage-plugins/tree/main/plugins/backstage-plugin-github-insights
yarn add @roadiehq/backstage-plugin-github-insights

# https://github.com/RoadieHQ/roadie-backstage-plugins/tree/main/plugins/backstage-plugin-github-pull-requests
yarn add @roadiehq/backstage-plugin-github-pull-requests

# https://backstage.io/docs/features/kubernetes/configuration
yarn add @backstage/plugin-kubernetes


# yet to test:
# yarn add @backstage/plugin-kafka
# yarn add @roadiehq/backstage-plugin-jira

# working
cd packages/backend
yarn add @backstage/plugin-kubernetes-backend
	
# yet to test:
yarn add @backstage/plugin-kafka-backend


cd packages/backend
yarn add pg
