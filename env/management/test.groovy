folder ('OKTS/INFRA')
pipelineJob('OKTS/INFRA/INFRAJOB') {
    parameters {
        choiceParam('Network', ['True', 'False'])
        choiceParam('Openvpn', ['True', 'False'])
        choiceParam('ALB', ['True', 'False'])
        choiceParam('BP', ['True', 'False'])
        choiceParam('EKS', ['True', 'False'])
    }
    definition {
        cpsScm {
                scm {
                    git {
                        remote{
                            name('origin')
                            url('https://gitlab.com/ot-client/central-team/ot-orchid-international/infrastructure.git')
                            credentials('opstree')
                            branch('EKS')
                        }
                    }
                }
            scriptPath('env/management/network/Jenkinsfile')
        }
    }
}