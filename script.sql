DO
$$
DECLARE
n1 NUMERIC (5, 2);
n2 INTEGER;
limite_inferior INTEGER := 5;
limite_superior INTEGER := 17;
BEGIN 
 	--para exibir valores no console
	RAISE NOTICE 'Meu Primeiro bloco anonimo';

	--0 <=n1 < 1 (intervalo real)
	n1 := random();
	RAISE NOTICE '%', n1;
	
	-- 1 <= n1 < 10 (real)
	n1 := random() * 10 + 1;
	RAISE NOTICE '%', n1;
	
	-- 1 <= n2 <10 (:: faz type cast) (floor arredonda para baixo)
	n2 := floor(random() * 10 + 1)::int;
	RAISE NOTICE '%', n2;
	
	--gerar um valor inteiro entre 5 e 17
	n2 := (limite_inferior + floor(random() * (limite_superior - limite_inferior + 1)))::int;
	RAISE NOTICE '%', n2;
END;
$$

-- ANOTAÇÕES AULA
-- 	--divisão inteira
-- 	RAISE NOTICE '% / % = %', n1, n2, n1 / n2;
-- 	--divisão real
-- 	RAISE NOTICE '% / % = %', n3, n2, to_char( n3 / n2, '99.99');
-- 	--resto da divisão
-- 	RAISE NOTICE '% %% % = %', n1, n2, n1 % n2;
-- 	--exponenciação
-- 	RAISE NOTICE '% ^ % = %', n1, n2, n1 ^n2;
-- 	--raiz quadrada
-- 	RAISE NOTICE '|/% = %', n1, |/n1;
-- 	--raiz cubica
-- 	RAISE NOTICE '||/% = %', n1, ||/n1;
-- 	--valor absuluto
-- 	RAISE NOTICE '@% = % e @% = %', n1, @n1, n4, @n4;
-- END $$;
	
--DO $$
--DECLARE
--codigo INTEGER := 1;
--nome_completo VARCHAR(200) := 'João Santos';
-- 11 digitos no total, dois para valores decimais
--salario numeric (11, 2) := 20.5 ;
--BEGIN
--RAISE NOTICE 'Meu código é %, me chamo % e meu salário é R$%',
--codigo, nome_completo, salario;
--END $$;
	