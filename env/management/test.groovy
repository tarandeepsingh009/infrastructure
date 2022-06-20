folder ('OKTS')
folder ('OKTS/INFRA')
pipelineJob('OKTS/INFRA/INFRAJOB') {
    definition {
        cpsScm {
                scm {
                    git {
                        remote{
                            name('origin')
                            url('https://gitlab.com/ot-client/central-team/ot-orchid-international/infrastructure.git')
                            credentials('Sohan')
                            branch('EKS')
                        }
                    }
                }
            scriptPath('env/management/Jenkinsfile')
        }
    }
}