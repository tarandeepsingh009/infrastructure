folder ('INFRA')
pipelineJob('INFRA/SingleNetworkSetupJob') {
choiceParam('Network', ['True', 'False'])
choiceParam('Openvpn', ['True', 'False'])
choiceParam('ALB', ['True', 'False'])
choiceParam('BP', ['True', 'False'])
choiceParam('EKS', ['True', 'False'])
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