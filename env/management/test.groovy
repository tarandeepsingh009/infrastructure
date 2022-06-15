folder ('INFRA')
pipelineJob('INFRA/SingleNetworkSetupJob') {
  properties([parameters([choice(choices: ['True', 'False'], description: 'Do you want to Setup Network', name: 'Network'), choice(choices: ['True', 'False'], description: 'Do you want to setup Openvpn', name: 'Openvpn'), choice(choices: ['True', 'False'], description: 'Do you want to setup ALB', name: 'ALB'), choice(choices: ['True', 'False'], description: 'Do you want to setup BP', name: 'BP'), choice(choices: ['True', 'Flase'], description: 'Do you want to setup EKS Cluster', name: 'EKS')])])
    definition {
        cpsScm {
                scm {
                    git {
                        remote{
                            name('origin')
                            url('https://gitlab.com/ot-client/central-team/ot-orchid-international/infrastructure.git')
                            credentials('a7090023-82ec-41cf-b990-166c0515a968')
                            branch('EKS')
                        }
                    }
                }
            scriptPath('env/management/network/Jenkinsfile')
        }
    }
}