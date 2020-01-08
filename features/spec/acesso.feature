Feature: Acesso

Para que eu possa conhecer Devs e QAs com Skills em comum
Sendo um usuario que possui uma conta no Github
Quero poder iniciar uma nova sessão

Scenario: Nova Sessão
    Given que eu possuo a conta "ph-gonzaga"
    And possuo os skills "Ruby, JavaScript, PHP, Cucumber, Capybara"
    When eu entro no Gitnder
    Then devo ver a area logada

Scenario: Conta nao existe no GitHub
    Given que eu possuo a conta "ph-gonzaga404"
    When eu entro no Gitnder
    Then devo ver a mensagem de alerta: "Conta Github não existe :("

Scenario: Conta nao informada
    Given que "" é uma conta do Github
    When eu entro no Gitnder
    Then devo ver a mensagem de alerta: "Conta Github não existe :("
