SELECT SUM (cp.TOTAL), SUM(td.TOTAL) FROM CLIENTES_POR_PAGAR cp, TOTAL_DOC td
WHERE (TIPO_DOC = 2 AND NR_DOCUMENTO IN (SELECT NR_FATURA FROM RECIBO));