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

-- Essa é um exemplo de entrada do nosso programa, mude se quiser
let frame = [("alfa" || "beta"), "beta", ["teta"], not("gama")]

let grafo = [('a', 'b', "alfa"), ('b', 'c', "beta"), ('c', 'd', "teta"), ('d', 'e', "gama")]

let pdl = "(alfa U beta) E gama;"
let pdl = "(<alfa U beta>; teta*); ¬(gama) -> <->"
let grafoEntrada = "(a, b, alfa), (b, c, beta), (c, d, teta)"

-- conversaoDeEntradaPDLparaPrograma = pdl -> grafoEntrada -> codigoBonito

-- fruncaoPrincipal = frame -> grafo -> True || False ('d', 'e', "gama")

-- import Data.List.Utils (replace)
-- replace "o" "x" "Hello World"
-}

-- Substitui todas as ocorrências
replace :: String -> (String -> (String -> String))

replace [] old new = []
replace str old new = loop str
  where
    loop [] = []
    loop str =
      let (prefix, rest) = splitAt n str
      in
        if old == prefix                
        then new ++ loop rest           
        else head str : loop (tail str)
    n = length old

-- Retorna cada elemento da tripla
priVar :: (a, b, c) -> a
priVar (a, _, _) = a

ope :: (a, b, c) -> b
ope (_, b, _) = b

segVar :: (a, b, c) -> c
segVar (_, _, c) = c

-- TODO continuar 
-- Frame: Lista de comandos PDL definidos por triplas (variavel, comando, variavel)
-- Grafo: Classe de um grafo (verticeOrigem, verticeDestino, programa)
verificaValidade :: [(String, String, String)] -> ([(String, String, String)] -> (Bool, String))
verificaValidade [] [] = (True, "Eh valido :)")
verificaValidade [] grafo = (False, "PDL inválida")
verificaValidade frame grafo = (status, texto)
  where
    primeiraVar = priVar (head frame)
    operador = ope (head frame)
    segundaVar = segVar (head frame)
    status = if operador == ";" then True else False
    texto = if status then "OK" else "Erro em " ++ segVar (head grafo)
    -- if status then verificaValidade (tail frame) (tail grafo) else (False, "Deu ruim ai tio")




































