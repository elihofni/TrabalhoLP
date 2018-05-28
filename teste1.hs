{- 
	Linguagens de Programaçao - Prof Bruno

	ROTEIRO
	1- Instale haskell
	2- Entre no terminal (ghci)
	3- Chame `funcaoPrincipal`

	Participantes
	- Allana
	- Eli 
	- Gabriel
	
-}

-- Essa é um exemplo de entrada do nosso programa, mude se quiser
frame = [("alfa" || "beta"), "beta", ["teta"], not("gama")]
grafo = [('a', 'b', "alfa"), ('b', 'c', "beta"), ('c', 'd', "teta"), ('d', 'e', "gama")]

pdl = "(alfa U beta) E gama;"
pdl = "(<alfa U beta>; teta*); ¬(gama) -> <->"
grafoEntrada = "(a, b, alfa), (b, c, beta), (c, d, teta)"

conversaoDeEntradaPDLparaPrograma = pdl -> grafoEntrada -> codigoBonito

fruncaoPrincipal = frame -> grafo -> True || False ('d', 'e', "gama")

