Folder('OKTS')
folder ('OKTS/INFRA')
pipelineJob('OKTS/INFRA/INFRAJOB') {
    parameters {
        choiceParam('Network', ['True', 'False'], 'Do you setup your own custom VPC' )
        choiceParam('Openvpn', ['True', 'False'], 'Do you want setup your Openvpn Server')
        choiceParam('ALB', ['True', 'False'], 'Do you want to setup  internal ALB')
        choiceParam('BP', ['True', 'False'], 'Do you want to Setup BP Server')
        choiceParam('EKS', ['True', 'False'], 'Do you want to setup EKS Cluster')
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
            scriptPath('env/management/Jenkinsfile')
        }
    }
}