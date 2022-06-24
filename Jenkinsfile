node('nodejs') {
  stage 'build'
  openshiftBuild(buildConfig: 'nodejs-optydev-io-xyz', showBuildLogs: 'true')
  stage 'deploy'
  openshiftDeploy(deploymentConfig: 'nodejs-optydev-io-xyz')
}
