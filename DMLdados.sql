- Inserção de Dados na Tabela MEMBROS

INSERT INTO MEMBROS (MEMBRO_ID, NOME, DATA_NASCIMENTO, TELEFONE, EMAIL) VALUES
(1, 'João Silva', TO_DATE('1990-05-15', 'YYYY-MM-DD'), '11999999999', 'joao.silva@email.com'),
(2, 'Maria Oliveira', TO_DATE('1985-03-20', 'YYYY-MM-DD'), '11988888888', 'maria.oliveira@email.com');

- Inserção de Dados na Tabela PLANOS_TREINAMENTO

INSERT INTO PLANOS_TREINAMENTO (PLANO_ID, NOME, DESCRICAO) VALUES
(1, 'Plano Básico', 'Treinamento básico para iniciantes'),
(2, 'Plano Avançado', 'Treinamento para atletas experientes');

- Inserção de Dados na Tabela EXERCICIOS

INSERT INTO EXERCICIOS (EXERCICIO_ID, NOME, TIPO, DESCRICAO) VALUES
(1, 'Agachamento', 'Força', 'Exercício para pernas e glúteos'),
(2, 'Supino', 'Força', 'Exercício para peitoral e tríceps');

- Inserção de Dados na Tabela ROTINAS_TREINAMENTO

INSERT INTO ROTINAS_TREINAMENTO (ROTINA_ID, PLANO_ID, EXERCICIO_ID, DURACAO_SEMANAS, SERIES, REPETICOES, DESCANSO_SEGUNDOS) VALUES
(1, 1, 1, 4, 3, 12, 60),
(2, 2, 2, 6, 4, 10, 90);

- Inserção de Dados na Tabela HISTORICO_TREINAMENTO

INSERT INTO HISTORICO_TREINAMENTO (HISTORICO_ID, MEMBRO_ID, PLANO_ID, DATA_INICIO, DATA_FIM, STATUS) VALUES
(1, 1, 1, TO_DATE('2024-01-01', 'YYYY-MM-DD'), NULL, 'Ativo'),
(2, 2, 2, TO_DATE('2024-01-15', 'YYYY-MM-DD'), TO_DATE('2024-06-01', 'YYYY-MM-DD'), 'Concluído');
