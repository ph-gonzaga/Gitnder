Feature: Acesso

Para que eu possa conhecer Devs e QAs com Skills em comum
Sendo um usuario que possui uma conta no Github
Quero poder iniciar uma nova sessão

Scenario: Nova Sessão
    Given que "ph-gonzaga" e a minha conta do Github
    And possuo os skills "Ruby, JavaScript, PHP, Cucumber, Capybara"
    When eu entro no Gitnder
    Then devo ver a area logada

Scenario: Conta nao existe no GitHub
    Given que "ph-gonzaga404" nao é uma conta do Github
    When eu entro no Gitnder
    Then devo ver a mensagem de alerta: "Conta Github não existe :("

Scenario: Conta nao informada
    Given que "" é uma conta do Github
    When eu entro no Gitnder
    Then devo ver a mensagem de alerta: "Conta Github não existe :("
