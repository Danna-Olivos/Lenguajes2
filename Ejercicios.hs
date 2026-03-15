{-|
Module       : Practica1
Description  : 
Copyright    :
Maintainer   : 	Hernández Islas Leonardo Daniel
        	    Olivos Noriega Danna Abigail
Stability    : experimental
Potability   : portable

-}
module Practica1 where
--Ejercicio 1
funcion1 :: (b -> a, c -> a) -> (Either b c -> a)
funcion1 (g, h) = \e -> case e of
    Left  b -> g b
    Right c -> h c


funcion1P :: (Either b c -> a) -> (b -> a, c -> a)
funcion1P k = (k . Left, k . Right)

--Ejercicio 2

funcion2 :: (c -> (a, b)) -> (c -> a, c -> b)
funcion2 h = (fst . h, snd . h)

funcion2P :: (c -> a, c -> b) -> (c -> (a, b))
funcion2P (p, q) = \x -> (p x, q x)

--Ejercicio 3

funcion3 :: (c -> (b -> a)) -> ((b, c) -> a)
funcion3 h = \(b, c) -> h c b

funcion3P :: ((b, c) -> a) -> (c -> (b -> a))
funcion3P k = \c b -> k (b, c)
