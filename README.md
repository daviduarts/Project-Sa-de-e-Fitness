Projeto Banco de Dados Saúde e Fitness = USR_FITNESS

Modelo Físico = USR_FITNESS

O banco de dados USR_FITNESS foi projetado para gerenciar informações de membros de uma academia, seus planos de treinamento, exercícios e histórico de atividades. Ele inclui as seguintes tabelas:

1 - MEMBROS: Cadastro dos membros da academia.
2 - PLANOS_TREINAMENTO: Planos oferecidos pela academia.
3 - EXERCICIOS: Detalhes dos exercícios disponíveis.
4 - ROTINAS_TREINAMENTO: Rotinas de treinamento associadas a planos e exercícios.
5 - HISTORICO_TREINAMENTO: Histórico de adesão dos membros aos planos.

*Caminho a Seguir*


1 - Como Executar os Scripts no Oracle

Criação do Schema:

  1 - Conecte-se ao Oracle usando SQLPlus ou SQL Developer.
  2 - Execute o script `DDL/estrutura.sql` para criar o banco de dados e as tabelas.

Inserção de Dados:

  1 - Execute o script `DML/dados.sql` para popular as tabelas com dados iniciais.

Instrução e Validação:

  1 - Realize consultas para verificar a consistência dos dados:
     ```sql
     SELECT * FROM MEMBROS;
     SELECT * FROM HISTORICO_TREINAMENTO;
     ```

  2 - Executar o Script DDL Primeiro:
Certifique-se de executar o arquivo estrutura.sql para criar as tabelas e as restrições antes de executar o arquivo dados.sql. 

  3 - Inserção e Consulta de Dados:
Após executar o script dados.sql, use consultas SQL para validar a inserção dos dados, como:

    SELECT * FROM MEMBROS;
    SELECT * FROM HISTORICO_TREINAMENTO;
    
  4 - Verificar Restrições de Integridade:
Tente inserir registros inválidos (como duplicar chaves primárias ou violar relações) para confirmar que as restrições estão funcionando corretamente.

  5 - Testar Cenários de Relacionamentos:
Insira dados nas tabelas relacionadas, garantindo que os registros respeitem as chaves estrangeiras e validem os relacionamentos.
    

Objetivo do Projeto

Demonstrar a criação de um banco de dados completo no Oracle.
Garantir consistência e integridade referencial entre as tabelas.
Simular um ambiente funcional com dados representativos.


