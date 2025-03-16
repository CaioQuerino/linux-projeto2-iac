# Linux - Projeto 2: Provisionamento de Servidor Web

Este projeto consiste em scripts Bash para automatizar a configuração de um servidor web no Linux. O objetivo é facilitar o provisionamento de um ambiente web em máquinas virtuais ou servidores Linux, garantindo que toda a estrutura necessária seja criada de forma rápida e consistente.

## Scripts

O projeto contém dois scripts principais:

1. **`provisionar_servidor_web.sh`**:
   - Atualiza o sistema.
   - Instala o Apache2 e o Unzip.
   - Baixa uma aplicação web de um repositório GitHub.
   - Copia os arquivos da aplicação para o diretório padrão do Apache.

2. **`apagar_arqvs_para_teste.sh`**:
   - Remove os arquivos e diretórios criados durante o provisionamento.
   - Útil para limpar o ambiente após testes ou quando a infraestrutura não é mais necessária.

## Estrutura de Diretórios

O script `provisionar_servidor_web.sh` cria a seguinte estrutura de diretórios:

```
/tmp/linux-site-dio-main/: Diretório temporário onde a aplicação é baixada e descompactada.
/var/www/html/: Diretório padrão do Apache onde os arquivos da aplicação são copiados.
```

## Como Usar

### Pré-requisitos

- Sistema operacional Linux.
- Permissões de superusuário (sudo) para executar os scripts.

### Passos

1. Clone o repositório (se aplicável):
   ```bash
   git clone https://github.com/seu-usuario/linux-projeto2-iac.git
   ```

2. Navegue até o diretório do projeto:
   ```bash
   cd linux-projeto2-iac
   ```

3. Execute o script de provisionamento:
   ```bash
   sudo ./provisionar_servidor_web.sh
   ```

4. Para limpar o ambiente (remover arquivos e diretórios criados), execute:
   ```bash
   sudo ./apagar_arqvs_para_teste.sh
   ```

## Detalhes dos Scripts

### `provisionar_servidor_web.sh`

- **Atualização do Sistema**: Atualiza os pacotes do sistema.
- **Instalação de Pacotes**: Instala o Apache2 e o Unzip.
- **Download da Aplicação**: Baixa a aplicação web de um repositório GitHub e a descompacta.
- **Cópia dos Arquivos**: Copia os arquivos da aplicação para o diretório do Apache.

### `apagar_arqvs_para_teste.sh`

- **Limpeza de Diretórios**: Remove o diretório da aplicação em `/tmp/` e limpa o diretório `/var/www/html/`.

## Permissões

- **Diretório `/var/www/html/`**: Permissões padrão do Apache (geralmente `755` para diretórios e `644` para arquivos).

## Contribuição

Se você deseja contribuir para este projeto, sinta-se à vontade para abrir uma issue ou enviar um pull request.

