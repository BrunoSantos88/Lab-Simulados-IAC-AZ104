# Configurar as permissões necessárias para write-back de senha
Habilitar a opção de write-back de senha no Microsoft Entra Connect
Habilitar o write-back de senha na SSPR do Microsoft Entra

- Com a redefinição de senha self-service (SSPR) do Microsoft Entra, os usuários podem atualizar as respectivas senhas ou desbloquear as respectivas contas usando um navegador da Web. Recomendamos este vídeo sobre Como habilitar e configurar o SSPR no Microsoft Entra ID. Em um ambiente híbrido em que o Microsoft Entra ID está conectado a um ambiente local do Active Directory Domain Services (AD DS), esse cenário pode fazer com que as senhas sejam diferentes entre os dois diretórios.


 - Microsoft Entra ID. Usa licença de avaliação habilitada.

# Sincronizados. As seguintes permissões e opções precisam estar definidas na conta:

- Redefinir senha
- Alterar senha
- Permissões de gravação em lockoutTime
- Permissões de gravação em pwdLastSet
- Direitos estendidos para "Não permitir expiração da senha" no objeto raiz de cada domínio nessa floresta, caso ainda não estejam definidos.


# Implemnetar
  Link https://learn.microsoft.com/pt-br/training/modules/allow-users-reset-their-password/3-implement-azure-ad-self-service-password-reset

# Visão geral da colaboração B2B

  - A colaboração B2B é um recurso da ID externa do Microsoft Entra que permite a você convidar usuários para colaborar com sua organização. Com a colaboração B2B, você pode compartilhar com segurança os aplicativos e serviços de sua empresa com usuários externos enquanto mantém o controle de seus dados corporativos. Trabalhe de forma segura com parceiros externos, de grande ou pequeno porte, mesmo se eles não tiverem o Microsoft Entra ID ou um departamento de TI.
 
- LInk: https://learn.microsoft.com/pt-br/training/modules/create-users-and-groups-in-azure-active-directory/5-exercise-assign-users-azure-ad-groups
- LIik: https://learn.microsoft.com/pt-br/entra/external-id/what-is-b2b

# Criar usuários em massa no Microsoft Entra ID

-  O Microsoft Entra ID, parte do Microsoft Entra, oferece suporte a operações de criação e exclusão de usuários em massa e oferece suporte ao download de listas de usuários. Basta preencher o modelo de valores separados por vírgulas (CSV) que você pode baixar no portal do Azure.

Link: https://learn.microsoft.com/pt-br/entra/identity/users/users-bulk-add

# Usar o RBAC (controle de acesso baseado em função) para garantir que os recursos necessários estejam protegidos e que os usuários ainda possam acessá-los.

- O que você precisa saber sobre o RBAC do Azure

Veja algumas coisas que você pode fazer com o RBAC do Azure:

Permitir que um aplicativo acesse todos os recursos em um grupo de recursos.

Permitir que um usuário gerencie VMs em uma assinatura e que outro usuário gerencie redes virtuais.

Permitir que um grupo de DBAs (administradores de banco de dados) gerencie bancos de dados SQL em uma assinatura.

Permitir que um usuário gerencie todos os recursos em um grupo de recursos, como VMs, sites e sub-redes.

# O que considerar ao usar o RBAC do Azure

- Ao pensar em como implementar funções e atribuições de escopo na organização, considere estes pontos:

Considere os solicitantes. Planeje a estratégia para acomodar todos os tipos de acesso aos recursos. Entidades de segurança são criadas para qualquer coisa que solicite acesso aos recursos. Determine quem são os solicitantes na organização. Os solicitantes podem ser usuários internos ou externos, grupos de usuários, aplicativos e serviços, recursos e assim por diante.

Considere as funções. Examine os tipos de responsabilidades de trabalho e os cenários de trabalho na organização. As funções geralmente são criadas em torno dos requisitos para cumprir tarefas de trabalho ou atingir metas de trabalho. Determinados usuários, como administradores, controladores corporativos e engenheiros, podem exigir um nível de acesso superior ao necessário para a maioria dos usuários. Algumas funções podem ser definidas para fornecer o mesmo acesso a todos os membros de uma equipe ou departamento para recursos ou aplicativos específicos.

Considere o escopo das permissões. Pense em como você pode garantir a segurança controlando o escopo das permissões para atribuições de função. Descreva os tipos de permissões e os níveis de escopo aos quais você precisa dar suporte. Você pode aplicar diferentes níveis de escopo a uma só função para dar suporte a solicitantes em cenários diferentes.

Considere as definições internas ou personalizadas. Examine as definições de função interna no RBAC do Azure. As funções internas podem ser usadas no estado em que se encontram ou ajustadas para atender aos requisitos específicos da organização. Também é possível criar definições de função personalizadas do zero.

- Criando uma Função
Link: https://learn.microsoft.com/pt-br/training/modules/configure-role-based-access-control/3-create-role-definition



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

- Quais três ações podem ser executadas por um usuário que recebe a função personalizada? Cada resposta correta apresenta uma solução completa.

- Selecione todas as respostas aplicáveis.

R:Chame o Suporte da Microsoft.
R:Crie e leia um instantâneo.
R:Leia todas as configurações da máquina virtual.
