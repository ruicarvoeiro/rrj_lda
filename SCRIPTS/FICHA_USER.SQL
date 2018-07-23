accept x prompt 'Introduza o nome do cliente: '
select c.id_cliente, c.nome_cliente, c.nif_nipc, ct.MORADA_SEDE, ct.nr_telefone, ct.email
from cliente c inner join contatos ct on (c.id_cliente = ct.id_cliente) 
where NOME_CLIENTE like ('%' || upper('&x') || '%');


-- select * from cliente where (id_cliente = to_number('&x'));
--where NOME_CLIENTE = Upper('&x' || '%');