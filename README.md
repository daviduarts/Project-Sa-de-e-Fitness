Projeto Banco de Dados Saúde e Fitness = USR_FITNESS


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

Validação:

  1 - Realize consultas para verificar a consistência dos dados:
     ```sql
     SELECT * FROM MEMBROS;
     SELECT * FROM HISTORICO_TREINAMENTO;
     ```

Objetivo do Projeto

Demonstrar a criação de um banco de dados completo no Oracle.
Garantir consistência e integridade referencial entre as tabelas.
Simular um ambiente funcional com dados representativos.


