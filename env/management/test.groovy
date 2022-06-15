folder ('INFRA')
pipelineJob('INFRA/SingleNetworkSetupJob') {
    parameters {
        choiceParam('Network', ['True', 'False'], 'Do you want to setup Network')
    }
    parameters{
        choiceParam('Openvpn', ['True', 'False'], 'Do you want to setup Openvpn'),
        choiceParam('ALB', ['True', 'False'], 'Do you want to setup ALB'),
        choiceParam('BP', ['True', 'False'], 'Do you want to set BP'),
        choiceParam('EKS', ['True', 'False'], 'Do you want to setup EKS cluster')
    }
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