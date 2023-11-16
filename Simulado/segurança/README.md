 # Simulado AZ-104 Microsoft 

 - Perguntas duvidas


# Quais são os dois parâmetros necessários para o token SAS? Cada resposta correta apresenta parte da solução

- Selecione todas as respostas aplicáveis.

- SignedIP (sip)
- SignedResourceTypes (srt) (Certa)
- SignedServices (ss) (Certa)
- SignedStart (st)

- Link https://learn.microsoft.com/pt-br/rest/api/storageservices/create-account-sas
- Link https://learn.microsoft.com/pt-br/training/modules/configure-storage-security/4-identify-uri-sas-parameters


# Você cria uma conta de Armazenamento do Microsoft Azure.

# Você precisa criar uma regra de gerenciamento de ciclo de vida para mover blobs para o Armazenamento Frio se os blobs não tiverem sido usados por 30 dias.

- O que você deve fazer primeiro?

- Habilitar o controle de acesso. (correto)
- Habilite o controle de versão para blobs.
Essa resposta está incorreta.
- Atualize o inventário de blob.
- Gire as chaves da conta de armazenamento.

 - Uma regra de gerenciamento de ciclo de vida pode ser usada para mover ou excluir blobs automaticamente. A regra pode ser baseada na hora em que o blob foi modificado pela última vez ou na hora em que o blob foi acessado pela última vez (leitura ou gravação). Para executar uma ação com base no tempo de acesso, o controle de acesso deve ser habilitado. Isso pode incorrer em custos de armazenamento adicionais.


# Você tem um modelo do ARM (Azure Resource Manager) chamado deploy.json que é armazenado em um contêiner de Armazenamento de Blobs do Azure.

- Você planeja implantar o modelo executando o cmdlet New-AzDeployment.

- Qual parâmetro você deve usar para referenciar o modelo?

- Selecione somente uma resposta.

- -Tag

- -Templatefile

- -TemplateSpecId

- -TemplateUri (correto)

- Os cmdlets de implantação do PowerShell podem ser usados para implantar modelos JSON armazenados localmente em um grupo de recursos como uma especificação de modelo ou de um local baseado na Web. Você pode usar o parâmetro -TemplateUri para especificar um local baseado na Web, como o GitHub ou uma conta de Armazenamento de Blobs do Azure. Você pode usar -Templatefile para especificar um arquivo local. Você pode usar -TemplateSpecId para especificar um modelo que foi salvo no Azure como uma especificação de modelo.


 # Sua empresa tem um conjunto de recursos implantados em uma assinatura do Azure. Os recursos são implantados em um grupo de recursos chamado app-grp1 usando modelos do ARM (Azure Resource Manager).

- Você precisa verificar a data e a hora em que os recursos no app-grp1 foram criados.

- Qual folha você deve examinar para app-grp1 no portal do Azure?

- Selecione somente uma resposta.

- Implantações (correto)
- Configuração de diagnóstico
- Métricas
- Apólice

- Navegar até a folha configurações de diagnóstico fornece a capacidade de diagnosticar erros ou examinar avisos. Navegar até a folha Métricas fornece informações de métricas (CPU, recursos) aos usuários. Na folha Implantações do grupo de recursos (app-grp1), todos os detalhes relacionados a uma implantação, como o nome, o status, a data da última modificação e a duração, estão visíveis. Navegar até a folha Política fornece apenas informações relacionadas às políticas impostas no grupo de recursos.

# Você está criando uma máquina virtual do Azure que executará o Windows Server.

- Você precisa garantir que a VM1 faça parte de um conjunto de dimensionamento de máquinas virtuais.

- Qual configuração você deve configurar durante a criação da máquina virtual?

- Selecione somente uma resposta.

- Opções de disponibilidade (correto)
- Instância do Azure Spot
- Gerenciamento
- Region

- Você deve configurar o conjunto de dimensionamento de máquinas virtuais a partir das opções de disponibilidade. A instância spot do Azure é usada para adicionar máquinas virtuais com um preço com desconto. A região não afetará a configuração das opções de disponibilidade. A configuração de gerenciamento permite que você configure as opções de monitoramento e gerenciamento para a máquina virtual.

 # Score
 - Outubro 50%

 # Simulado az104 - Udemy

 

