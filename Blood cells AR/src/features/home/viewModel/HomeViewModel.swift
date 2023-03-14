//
//  HomeViewModel.swift
//  Blood cells AR
//
//  Created by André  Lucas on 23/12/22.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var listCells: [CellEntity] = [
        CellEntity(
            name: "Hemácias",
            desc: "As hemácias são as células encontradas em maior quantidade no sangue de uma pessoa e sua concentração normal média é de 5 milhões por microlitro de sangue. Essas células destacam-se pela ausência de núcleo, por isso, são chamadas de anucleadas. Por causa dessa característica, as hemácias não apresentam capacidade de divisão e morrem em aproximadamente 120 dias. A hemácia possui formato de disco bicôncavo e em seu interior encontra-se a proteína hemoglobina, relacionada com o transporte de gases. Em ambiente isotônico, as hemácias costumam apresentar 7,5 μm de diâmetro, 2,6 μm de espessura na borda e 0,8 μm na região central. O formato bicôncavo das hemácias facilita as trocas gasosas por aumentar a superfície da célula. Sua forma deve-se à presença de proteínas estruturais no citoesqueleto. Quando essas proteínas apresentam alguma anormalidade, o formato das hemácias é comprometido.",
            photo: "hemacias",
            referenceObj: "hemacias",
            fonte: "https://mundoeducacao.uol.com.br/biologia/hemacias.htm"
        ),

        CellEntity(
            name: "Basófilos",
            desc: "Os basófilos correspondem a menos de 1% dos leucócitos do sangue circulante normal, ou seja, é o tipo de leucócitos mais raramente encontrado. Eles apresentam o núcleo volumoso e o citoplasma com grânulos maiores do que os observados nos outros granulócitos, essas granulações quando coradas por corantes básicos, como a hematoxilina, reage com componentes ácidos das células corando-os de violeta. Eles participam dos processos alérgicos e possuem receptores para imunoglobulinas, atuando na hipersensibilidade imediata (asma brônquica) e tardia (reação alérgica cutânea) e na propagação da resposta imunológica.",
            photo: "basofilo",
            referenceObj: "basofilo",
            fonte: "https://www.infoescola.com/citologia/basofilos/"
        ),
        CellEntity(
            name: "Eosinófilos",
            desc: "Os eosinófilos representam cerca de 2-4% dos leucócitos do sangue circulante normal. Essas células  possuem o núcleo segmentado, geralmente, com 2 lóbulos, apresentam granulações azurófilas e granulações específicas acidófilas que se coram por corantes ácidos, como a eosina, que reage e cora os componentes básicos das células de laranja/vermelho. Os grânulos específicos contém a proteína básica principal e a proteína catiônica do eosinófilo que são agentes altamente eficientes no combate a infecções parasitárias. Os grânulos azurófílos inespecíficos são lisossomos que contêm enzimas hidrolíticas semelhantes às encontradas nos neutrófilos que agem na destruição de vermes parasitários e na hidrólise de complexos antígeno-anticorpos. Em algumas parasitoses e nas doenças alérgicas o número de eosinófilos aumenta.",
            photo: "eosinofilo",
            referenceObj: "eosinofilo",
            fonte: "https://www.significados.com.br/eosinofilos/"
        ),
        CellEntity(
            name: "Neutrófilos",
            desc: "Os neutrófilos são os leucócitos mais presentes no sangue, correspondente a cerca de 60% dos leucócitos do sangue circulante normal. Trata-se de células arredondadas que possuem grânulos pequenos e azurófilos, apresentam seus núcleos formados por 2 a 5 lóbulos, ligados entre si por finas pontes de cromatina. Dependendo da quantidade de lóbulos nucleares, os neutrófilos dividem-se em bi, tri, tetra e pentalobulado. Com mais de 5 lóbulos são chamadas hipersegmentadas, sendo essas células muito velhas, já células muito jovens, não apresentam seu núcleo em lóbulos, mas em um único segmento, então chamado de neutrófilo bastão. Eles constituem a primeira linha de defesa celular contra a invasão de microorganismos, e estão principalmente relacionados a infecções do tipo bacterianas.",
            photo: "neutrofilo",
            referenceObj: "neutrofilo",
            fonte: "https://www.unioeste.br/portal/microscopio-virtual/tecido-conjuntivo/especializado/hematopoetico/leucocitos/granulocitos/neutrofilos"
        ),
        CellEntity(
            name: "Linfócitos",
            desc: "Os linfócitos representam cerca de 20 a 30% dos leucócitos do sangue circulante normal, trata-se de células responsáveis pela defesa imunológica do organismo, podem ser encontrados nos mais variados tamanhos, de 6 a 18 μm de diâmetro. Eles apresentam núcleo arredondado e excêntrico com cromatina densa, possuem uma alta relação núcleo/citoplasma e discretas e granulações azurófilas. Eles atuam principalmente em resposta a infeções virais, onde moléculas estranhas existentes são reconhecidas e destruídas por meio da ativação da resposta humoral (produção de imunoglobulinas) e resposta citotóxica mediada por células, como os macrófagos.\n\nOs linfócitos podem ser divididos em 2 tipos, T e B, os linfócitos B estão envolvidos na defesa humoral do organismo, pois se diferenciam-se em plasmócitos, que por sua vez, produzem os anticorpos, já os linfócitos T, os mais numerosos no sangue, são fundamentais para a resposta citotóxica, que não dependem dos anticorpos circulantes. Apesar de, morfologicamente, serem indistinguíveis, eles podem ser reconhecidos imunocitoquimicamente pelas diferenças em seus marcadores de superfície. Aproximadamente 80% dos linfócitos circulantes são do tipo T, e o restante do tipo B.",
            photo: "linfocito",
            referenceObj: "linfocito",
            fonte: "https://www.bp.org.br/artigo/o-que-sao-linfocitos-e-qual-a-ligacao-com-os-linfomas"
        ),
        CellEntity(
            name: "Monócitos",
            desc: "Os monócitos são os maiores leucócitos circulantes, e representam cerca de 4 a 8% dos leucócitos na circulação sanguínea, seu núcleo é grande, em forma elipsóide ou de ferradura, devido possuir a cromatina pouco condensada, o núcleo dos monócitos é mais claro do que o dos linfócitos, possuindo de 2 a 3 nucléolos. Os monócitos do sangue representam uma fase na maturação da célula mononuclear fagocitária originada na medula óssea. Esta célula passa para o sangue, onde permanece apenas por alguns dias, e, atravessando por diapedese a parede dos capilares e vênulas, penetra alguns órgãos, transformando-se em macrófagos, que constituem uma fase mais avançada na vida da célula, fazendo parte do sistema fagocitário mononuclear. Estão relacionadas a mecanismos da resposta imune tais como fagocitose e digestão de microrganismos, interação com antígenos e linfócitos na geração da resposta imune, produção de citocinas, por fim a citotoxicidade, como a eliminação de algumas células tumorais.",
            photo: "monocito2",
            referenceObj: "monocito",
            fonte: "https://www.unioeste.br/portal/microscopio-virtual/tecido-conjuntivo/especializado/hematopoetico/leucocitos/agranulocitos/monocitos"
        ),
    ]
}
