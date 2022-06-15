folder('OKTS')
folder('OKTS/Infra')

def INFRAJOB = multibranchPipelineJob('OKTS/Infra/INFRAJOB')
INFRAJOB.with {
    description 'Job to setup Testing'
        branchSources {
            branchSource {
                source {
                    git{
                        id('02')
                        remote('https://gitlab.com/ot-client/central-team/ot-orchid-international/infrastructure.git')
		                credentialsId('opstree')
                    }
                }
                strategy {
                    defaultBranchPropertyStrategy {
                        props {
                            noTriggerBranchProperty()
                        }
                    }
                }
            }
        }
        configure {
            def traits = it / 'sources' / 'data' / 'jenkins.branch.BranchSource' / 'source' / 'traits'
            traits << 'jenkins.plugins.git.traits.BranchDiscoveryTrait' {}
        }
        factory {
            workflowBranchProjectFactory {
                scriptPath('env/management/network/Jenkinsfile')
            }
        }
        orphanedItemStrategy {
            discardOldItems {
                numToKeep(20)
            }
        }
    }