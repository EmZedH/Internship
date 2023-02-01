select name from 
(select name,1 as type from tracks where name like 'fa%' union select * from 
 (select name,2 as type from tracks where name like '%fa%' except select name,2 as type from tracks where name like 'fa%')) 
 order by type;
/*
name                                                        
------------------------------------------------------------
Face In The Sand                                            

Faceless                                                    

Fade To Black                                               

Failling                                                    

Fairground                                                  

Fairies Wear Boots                                          

Faixa Amarela                                               

Falamansa Song                                              

Falando De Amor                                             

Falar A Verdade                                             

Fall On Me                                                  

Fall To Pieces                                              

Falling To Pieces                                           

Falling in Circles                                          

Fallout                                                     

Faltando Um Pedaço                                          

Família                                                     

Fanfare for the Common Man                                  

Fantasia On Greensleeves                                    

Faraó Divindade Do Egito                                    

Faroeste Caboclo                                            

Fascinação                                                  

Fast And Loose                                              

Fast As a Shark                                             

Fat Bottomed Girls                                          

Fates Warning                                               

Fato Consumado                                              

(I Can't Help) Falling In Love With You                     

As Rosas Não Falam (Beth Carvalho)                          

Babyface                                                    

Battlestar Galactica: The Story So Far                      

Blue Rythm Fantasy                                          

Breadfan                                                    

Breakfast In Bed                                            

Computadores Fazem Arte                                     

Coração do Agreste (Fafá de Belém)                          

El Farol                                                    

From Afar                                                   

Fé Cega, Faca Amolada                                       

Garota de Ipanema (Dick Farney)                             

Get Up Offa That Thing                                      

Good Old-Fashioned Lover Boy                                

Hammer To Fall                                              

Heavy Love Affair                                           

Hemp Family                                                 

Jeito Faceiro                                               

Man of Science, Man of Faith (Premiere)                     

Mercyful Fate                                               

New Faces                                                   

Nobody's Fault But Mine                                     

Over The Hills And Far Away                                 

Phoney Smile Fake Hellos                                    

Refavela (Live)                                             

Refazenda                                                   

Running On Faith                                            

Satisfaction                                                

Satisfação                                                  

So Fast, So Numb                                            

Soul Parsifal                                               

Stay (Faraway, So Close!)                                   

Symphonie Fantastique, Op. 14: V. Songe d'une nuit du sabbat

The Fallen Angel                                            

The God That Failed                                         

The Nutcracker, Op. 71a, Act II: Scene 14: Pas de deux: Danc
e of the Prince & the Sugar-Plum Fairy                      

Too Fast For Love                                           

Two Fanfares for Orchestra: II. Short Ride in a Fast Machine

Until We Fall                                               

When Evening Falls                                          

You Know I'm No Good (feat. Ghostface Killah)  
*/

