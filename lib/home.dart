import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Abestalhado: bobo",
    "Abilolado: abestalhado",
    "Achar massa: achar legal",
    "Acochado: apertado",
    "Afolosado: frouxo",
    "Agoar: regar as plantas",
    "Agoniado: inquieto, nervoso",
    "Alcatifa: carpete",
    "Altear: aumentar o volume do som",
    "Amarrado: mesquinho, sovina",
    "Amigado: vivendo junto",
    "Aperreado: preocupado",
    "Apalpar, aperta: pegar",
    "Apois,viu?!: Exclamação, expressão de dúvida, questionamento.",
    "A pulso: à força, na marra",
    "Arengar: discutir, brigar",
    "Arrasta: pé: forró",
    "Arrear o barro: fazer cocô",
    "Arregar dos outros: se aproveitar dos outros",
    "Arretado (1): muito bom, excelente, maravilhoso",
    "Arretado (2): irritado, com raiva de algo ou alguém",
    "Arribar: sair, ir embora, fugir",
    "Arrodear: dar a volta",
    "Arroxa: aperta",
    "Aruá: pessoa muito lerda",
    "Atabacado: bobo",
    "Avalie só: imagine só, veja só",
    "Avexado: apressado",
    "Avoar no mato: jogar fora",
    "Avoado: distraído",
    "Azuretado: confuso, no mundo da lua",
    "Badoque: estilingue, atiradeira, também usado para",
    "bebidas falsificadas",
    "Bebê: forma afetuosa e despretensiosa de chamar aquela garota ou garoto especial",
    "Bicado: bêbado",
    "Bigu: carona",
    "Biliro: grampo de cabelo",
    "Bizu: dica",
    "Bofe: Víscera, intestinos",
    "Bombado: Rico",
    "Bote fé: Expressão de concordância entre os",
    "interlocutores",
    "Botar os bofes para fora: Vomitar",
    "Boyzinha: namorada",
    "Borocochô: triste",
    "Borrão: bloco de rascunho",
    "Buchuda: grávida",
    "Bulir: mexer em algo",
    "Buliçoso: aquele que gosta de mexer em tudo",
    "Caba: homem",
    "Cabra: homem",
    "Cabra frouxo: homem medroso",
    "Cabra de pêia: homem corajoso",
    "Cabra safado: pessoa ruim, tratante",
    "Cabueta: delator, dedo duro",
    "Cabuloso: pessoa chata",
    "Cagado: sortudo",
    "Caganeira: diarréia",
    "Cambitos: pernas finas",
    "Cangalha: pessoa com as pernas arqueadas",
    "Cangote: parte de trás do pescoço, nuca",
    "Cão chupando manga: o bom, o cara que sabe de tudo, o tal",
    "Carão: dar bronca",
    "Carecer: precisar de algo",
    "Catabil: solavanco provocado por buraco",
    "Catôta: secreção do nariz",
    "Chamegar: namorar",
    "Chapoletada: pancada forte",
    "Cheguei: de cores berrantes, de gosto duvidoso",
    "Cocó: Armar um cocó significa dedurar",
    "Coisado: algo estranho, anormal, diferente",
    "Com a mulesta dos cachorro: empolgado",
    "Com gosto de gás: empolgado, entusiasmado",
    "Cotôco: resto, pedaço, algo pequeno",
    "Créu: utilizado quando algo é muito difícil",
    "Dar fé: perceber",
    "Dar o pinote: pular",
    "Dar uma carreira: correr",
    "Deeeeeeu: Expressão de quantidade, surpresa, perplexidade ao se deparar com certas situações",
    "De hoje a oito: daqui a uma semana",
    "De jeito maneira: de modo algum",
    "De rosca: algo difícil de ser realizado, duro de sair, demorado.",
    "Desembestado: apressado",
    "Desenrolado: apressado",
    "Dispense: deixe disso, pare com isso",
    "Dor de veado: dor abdominal que dá em quem bebe muito liquido e vai fazer exercício físico logo depois",
    "Diadema: tiara",
    "Eita: exclamação",
    "Emburacar: entrar sem licença",
    "Encabulado: com vergonha",
    "É quente!: é massa, é bom, é de confiança",
    "Encher o bucho: estar satisfeito após a refeição",
    "Engomar: passar a roupa no ferro",
    "Esmolé: mendigo, pedinte",
    "É pala: mentira",
    "Espichar: esticar",
    "Estar com a bexiga lixa: estar com o diabo no couro, estar com tudo",
    "Estar com a bobônica: igual a estar com bexiga lixa",
    "Estar com a moléstia: estar mais do que com bexiga lixa, estar muito arretado",
    "Estribado: rico",
    "Estrupiado: machucado",
    "Fazer feira: comprar em supermercado ou feira livre",
    "Fazer o balão: dar a volta com o carro, retornar",
    "Fera: pessoa que passou no vestibular, vocativo para pessoa legal",
    "Folote: folgado",
    "Fi duma égua: xingação de filho da mãe",
    "Ficar tocaiando: vigiar",
    "Filar: olhar a prova dos outros, colar",
    "Frango: veado, bicha (se trata de xingamento, pejorativo) homossexual.",
    "Frisos: enfeites cromados em um carro",
    "Frouxo: medroso",
    "Fuleiro: de má qualidade (objetos), sem vergonha (pessoas)",
    "Fuxico: fofoca",
    "Gabiru: rato grande",
    "Gaia: chifre",
    "Gaitada: gargalhada",
    "Galalau: pessoa alta",
    "Galego: pessoa loura ou alourada",
    "Garapa: água com açúcar",
    "Gazear: faltar à aula",
    "Gelo baiano: blocos de concreto que separa as vias de trânsito",
    "Girador: circular, rotatória",
    "Gréia: zoação",
    "Guela: Garganta",
    "Guaiamum: espécie de caranguejo",
    "Guaraná: denominação genérica de qualquer refrigerante",
    "Jante: roda do carro",
    "Jerimum: abóbora",
    "Jegue: sem estilo, que se veste mal.",
    "Iapôis: concordância, é mesmo",
    "Imendar: consertar",
    "Inhaca: catinga, mau cheiro",
    "Interar: completar",
    "Invocado: com raiva",
    "Indo e voltando: legal, bacana, tu é uma pessoa indo e voltando.",
    "Levar uma lapada/chapuletada: Levar uma pancada",
    "Leseira: abestalhamento, idiotice",
    "Leso: bobo",
    "Liga: borracha para amarrar dinheiro",
    "Liso: pessoa sem dinheiro",
    "Loló: lança perfume fajuta",
    "Mai agora deu: é a palavra desta expressão de insatisfação",
    "Macaxeira: mandioca",
    "Macho: homem",
    "Malamanhado: desarrumado",
    "Malassombro: assombração",
    "Maloqueiro: menino de rua, pivete",
    "Mamulengo: bonecos de apresentação teatral fantoches",
    "Maneiro: leve, sem peso",
    "Mangar: rir de alguém",
    "Marretar: furtar coisas de pouco valor",
    "Mar minino: Nem vem visse",
    "Massa: coisa boa",
    "Matuto: caipira, pessoa do interior",
    "Meio: fio: paralelepípedo que separa a calçada da rua / guia da calçada",
    "Merenda: lanche",
    "Mermão: vocativo resultante da contração de meu irmão",
    "Metido a cavalo do cão: pessoa valente, metida a besta",
    "Morgação: Brisa monótona, chata",
    "Moringa: vaso de barro para armazenar água",
    "Munganga: palhaçada",
    "Muriçoca: pernilongo",
    "Nó cego: problema de difícil solução, pessoa difícil",
    "Oitão: espaço entre a casa e o muro",
    "Oxe, oxente: interjeição de espanto",
    "Paia: mulher feia, coisa fraca, evento ruim",
    "Pantim: ficar com frescura, criar caso",
    "Pareia: amigo, camarada, namorado(a)",
    "Peba: coisa ruim, de má qualidade",
    "Pegajosa: pessoa insistente",
    "Pegar o beco: ir embora",
    "Peguento: suado",
    "Peitica: insistência",
    "Pereba: ferimento na pele",
    "Percata: sandália de couro",
    "Perronha: jogador de futebol fraco",
    "Pixete: o mesmo que pixaim",
    "Pipoco: estouro",
    "Pitó: elástico de cabelo",
    "Pitoco: botão de som",
    "Pirangueiro: pão duro",
    "Pixototinho: muito pequeno",
    "Pronto: ok, certo, entendi, vírgula, copiado, chateações, raiva, irônia, corteja, preparado.",
    "Que Brabinha: Expressão de deboche,mesmo que problema, que bronca",
    "Que nem: igual a, tal qual",
    "Queijo: frescura",
    "Queijudo: pessoa fresca, tabacudo, donzelo, virgem",
    "Quenga: mulher sem vergonha ou de programa / metade de coco seco",
    "Queimação: atitude negativa ou vergonha",
    "Rala: buxo: festa onde se pode dançar",
    "Rapariga: prostituta",
    "Raparigueiro: mulherengo",
    "Relar: arranhar",
    "Resenha: conversa, fofoca, enrolação",
    "Rolo: confusão",
    "Romper o ano: passar a festa de ano novo",
    "Roncha: mancha de pancada na pele",
    "Sarará (1): formiga pequena avermelhada",
    "Sarará (2): pessoa de características negras e cabelo amarelo ou vermelho",
    "Sargaço: algas marinhas",
    "Se abrir: gargalhar",
    "Se lascar todinho: se dar mal",
    "Sentar a mão: bater em alguém",
    "Solto na buraqueira: estar solteiro se divertindo",
    "Suvaqueira: mau cheiro nas axilas",
    "Tabocada: porrada",
    "Tabacudo: bobo",
    "Tabaréu: bobo",
    "Tabica: pão bengala",
    "Tamburete de zona: pessoa baixa",
    "Tampa: pessoa que faz algo muito bem",
    "Tirar onda: brincar",
    "Tirar o queijo: perder a virgindade",
    "Tomar uma: beber um drink",
    "Torar: quebrar algo, partir algo",
    "Torar aço: ter medo intenso",
    "Toró: chuva forte",
    "Trancilim: corrente com pingente",
    "Tribufu: pessoa feia",
    "Um pé lá outro cá: ir e voltar rapidamente",
    "Vara pau: pessoa alta e magra",
    "Vei: vocativo utilizado para qualquer faixa etária ou sexo, mesmo sendo uma contração da palavra “velho”",
    "Virado num mói de cuento: pessoa agitada, alterada, com raiva",
    "Visse?: entendesse? Certo?",
    "Vou chegar: vou sair",
    "Vôte, Vixe, ôxe: interjeição de espanto",
    "Xêxero: pessoa que não paga, devedor",
    "Xêxo: pedaço de pedra redondo, seixo, dívida",
    "Xôxo: pessoa pequena e magra",
    "Zambeta: pessoa de pernas tortas",
    "Zarolho: vesgo",
    "Zona (1): local de baixo meretrício",
    "Zona (2): bagunça, confusão",
    "Zuada: barulho",
  ];

  var _fraseGerada = "Eita bexiga lixa!";

  void _gerarFrase() {
    var randomNumber = Random().nextInt(_frases.length);
    _fraseGerada = _frases[randomNumber];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nosso Pernambuques"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset('assets/dicionario.webp'),
            ),
            Text(
              "Pressione o botão abaixo para exibir uma palavra",
              style: TextStyle(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _gerarFrase();
                  });
                },
                child: Text(
                  "Exibir palavra",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                _fraseGerada,
                style: TextStyle(fontSize: 30, color: Colors.redAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
