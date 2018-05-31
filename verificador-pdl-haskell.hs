 {-
    Linguagens de Programaçao - Prof Bruno

    ROTEIRO
    1- Instale haskell
    2- Entre no terminal 
      ghci
      :set prompt "ghci "
    3- Chame verificaValidade com os parâmetros necessários

    Participantes
    - Allana
    - Eli 
    - Gabriel

    Esse são exemplos de entrada do nosso programa
     [("alfa")] []
     [("alfa")] [("A", "B", "alfa")]
     [("alfa E beta")] [("A", "B", "alfa")]
     [("alfa OU beta")] [("A", "B", "outro")]
-}


-- Retorna cada elemento da tripla
priVar :: (a, b, c) -> a
priVar (a, _, _) = a

ope :: (a, b, c) -> b
ope (_, b, _) = b

segVar :: (a, b, c) -> c
segVar (_, _, c) = c

-- Frame: Lista de comandos PDL definidos por string ("variavel1 operador variavel2")
-- Grafo: Classe de um grafo (verticeOrigem, verticeDestino, programa)
verificaValidade :: [(String)] -> ([(String, String, String)] -> (Bool, String))
verificaValidade [] [] = (True, "Eh valido :)")
verificaValidade [] grafo = (False, "PDL inválida")
verificaValidade frame grafo = (status, texto)
  where
    partes = words (head frame)
    primeiraVar = head partes
    operador = if length partes == 3 then partes !! 1 else ""
    segundaVar = last partes
    status = if not (null grafo)
             then verificaStatus (primeiraVar, operador, segundaVar) (segVar (head grafo))
             else True
    texto = if status
            then "PDL valida"
            else "Erro em (" ++ priVar (head grafo) ++ ", " ++ ope (head grafo) ++ ", " ++ segVar (head grafo) ++ ")"

-- Comando: (variavel1, operador, variavel2)
-- Programa: "alfa"
verificaStatus :: (String, String, String) -> String -> Bool
verificaStatus (var1, op, var2) programa
  | op == "OU"  = programa == var1 || programa == var2
  | op == "E"   = programa == var1 || programa == var2
  | null op     = programa == var1
  | otherwise   = False






































