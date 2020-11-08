select * from tbNovela where horario_exibicao is null; #Questão 2

select * from tbAtor where cidade_ator like 'M%'; #Questão 3


##############Questão_4#################

select a.codigo_ator, p.codigo_personagem, p.nome_companhia, p.idade_persongem, p.situacao_financeira_personagem
from tbAtor as a	
	inner join  tbPersonagem as p
on p.codigo_ator = a.codigo_ator
order by a.nome_ator ASC;

select * from tbPersonagem
order by nome_personagem asc;

##########Questão_5###############

select  count(c.codigo_capitulo) as "Quantidade de Capitulos", n.nome_novela
from tbCapitulo as c
	inner join tbNovela as n
on n.codigo_novela = c.codigo_novela
group by n.nome_novela

##########Questão_6###############

select  count(c.codigo_capitulo) as "Quantidade de Capitulos", n.nome_novela
from tbCapitulo as c
	inner join tbNovela as n
on n.codigo_novela = c.codigo_novela
group by n.nome_novela
where c.codigo_capitulo >=2;