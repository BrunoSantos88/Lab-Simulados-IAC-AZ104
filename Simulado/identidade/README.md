# QUESTION 1

- Você tem um locatário do Azure AD que usa o Azure AD Connect para sincronizar com um domínio do AD DS (Active Directory Domain Services).
- Você precisa garantir que os usuários possam redefinir a senha do AD DS no portal do Azure. Os usuários devem ser capazes de usar dois métodos para redefinir sua senha.
- Quais são as duas ações que você deve executar? Cada resposta correta apresenta uma parte da solução.
      

- R: Na redefinição de senha no portal do Azure, defina as configurações de métodos de autenticação.
- R: Execute o Azure AD Connect e selecione write-back de senha.

# QUESTION 2

- No PowerShell, você executa o cmdlet Get-MgUser para um usuário e recebe os seguintes detalhes:
Id: 8755b347-3545-3876-3987-999999999999
DisplayName: Ben Smith
Mail: bsmith@contoso.com
UserPrincipalName: bsmith_contoso.com#EXT#@fabrikam.com
Qual instrução descreve com precisão o usuário?

- R: O usuário era um convidado no locatário.

# Question 3

- Você planeja criar 100 novos usuários usando a operação Criar usuários em massa no portal do Azure.
- 
Você precisa criar um arquivo CSV que contenha as informações do usuário.

Quais atributos você deve especificar no arquivo CSV para cada usuário?

R: displayName, userPrincipalName, passwordProfile e accountEnabled

# QUESTION 4

- Seu locatário do Azure AD e o domínio do Active Directory local contêm vários usuários.
  
Você precisa configurar a funcionalidade de write-back de senha SSPR (redefinição de senha por autoatendimento). A solução precisa minimizar custos.

Qual edição do Azure AD você deve usar?

- R: Licença P1

 # QUESTION 5
- Você tem uma assinatura do Azure que contém vários usuários e administradores.

Você está criando uma nova função personalizada usando o JSON a seguir.

{ 

  "Name": "Custom Role", 

  "Id": null, 

  "IsCustom": true, 

  "Description": "Custom Role description", 

  "Actions": [ 

    "Microsoft.Compute/*/read", 

    “Microsoft.Compute/snapshots/write”, 

    “Microsoft.Compute/snapshots/read”, 

    "Microsoft.Support/*" 

  ], 

  "NotActions": [ 

  “Microsoft.Compute/snapshots/delete” 

  ], 

  "AssignableScopes": [ 

    "/subscriptions/00000000-0000-0000-0000-000000000000", 

    "/subscriptions/11111111-1111-1111-1111-111111111111" 

  ] 

} 

# Quais três ações podem ser executadas por um usuário que recebe a função personalizada? Cada resposta correta apresenta uma solução completa.
Selecione todas as respostas aplicáveis.

- R: Chame o Suporte da Microsoft.
- R: Crie e leia um instantâneo.
- R: Leia todas as configurações da máquina virtual.

# QUESTION 6

- Você tem uma assinatura do Azure.
- Um administrador gerencia o acesso aos recursos no nível do grupo de recursos. O processo de atribuição é automatizado executando o script do PowerShell a seguir todas as noites.

- $rg = "RG1" 
$RoleName = "CustomRole1" 
$Role = Get-AzRoleDefinition -Name $RoleName 
New-AzRoleAssignment -SignInName user1@contoso.com `   
    -RoleDefinitionName $Role.Name `
    -ResourceGroupName $rg
    
- O User1 não consegue acessar o grupo de recursos RG1. Você descobre que o script falha ao ser concluído para novos usuários.

Você executa Get-AzRoleDefinition | Format-Table -Property Name, Id e recebe as seguintes informações:

Name: Custom Role 1, ID: 111-222-333

Name: Owner, ID: 222-333-444

Name: Contributor, ID: 333-444-555

Name: Reader, ID: 666-777-888

# Você precisa modificar o script para garantir que ele não falhe no futuro.
O que você deve alterar no script?

- Selecione somente uma resposta.
  
R: $RoleName = "111-222-333"


QUESTION 7
# Você tem uma assinatura do Azure que contém várias máquinas virtuais.

Você precisa garantir que um usuário chamado User1 possa exibir todos os recursos em um grupo de recursos chamado RG1. Você deve usar o princípio de privilégios mínimos.

# Qual função você deve atribuir ao User1?

R: Leitor

# QUESTION 8

- Você tem uma assinatura do Azure que contém um grupo de recursos chamado RG1. O RG1 contém uma máquina virtual chamada VM1 conectada a uma rede virtual chamada Network1.

Um usuário chamado Admin1 deve ser capaz de alterar as configurações de Network1.

Você precisa usar o PowerShell para atribuir ao Admin1 a função e as permissões apropriadas.

# Quais duas instruções do PowerShell você deve usar para concluVocê tem uma assinatura do Azure e um usuário chamado User1.

Você precisa atribuir ao User1 uma função que permita que o usuário crie e gerencie todos os tipos de recursos na assinatura. A solução deve impedir que o User1 atribua funções a outros usuários.

Qual função RBAC (controle de acesso baseado em função) do Azure você deve atribuir ao User1?ir a tarefa? Cada resposta correta apresenta uma parte da solução.

- R: New-AzRoleAssignment -ObjectId $User.id ` -RoleDefinitionName "Network Contributor" ` -ResourceName Network1 ` -ResourceType Microsoft.Network/virtualNetworks ` -ResourceGroupName RG1
- R: $User = Get-AzADUser -DisplayName adminVocê tem uma assinatura do Azure e um usuário chamado User1.


  # QUESTION 9

Você precisa atribuir ao User1 uma função que permita que o usuário crie e gerencie todos os tipos de recursos na assinatura. A solução deve impedir que o User1 atribua funções a outros usuários.
Qual função RBAC (controle de acesso baseado em função) do Azure você deve atribuir ao User1?

R: Colaborador

  
# QUESTION 10

- Você tem vários grupos de gerenciamento e assinaturas do Azure.

Você deseja impedir a exclusão acidental de recursos.

A quais três tipos de recursos você pode aplicar bloqueios de exclusão? Cada resposta correta apresenta uma solução completa.

- R: grupos de recursos
- R: Assinaturas
- R: máquinas virtuais

