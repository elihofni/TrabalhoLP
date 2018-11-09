 {-
    Linguagens de Programação - Profº Bruno

    ROTEIRO
    1- Instale haskell
    2- Entre no terminal 
      ghci
      :set prompt "ghci "
    3- Chame verificaValidade com os parâmetros necessários

    PARTICIPANTES
    - Elihofni 
    - Gabriel

    Esses são exemplos de entrada do nosso programa
           W                                   R                                          pi                              RESPOSTA ESPERADA
      ------------    --------------------------------------------------      --------------------------        ------------------------------------
      [1, 2]          [(1, 2, "a")]                                           [["a"]]                           ([],"Eh valida")
      [1, 2, 3]       [(1, 2, "a"), (2, 3, "b")]                              [["a", "b"]]                      ([],"Eh valida")
      [1, 2, 3, 4]    [(1, 2, "a"), (2, 4, "c"), (1, 3, "b"), (3, 4, "c")]    [["a", "c"], ["b", "c"]]          ([],"Eh valida")
      [1, 2, 3, 4]    [(1, 2, "a"), (2, 4, "c"), (1, 3, "b"), (3, 4, "c")]    [["a", "c"], ["b", "d"]]          ([("d",(-1,-1,"d"))],"Nao eh valida")
      [1, 2]          [(1, 2, "a"), (1, 3, "b")]                              [["a"], ["b"]]                    ([("?",(2,3,"b"))],"Vertices e arestas incompativeis")
      [1, 2, 3, 4]    [(1, 2, "a"), (1, 3, "b"), (2, 4, "c"), (3, 4, "c")]    [["a", "c"], ["b", "c"]]          ([("c",(1,3,"b"))],"Nao eh valida") 
      [1, 2, 3]       [(1, 2, "a"), (2, 3, "b")]                              [["a", "b", "c"]]                 ([("c",(-1,-1,"c"))],"Nao eh valida")
-}

-- Retorna partes da lista
slice start stop xs = fst $ splitAt (stop - start) (snd $ splitAt start xs)


--    Frame PDL (F): < W, R >; W= vértices, R= arestas
-- Programa PDL (pi): (a; b) U (b; a)
verificaValidade :: [Integer] -> [(Integer, Integer, String)] -> [[String]] -> Integer -> [(String, (Integer, Integer, String))]
verificaValidade [] [] [[]] start = []
verificaValidade vertices arestas programa start = retorno
  where
    execs = head programa
    combs = zip execs arestas
    
    retorno = if length combs /= length execs 
              then [(execs !! length combs, (-1, -1, execs !! length combs))]
              else do
                let teste = [(p, (orig, dest, e)) | (p, (orig, dest, e)) <- combs, p /= e]
                teste


verifica :: [Integer] -> [(Integer, Integer, String)] -> [[String]] -> ([(String, (Integer, Integer, String))], String)
verifica vertices arestas programa = (status, texto)
  where
    testeVertices = [(orig, dest, e) | (orig, dest, e) <- arestas, not(orig `elem` vertices) || not(dest `elem` vertices)]
    
    status =  if length testeVertices /= 0 
              then [("?", (orig, dest, e)) | (orig, dest, e) <- testeVertices]
              else verificaValidade vertices arestas programa 0
    
    texto =   if length testeVertices /= 0 
              then "Vertices e arestas incompativeis"
              else if length status == 0 then "Eh valida" else "Nao eh valida"


