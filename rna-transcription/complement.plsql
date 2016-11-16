create or replace package complement 
is
  function of_dna (
    i_dna                 varchar2
   ) return varchar2;
  
   function of_rna (
    i_rna                 varchar2 
   ) return varchar2;
end complement;
/

create or replace package body complement
is
  
    g_dna     varchar2(4) := 'GCAU';
    g_todna   varchar2(4) := 'CGTA';
    
    g_rna     varchar2(4) := 'CGTA';
    g_torna   varchar2(4) := 'GCAU';
    
  function of_dna (
    i_dna     varchar2
   ) return varchar2
  is 
  begin 
    return translate (i_dna, g_dna, g_todna);
  end of_dna;
  
  function of_rna (
    i_rna        varchar2 
   ) return varchar2
  is
  begin
    return translate (i_rna, g_rna, g_torna);
  end of_rna;
end complement;
