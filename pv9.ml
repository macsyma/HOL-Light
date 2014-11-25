(*** If you have not installed Prover9,
Sys.command ("sudo apt-get install prover9-mace4");;
 ***)

needs "Examples/prover9.ml";;

let PV9 thl tm =
  let h = end_itlist CONJ (map (GEN_ALL o BETA_RULE) thl) in
  let hc = time PROVER9 (mk_imp (concl h, tm)) in
  MP hc h;;

