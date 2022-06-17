folder ('OKTS')
folder ('OKTS/INFRA')
pipelineJob('OKTS/INFRA/INFRAJOB') {
    parameters {
        choiceParam('Network', ['True', 'False'], 'Do you setup your own custom VPC' )
        choiceParam('Openvpn', ['True', 'False'], 'Do you want setup your Openvpn Server')
        choiceParam('ALB', ['True', 'False'], 'Do you want to setup  internal ALB')
        choiceParam('BP', ['True', 'False'], 'Do you want to Setup BP Server')
        choiceParam('EKS', ['True', 'False'], 'Do you want to setup EKS Cluster')
        stringParam('NETWORK_DIR', 'env/managemet/network', 'In which directory your network code')
        stringParam('OPENVPN_DIR', 'env/managemet/openvpn', 'In which directory your network code')
        stringParam('ALB_DIR', 'env/managemet/internal_alb', 'In which directory your network code')
        stringParam('BP_DIR', 'env/managemet/buildpiper', 'In which directory your network code')
        stringParam('EKS_DIR', 'env/managemet/EKS', 'In which directory your network code')
    }
    definition {
        cpsScm {
                scm {
                    git {
                        remote{
                            name('origin')
                            url('https://gitlab.com/ot-client/central-team/ot-orchid-international/infrastructure.git')
                            credentials('oopstree')
                            branch('EKS')
                        }
                    }
                }
            scriptPath('env/management/Jenkinsfile')
        }
    }
}