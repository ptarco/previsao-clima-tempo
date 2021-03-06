#!/bin/env ruby
# encoding: utf-8

class PrevisaoDia
  
  attr_reader      :dia,:tempo,:maxima,:minima,:iuv
  attr_writer      :dia,:tempo,:maxima,:minima,:iuv
  
  def initialize(dia,tempo,maxima,minima,iuv, temperatura = "not found")
    @dia         = dayFormat(dia) 
    @tempo       = tempo.length > 3 ? tempo : tempoLabel['br'][tempo]  
    @maxima      = maxima  
    @minima      = minima  
    @iuv         = iuv
    @temperatura = temperatura 
  end
  
  def dayFormat(dia)
      dia.to_date.strftime("%d-%m-%Y")
  end
  
  def tempoLabel
    {
      "br" => 
        {
          "ec"  => "Encoberto com Chuvas Isoladas",
          "ci"  => "Chuvas Isoladas",
          "c"  => "Chuva",
          "in"  => "Instável",
          "pp"  => "Poss. de Pancadas de Chuva",
          "cm"  => "Chuva pela Manha",
          "cn"  => "Chuva a Noite",
          "pt"  => "Pancadas de Chuva a Tarde",
          "pm"  => "Pancadas de Chuva pela Manhã",
          "np"  => "Nublado e Pancadas de Chuva",
          "pc"  => "Pancadas de Chuva",
          "pn"  => "Parcialmente Nublado",
          "cv"  => "Chuvisco",
          "ch"  => "Chuvoso",
          "t"  => "Tempestade",
          "ps"  => "Predomínio de Sol",
          "e"  => "Encoberto",
          "n"  => "Nublado",
          "cl"  => "Céu Claro",
          "nv"  => "Nevoeiro",
          "g"  => "Geada",
          "ne"  => "Neve",
          "nd"  => "Não Definido",
          "pnt" => "Pancadas de Chuva a Noite",
          "psc" => "Possibilidade de Chuva",
          "pcm" => "Possibilidade de Chuva pela Manhã",
          "pct" => "Possibilidade de Chuva a Tarde",
          "pcn" => "Possibilidade de Chuva a Noite",
          "npt" => "Nublado com Pancadas a Tarde",
          "npn" => "Nublado com Pancadas a Noite",
          "ncn" => "Nublado com Possibilidade de Chuva a Noite",
          "nct" => "Nublado com Possibilidade de Chuva a Tarde",
          "ncm" => "Nublado com Possibilidade de Chuva pela Manhã",
          "npm" => "Nublado com Pancadas pela Manhã",
          "npp" => "Nublado com Possibilidade de Chuva",
          "vn"  => "Variação de Nebulosidade",
          "ct"  => "Chuva a Tarde",
          "ppn" => "Possibilidade de Pancadas de Chuva a Noite",
          "ppt" => "Possibilidade de Pancadas de Chuva a Tarde",
          "ppm" => "Possibilidade de Pancadas de Chuva pela Manhã"
        },
      "en" =>  
        {
          "ec"  => "Encoberto com Chuvas Isoladas",
          "ci"  => "Chuvas Isoladas",
          "c "  => "Chuva",
          "in"  => "Instável",
          "pp"  => "Poss. de Pancadas de Chuva",
          "cm"  => "Chuva pela Manha",
          "cn"  => "Chuva a Noite",
          "pt"  => "Pancadas de Chuva a Tarde",
          "pm"  => "Pancadas de Chuva pela Manhã",
          "np"  => "Nublado e Pancadas de Chuva",
          "pc"  => "Pancadas de Chuva",
          "pn"  => "Parcialmente Nublado",
          "cv"  => "Chuvisco",
          "ch"  => "Chuvoso",
          "t "  => "Tempestade",
          "ps"  => "Predomínio de Sol",
          "e "  => "Encoberto",
          "n "  => "Nublado",
          "cl"  => "Céu Claro",
          "nv"  => "Nevoeiro",
          "g "  => "Geada",
          "ne"  => "Neve",
          "nd"  => "Não Definido",
          "pnt" => "Pancadas de Chuva a Noite",
          "psc" => "Possibilidade de Chuva",
          "pcm" => "Possibilidade de Chuva pela Manhã",
          "pct" => "Possibilidade de Chuva a Tarde",
          "pcn" => "Possibilidade de Chuva a Noite",
          "npt" => "Nublado com Pancadas a Tarde",
          "npn" => "Nublado com Pancadas a Noite",
          "ncn" => "Nublado com Possibilidade de Chuva a Noite",
          "nct" => "Nublado com Possibilidade de Chuva a Tarde",
          "ncm" => "Nublado com Possibilidade de Chuva pela Manhã",
          "npm" => "Nublado com Pancadas pela Manhã",
          "npp" => "Nublado com Possibilidade de Chuva",
          "vn"  => "Variação de Nebulosidade",
          "ct"  => "Chuva a Tarde",
          "ppn" => "Possibilidade de Pancadas de Chuva a Noite",
          "ppt" => "Possibilidade de Pancadas de Chuva a Tarde",
          "ppm" => "Possibilidade de Pancadas de Chuva pela Manhã"
        }
    }  
  end
  
end