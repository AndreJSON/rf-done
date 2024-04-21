-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: rfd
-- ------------------------------------------------------
-- Server version	10.6.16-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `title` varchar(128) NOT NULL,
  `text` varchar(8196) NOT NULL,
  `tags` varchar(512) NOT NULL,
  `imageName` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;




INSERT INTO `recipes` (createdAt, updatedAt, title, `text`, tags, imageName) VALUES (
	'2018-11-28 19:52:56',
	'2021-04-15 18:49:39',
	'Moussaka med fetaost',
	'6 persioner\n\n1.5\tst\tgul lök\n3\tst\tvitlöksklyftor\n\t\tolivolja\n750\tg\tkött- eller lammfärs\n500\tg\tkrossade tomater\n3\tmsk\ttomatpure\n1\ttsk\tsocker\n1.5\ttsk\tsalt\n\t\tpeppar\n2\tkrm\tkanel\n1\tmsk\ttimjan\n3\tst\tauberginer\n1.5\ttsk\tsalt\n5\tdl\tyoghurt\n5\tst\tägg\n\t\tpeppar\n300\tg\tfetaost\n\n1) Skala och finhacka lök och vitlök. Fräs löken i olivolja.\n2) Fräs köttfärsen. Lägg i löken, häll över tomatkrossen och tillsätt tomatpuré, socker, salt, peppar, kanel och timjan. Låt puttra under lock i 30 minuter.\n3) Sätt ugnen på 225 grader\n4) Skölj och skär auberginerna i ca 1 cm tjocka skivor. Lägg ut på dubbelvikt hushållspapper och strö över saltet. Låt ligga i ca 15 min.\n5) Stek auberginskivorna ca 2 min per sida\n6) Varva auberginer och köttfärssås i en lätt smord ugnsäker form.\n7) Vispa yoghurt, ägg och peppar. Häll blandningen i formen och smula över fetaost.\n8) Gratinera i ca 20 min.',
	'KÖTTFÄRS,VARMRÄTT',
	null
), (
	'2018-11-28 19:52:56',
	'2021-03-07 16:10:48',
	'Fruktig linsgryta',
	'1\tburk\t\tananasringar (227 g)\n300\tg\t\tmorötter\n1/2\tst\t\tpurjolök\n1\tst\t\tgrön paprika\n1\tst\t\tröd paprika\n2\tmsk\t\ttomatpuré\n1\tmsk\t\tvetemjöl\nx\tdl\t\tförkokta röda linser\n1\tburk\t\tkokosmjölk\n1\tdl\t\tvatten\n1\tmsk\t\tsambal oelek\n2\ttsk\t\tvitvinsvinäger\n1\ttsk\t\tsocker\n1\ttsk\t\ttorkad koriander\n1\ttsk\t\tpaprikapulver\n1\ttsk\t\tsalt\n\t\t\tsvartpeppar\n\t\t\trapsolja\n\n1) Skala morötter och skär i tunna skivor. Finstrimla purjolöken. Tärna paprika och ananas. Spara juicen.\n2) Fräs morötter, paprika och purjolök några minuter i olja.\n3) Rör ner tomatpuré och pudra över mjöl.\n4) Blanda ner linserna, häll på kokosmjölk, vatten och 1 dl av ananasjuicen.\n5) Smaksätt med sambal, vitvinsvinäger, socker, koriander, paprikapulver, salt och svartpeppar.\n6) Lägg i ananasen och låt koka under lock i 4-5 minuter.\n\nServera med ris.',
	'VEGETARISK,VARMRÄTT',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-17 21:12:00',
	'Kladdkaka med nötknäck',
	null,
	'efterrätt,Bakat',
	'5bfef21885fe4b3357a2910e.jpg'
), (
	'2018-11-28 19:52:56',
	'2018-11-30 15:37:14',
	'Vietnamesiska vårrullar',
	null,
	'Asiatisk',
	'5bfef21885fe4b3357a2910f.jpg'
), (
	'2018-11-28 19:52:56',
	'2018-11-28 19:52:56',
	'Chokladfondant',
	null,
	'efterrätt,andre',
	'5bfef21885fe4b3357a29110.jpg'
), (
	'2018-11-28 19:52:56',
	'2018-11-28 19:52:56',
	'Morotsoppa',
	'4 portioner\n\n700\tg\tmorötter\n350\tg\tpotatis\n1\tst\tgul lök\n2\tklyftor\tvitlök\n50\tg\tingefära\n8\tdl\tvatten\n2\tst\tbuljongtärningar\n1\tdl\tturkisk yoghurt\n\t\tsalt\n\t\tsvartpeppar\n\n1) Skala och tärna morötter och potatis. Skala och hacka vitlöken och ingefäran.\n2) Lägg allt i en kastrull, lägg i buljongen och fyll på vatten. Koka i 10-15 minuter tills morötterna är mjuka.\n3) Mixa soppan slät, lägg i yoghurten och späd med vatten om det behövs. Smaka av med salt och svartpeppar.\n\nServeras med knäckebröd.\n\nvatten och yoghurt kan bytas ut mot 5 dl vatten och 1 burk kokosmjölk, men då blir soppan  sötare och behöver brytas med något.',
	'vegetarisk',
	null
), (
	'2018-11-28 19:52:56',
	'2018-11-28 19:52:56',
	'Nudelsallad',
	null,
	'asiatisk,andre',
	'5bfef21885fe4b3357a29112.jpg'
), (
	'2018-11-28 19:52:56',
	'2020-04-17 20:53:54',
	'Potatis och purjolökssoppa',
	'4 portitioner\n\n500\tg\tpotatis\n1\tst\tpurjolök (ca 350 g)\n2\tst\tgrönsaksbuljongstärningar\n8\tdl\tvatten\n1/2\ttsk\tsalt\n1\ttsk\tdragon\n1\ttsk\tbasilika\n\t\tturkisk yoghurt\n\n1) Skala potatisen och skär i små bitar. Skala och skölj purjolöken och skär i skivor.\n2) Blanda allt i en kastrull och koka tills potatisen är mjuk.\n3) Mixa soppan slät.\nServeras med turkisk yoghurt',
	'vegetarisk',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 18:04:46',
	'Risonirisotto',
	null,
	'andre,Pasta,Varmrätt',
	'5bfef21885fe4b3357a29114.jpg'
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:42:30',
	'Kycklingsoppa med ingefära och citrongräs',
	'Öka till två chilli',
	'asiatisk,nudlar,Varmrätt',
	'5bfef21885fe4b3357a29115.jpg'
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:42:50',
	'Mangogryta',
	null,
	'storkok,Varmrätt',
	'5bfef21885fe4b3357a29116.jpg'
), (
	'2018-11-28 19:52:56',
	'2021-05-26 18:13:53',
	'Rostad rotfruktssoppa med knaperstekt bacon',
	'4 portitioner\n\n2\tpkt\tbacon\n1\tdl\tturkisk yoghurt\n2\tst\tgula lökar\n300\tg\tmorötter\n500\tg\tpalsternacka\n2\tst\tvitlöksklyftor\n2\tst\tkycklingbuljongtärningar\n2\tmsk\tvitvinsvinäger\n1/2\tkruka\tpersilja\n\t\tsvartpeppar\n\t\tolivolja\n1,3\tliter\tvatten\n\n1) Sätt ugnen på 250 grader\n2) Skala palsternacka, morötter, lök och vitlök. Skär rotfrukterna och gul lök i grova klyftor. Lägg allt i en långpanna och ringla över lite olivolja. Rosta i mitten av ugnen i ca 20 min.\n3) Skär bacon i strimlor och stek utan matfett. Låt rinna av på hushållspapper. Lägg sedan i en skål.\n4) Hacka persiljan och lägg i en skål.\n5) Koka upp vatten med buljongtärningarna.\n6) Lägg i de rostade grönsakerna och mixa till en slät soppa.\n7) Tillsätt yoghurt och vitvinsvinäger. Smaka av med svartpeppar och tillsätt eventuellt mer vatten. Låt soppan sjuda några minuter på svar värme.',
	'',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:45:43',
	'Högrevsgryta med rotfrukter',
	'6 portioner\n\n1\tst\tgul lök\n6\tst\tlagerblad\n3\tst\tmorötter\n100\tg\trotselleri\n100\tg\tpalsternacka\n5\tkorn\tvitpeppar\n700\tg\thögrev\n 1/2\tdl\tBongs kalvfond\n7\tdl\tvatten\n\t\trapsolja\n\t\tsmör\n\t\tsvartpeppar\n\n1) Skär köttet i 3x3 cm bitar och bryn i lite olja och smör i en gryta. Häll på kalvfond och vatten så att det täcker köttet.\n2) Koka upp och tag bort skummet. Koka sedan på svag värme i ca 30 min.\n3) Skala lök och rotsaker och skär i skivor. Lägg ner i grytan tillsammans med vitpeppar och lagerblad.\n4) Låt koka i ytterligare 30 min eller till köttbitarna är mjuka.\n5) Avsluta med att smaksätta med ytterligare kalvfond och svartpeppar.',
	'storkok,potatis,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:46:05',
	'Gnocchi med mozzarella och tomater',
	null,
	'vegetarisk,andre,pasta,Varmrätt',
	'5bfef21885fe4b3357a29119.jpg'
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:46:55',
	'Kesolasagne',
	'1\tst\tgul lök\n2\tst\tvitlöksklyftor\n2\tburkar\tkrossade tomater (800 g)\n500\tg\tfryst bladspenat\n500\tg\tkeso\n1,5\tpkt\tlasagneplattor\n2\tdl\triven ost\n1/4 tsk\tcayenne\n2\ttsk\tsalt\n\t\tsvartpeppar\n\t\tolivolja\n\n1) Sätt ugnen på 225 grader.\n2) Skala och hacka lök och vitlök och fräs den i en stekpanna.\n3) Lägg i spenat och tomatkross. Låt puttra i några minuter.\n4) Krydda, ta av från värmen och tillsätt keso.\n5) Varva kesosåsen med plattor i en smord form. Sås underst och överst. Toppa med riven ost.\n6) Gratinera i ugnen i 20-25 minuter.',
	'vegetarisk,andre,storkok,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:47:15',
	'Yoghurtmarinerad mangokyckling',
	'1\tst\tgul lök\n1/2\tdl\tsolrosfrön\n3/4\tdl\tmango chutney\n2\tdl\tturkisk yoghurt\n3\tst\tvitlöksklyftor\n1/2\tst\tcitron\n3\tcm\tingefära\n3\ttsk\tspiskummin\n1\ttsk\tsalt\n1\tmsk\tsambal\n800\tg\tkycklingfile\n\n1) Sätt ugnen på 225 grader\n2) Finhacka lök och vitlök. Blanda i solrosfrön, mango chutney och turkisk yoghurt. Pressa i citronen, riv i ingefäran och krydda med spiskummin, sambal och salt. Sambal kan bytas mot chili eller cayennepeppar.\n3) Lägg kycklingen i yoghurtblandningen och rör runt så att den blir riktigt insmord.\n4) Lägg över kycklingen i en stor ugnsfast form och häll över resterande yoghurtblandning.\n5) Tillaga ca 15-20 minuter i övre delen av ugnen.\n\nServera med ris.',
	'Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:47:49',
	'Marockansk saffranskyckling',
	'200\tg\tmorötter\n1  st\tröd paprika\n1\tst\tgul lök\n600\tg\tkycklinglårfile\n1/2\ttsk\tsalt\n2\tklyftor\tvitlök\n1\tpaket\tsaffran\n1\ttsk\tkanel\n1\ttsk\tspiskummin\n2\ttsk\tsambal\n4\tdl\tvattten\n1\ttärning\tkycklingbuljong\n50\tg\tmandel\n\n1) Skala och tärna morötterna, tärna paprikan och finhacka löken.\n2) Halvera fileerna och bryn i olja. Salta, pressa i vitlöken och tillsätt grönsakerna från punkt 1. Stek i 2-3 minuter.\n3) Rör ner saffran, kanel, spiskummin, sambal, vatten och kycklingbuljong. Sjud under lock i 10 minuter.\n4) Skålla mandeln och tillsätt. Smaka av med salt.\n\nServeras med couscous. Kan strö finhackad persilja över kycklingen.',
	'Mellanöstern,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:48:10',
	'Chiligryta med mörk choklad',
	'1\tst\tgul lök\n2\tklyftor\tvitlök\n500\tg\tnötfärs\n2\tmsk\ttomatpure\n1\ttsk\tspiskummin\n1/2\ttsk\tsalt\n1\tdl\trött vin\n1\tdl\tvatten\n2\tst\tköttbuljongtärningar\n500\tg\tkörsbärstomater\n1\tförp.\tStora vita bönor\n20\tg\tmörk choklad\n\n1) Finhacka löken och vitlöken\n2) bryn nötfärsen och all lök\n3) Tillsätt tomatpure, spiskummin och salt. Fräs i 2-3 minuter.\n4) blanda i vin, vatten, krossade tomater och buljongtärningar. Koka i 25 minuter.\n5) Skölj bönorna och halvera tomaterna.\n6) Blanda i bönorna, chokladen och sambal. Låt koka i 2-3 minuter.\n7) Blanda i tomaterna och låt bli varma.\n\nServera med ris och grönsaker.',
	'Köttfärs,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:48:47',
	'Kyckling i ugn med citron och oliver',
	'1,2\tkg\tpotatis\n800\tg\tkycklinglårfileer\n2\ttsk\tsalt\n\t\tsvartpeppar\n1\tst\tcitron\n1\tburk\tblandade örtmarinerade oliver\n1/2\tkruka\trosmarin\n400\tg\tkörsbärstomater.\n\n1) Sätt ugnen på 250 grader\n2) Skala potatisen, skär den i ganska små bitar och lägg den i en ugnspanna eller stor ugnsform.\n3) Putsa kycklingen och lägg över potatisen. Salta och peppra.\n4) Skölj citronen nog. Skär den i tunna skivor och lägg ut i formen.\n5) Lägg ut oliverna och häll ut oljan över blandningen.\n8) Hacka rosmarinen och strö över.\n9) Tillaga i mitten av ugnen ca 25 minuter. Lägg på tomaterna när det är ca 10 minuter kvar. Halvera tomaterna om de är stora.',
	'Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:49:35',
	'Ärtbiffar med rostade rotfrukter',
	'8 portitioner\n\n500\tg\t gula ärtor\n1\tst\tgul lök\n2\tst\tvitlöksklyftor\n4\tmsk\tfinhackat persilja\n1\tmsk\tbakpulver\n2\ttsk\tsalt\n1\tmsk\tsvartpeppar\n1\tmsk\tfransk senap\n2\ttsk\ttorkad timjan\n2\ttsk\ttorkad mejram\n\t\trapsolja\n1\tkg\tblandade rotfrukter (morötter, palsternacka, kokt rödbeta etc.)\n1\tdl\tcreme fraiche\n3\tdl\tturkisk yoghurt\n2\tmsk\tfransk senap\n1/2\tkruka\tpersilja\n3\tkrm\tsalt\n2\tkrm\tsvartpeppar\n\t\tolivolja\n\nÄrtbiffar\n1) Blötlägg ärterna i minst 12 timmar\n2) Dela och hacka lök och vitlök.\n3) Mixa ärter, lök, vitlök, persilja, bakpulver, salt och peppar i en matberedare.\n4) Tillsätt senap, timjan och mejram.\n5) forma ca 15 biffar och stek i rikligt med olja i en het panna tills de är gyllenbruna, ca 3-4 minuter per sida.\n\nRotsaker\n1) Sätt ugnen på 200 grader\n2) Skala och dela rotfrukterna i mindre bitar\n3) Lägg i en ugnsäker form och blanda med olja. Tillaga i mitten av ugnen 20-25 min.\n\nSenapsklick\n1) Rör ihop creme fraiche, yoghurt och senap. \n2) Krydda med salt och peppar.',
	'vegetarisk,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:49:53',
	'Kalkonwok med röd curry och chilipicklad gurka',
	'250\tg\tbroccoli\n1\tst\tgurka\n500\tg\tkalkon eller kalkonfärs\n1\tburk\tkokosmjölk\n1\tst\tlime\n5\tmsk\tvitvinsvinäger\n3\tmsk\tsocker\n3\tmsk\tvatten\n1\tst\tchili\n2\tklyftor\tvitlök\n2 1/2\tmsk\tröd curry\n1\tst\tkycklingbuljong\n\t\tfisksås\n\t\trapsolja\n\n1) Blanda i en bunke: vitvinsvinäger, socker och vatten, finrivet skal från en lime och finhackad chili.\n2) Hyvla skivor av 1 gurka och blanda ner. Ställ åt sidan.\n3) Skär brockolin i mindre buketter.\n4) Hacka kalkonen i små bitar om du inte har kalkonfärs. \n5) Fräs curryn i lite olja. Lägg i kalkonen och fräs lite till. Pressa ner vitlöken och stek i 2-3 minuter.\n6) Tillsätt kokosmjölk, kycklingbuljong och saften från limen. Sjud i 5 minuter.\n7) lägg i broccolin och sjud i ytterligare 2 minuter.\n8) Smaka av med socker och fisksås.\n\nServeras med t.ex. ris.',
	'asiatisk,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2021-05-26 17:56:41',
	'Phad Thai (alt.)',
	null,
	'ASIATISK,VARMRÄTT',
	'5bfef21885fe4b3357a29121.jpg'
), (
	'2018-11-28 19:52:56',
	'2018-11-28 19:52:56',
	'Mangoshake',
	null,
	'dryck,frukt',
	'5bfef21885fe4b3357a29122.jpg'
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:50:35',
	'Mexikansk kikärtsgryta',
	'1/2\tst\tpurjolök\n1\tst\tzucchini\n3\ttsk\tpaprikapulver\n2\ttsk\tspiskummin\n2\ttsk\tmald koriander\n2\tburkar\tkrossade tomater\n1\tförp\tkikärtor\n1\tdl\tcrème fraiche\n1\ttsk\tsalt\n\t\tsvartpeppar\n\t\tmalen chipotlechili\n\n1) Strimla purjolök och tärna zucchini. Fräs tills de blir mjuka utan att få färg.\n2) Tillsätt paprikapulver, spiskummin, koriander, cajennpeppar, chipotlechili, salt, svartpeppar och fräs lite.\n3) Tillsätt krossade tomaterna och kikartorna (sköljda och avrunna). Låt koka upp.\n4) Tillsätt crème fraiche och låt puttra på svag värme i 5-10 minuter utan lock.\n\nServeras med ris.',
	'vegetarisk,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2021-05-09 06:00:58',
	'Olles Musli',
	'25 dl havregryn\n8 dl rågflingor\n4 dl havrekärnor (valfritt)\n2 dl bovete (valfritt)\n1 dl linfrön\n2 dl pumpakärnor\n3 dl solrosfrön\n2 dl riven kokos\n5 dl hackade nötter\n6 dl vatten\n1 dl honung\n1 dl neutral olja\n2 msk kardemumma\n1 dl nyponskal (valfritt)\n2 dl rostade kokosflingor \n2 dl russin\n3 dl torkad frukt i små bitar\n\n1) sätt ugnen på 125 grader varmluft\n2) blanda alla ingredienser fram till nötterna\n3) värm vattnet och blanda det med honungen och oljan\n4) häll i vattenblandningen och blanda väl\n5) lägg på 3 plåtar och torka i ugnen i 30 minuter\n6) ta ut plåtarna och blanda om väl. Sätt in plåtarna på nya ställen och torka ytterligare 20 minuter. \n7) upprepa steg 6\n8) låt muslin svalna och blanda sedan i de sista ingredienserna.',
	'FRUKOST',
	null
), (
	'2018-11-28 19:52:56',
	'2018-12-02 09:33:28',
	'Vietnamesisk chilidip',
	null,
	'Snack',
	'5bfef21885fe4b3357a29125.jpg'
), (
	'2018-11-28 19:52:56',
	'2021-05-22 07:16:22',
	'Sparrispasta med zucchini och soltorkad tomatsås',
	'Pasta\n1 zucchini (ca 300 g)\n250 g grön sparris\n4 port pasta (gärna pappardelle)\n1 msk olivolja\n130 g tapenade soltorkad tomat\n2 1/2 dl matlagningsgrädde\nsalt\npeppar\n\nSallad\n250 g körsbärstomater\n65 g rucola\n100 g grana padanoflarn\n1 dl pumpakärnor\n\nPasta: \n1) Sätt på en kastrull med vatten till pastan.\n2) Skär zucchinin i ca 1,5 cm stora tärningar och ansa och skär sparrisen i bitar.\n3) Koka pastan enligt anvisningen på förpackningen.\n4) Fräs zucchinin och sparrisen i olivoljan i en stekpanna. \n5) Sänk värmen och blanda grönsakerna med tapenade och grädde och koka upp. Smaka av med salt och peppar.\n\nSallad: Dela tomaterna och blanda med ruccola, ost och pumpakärnor.',
	'VEGETARISK,VARMRÄTT',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:51:31',
	'Biff Teriyaki',
	'400\tg\tstrimlat nötkött\n1\tst\tgul lök\n250\tg\tbroccoli\n1/2\ttsk\tsalt\n3/4\tdl\tteriyakisås\n2\tmsk\tjapansk soya\n2\ttsk\tsambal oelek\n2\tdl\tvatten\n\t\tsmör\n\t\tmajsena\n\n1) Skala och skiva lök och morötter. Dela broccolin i små buketter och strimla de späda stjälkarna\n2) Bryn köttet i smör. Salta\n3) Ta upp köttet och fräs grönsakerna. \n4) Lägg tillbaka köttet och häll på teriyakisås, soja, sambal oelek och vattnet\n5) Red av med lite majsena och låt koka i några minuter\n\nServera med ris.',
	'asiatisk,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:52:05',
	'Lammstek',
	'Ingredienser. Lammstek med honung, vitlök, rosmarin och citron\nPortioner: 8\n1 lammstek med ben, cirka 2 kg\nrejält med flingsalt\n6 vitlöksklyftor\n1 msk rosmarin\n1 dl honung, gärna akacia\nsaften från 1 citron\nsvartpeppar ur kvarn\nTILL SÅSEN:\n3 dl rödvin, gärna fylligt\n1/2 liter kalvfond (vatten + koncentrat)\n1 msk smör\n1 msk vetemjöl\nsvartpeppar\nlite kajennpeppar\nDet finns många sätt att göra lammstek. Jag tycker om att först använda hög värme (för att få vacker och smaklig yta), sedan låta steken gå klart på riktig låg temperatur (så att den blir saftig och mör). Honung, vitlök, rosmarin och citron bidrar med sötma, skärpa, örtighet respektive syra till det smakrika lammköttet. \nAnvänder man urbenad lammstek går det fortare. Använd köttermometer för säkerhets skull.\n\nLammstekar är olika tjocka, ugnar olika varma man kan aldrig vara riktigt säker på hur lång tid det hela tar. En stek kan hållas varm i folie åtminstone en halvtimme (den blir dock lite mer genomstekt om den står så länge). \nOm man använder färsk eller torkad rosmarin i receptet spelar ingen större roll varken i styrka eller kvalitet.',
	'Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:52:19',
	'Bolognese på högrev',
	'1\tkg\thögrev\n2\ttsk\tsalt\n1\ttsk\tnymald svartpeppar\n2\tmsk smör\n4\tst vitlöksklyftor\n2\tst\tgula lökar\n1\tdl\trött vin\n2\tstjälkar selleri\n1\tst\tmorot\n1/2\tdl\ttomatpuré\n1\tmsk\tsalvia\n1\tmsk\trosmarin\n1\tst\tlagerblad\n2\tmsk\tkoncentrerad kalvfond\n1\tburk\thela tomater\n4\tdl\tvatten\n1\tdl\tbladpersilja\n1\tdl\triven parmesanost\n\n1) Sätt ugnen på 100 grader\n2) Skär köttet fritt från hinnor och dela i grytbitar\n3) Skala vitlök och lök. Finhacka vitlöken och löken och stek den så att den blir lätt brynt.\n4) Lägg över lök och kött i en gryta. Skölj ur stekpannan med vinet och häll över köttet.\n5) Finskiva selleri. Skala och tärna moroten. Blanda ner i grytan med tomatpuré, öret och fond. Häll på tomat och vatten.\n6) Ställ grytan i ugnen 6-7 timmar.\n7)  Skär persiljan fint. Rör ner persilja och parmesan i grytan.\n\nServeras med tagliateller och riven parmesan',
	'pasta,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2019-07-01 18:40:30',
	'Lingonsylt',
	'500 g lingon\n1/2 dl vatten\nKoka i ca 5 min. \nTa bort från plattan och rör i 1 dl socker. Rör tills att sockret har smält. Häll upp på ren uppvärmd glasburk. Skruva på locket o låt kallna.',
	'',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:52:59',
	'Köttfärsbiffar i tomatsås',
	'~800g köttfärs\n2 burkar krossade tomater\nÖrtkryddor\n2 tsk salt\nSvartpeppar\n\nPotatis till potatismos\n-----------------------------------------------------\n\nKoka upp potatisvatten\n\nSalta och stek köttfärsen i en stor kaka.\nDela kakan efterhand för att få mer stekyta, men gör inte färs av den.\n\nBörja koka potatisen.\n\nTillsätt tomatsås när köttet är nära att bli klart.\n\nKrydda.\n\nGör mos av potatisen.',
	'andre,enkel,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2021-04-15 19:00:59',
	'Moussaka med oliver och fetaost',
	'600\tg\taubergin\n1\ttsk\tsalt\n500\tg\tpotatis\n1\tst\tgul lök\n2\tst\tvitlöksklyfta\n2\tburkar krossade tomater\n1 1/2 dl\ttorra röda linser\n2\tdl\toliver\n1 1/2 tsk\tsalt\n1\tmsk\ttorkad oregano\n1\ttsk\ttorkad basilika\n1\ttsk\ttorkad timjan\nolivolja\n3\tdl\tyoghurt\n3\tst\tägg\n\t\tsvartpeppar\n200\tg\tfetaost\n\n1) Sätt ugnen på 225 grader\n2) Skiva auberginen i 1 cm tjocka skivor och lägg på en plåt. Pensla med olivolja och salta. Sätt plåten i ugnen ca 10-15 minuter\n3) Dela oliverna på längden och ta ut kärnorna\n4) Skala och hacka lök och vitlök. Skala och skiva potatisen i 1/2 cm tjocka skivor.\n5) Stek lök, vitlök och potatis i olivolja tills det får lite färg.\n6) Tillsätt tomater, linser, salt och örtkryddorna. Låt puttra under lock i 10 minuter\n7) Vispa ihop yoghurt, ägg och svartpeppar.\n8) Smörj en ugnssäker form. Varva potatisblandningen och auberginerna. Häll över yoghurtsåsen och toppa med smulad fetaost.\n9) Gratinera mitt i ugnen 20-30 minuter tills potatisen är mjuk.',
	'VEGETARISK,VARMRÄTT',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:53:19',
	'Köttfärspaj',
	'Pajdeg nog att fylla stora glasformen\n\n800g köttfärs\n1-2 gula lökar\n2dl rött vin\n1 burk krossade (eller körsbärs-) tomater\n2 tsk sambal\n1 msk tomatpuré\n2,5 tsk salt\n3 tsk oregano\n\n4dl mjölk\n4 ägg\n2 dl riven ost\nLite Cayenne, paprika pulver samt svartpeppar i röran för utseende/smak.\n\n---------------------------------------------------------------------------\nBörja med att hacka lök och lägg den i pannan.\n\nFörgrädda pajdegen enligt beskrivning.\n\nStek köttfärs och krydda.\nLåt puttra tills den är relativt vätskefattig.\n\nRör ihop äggstanningen.\n\nHäll köttfärs, sedan ost och sist äggstanning i den gräddade degen.\nGrädda i ugn på 200 grader.',
	'Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2021-05-26 18:10:07',
	'Scones',
	'2 personer\n\nKnappt 4 dl mjöl\n1/2 tsk salt\n2 tsk bakpulver\n50 g smör\n1,5 dl mjölk\n\nSätt ugnen på 250 grader.\nBlanda torra ingredienserna.\nMosa smöret med händerna bland med de torra ingridienserna. Mosa inte för mycket.\nTillsätt mjölk och rör ihop snabbt med en sked.\n\nGrädda i två fyrdelade kakor.\nNagga kakorna för hårdare skal.\nKräver knappt 10 min i ugnen.',
	'FRUKOST,BAKAT,BRÖD',
	null
), (
	'2018-11-28 19:52:56',
	'2021-05-26 18:09:35',
	'Nudelbowl',
	null,
	'ASIATISK,VARMRÄTT',
	'5bfef21885fe4b3357a2912f.jpg'
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:54:45',
	'Lemongrass tofu',
	null,
	'asiatisk,vegetarisk,Varmrätt',
	'5bfef21885fe4b3357a29130.jpg'
), (
	'2018-11-28 19:52:56',
	'2020-04-17 21:12:53',
	'Rabarberkaka',
	'Ingredienser:\n75 g smör eller margarin\n1 tsk kardemummakärnor\n2 ägg\n2 1/2 dl socker\n1 tsk vaniljsocker\n2 1/2 dl vetemjöl\n1 tsk bakpulver\n4 dl rabarber\nlättvispad grädde eller vaniljglass till servering\nSå här gör du:\nDetta recept är gjort för 1 kaka. Dubbla receptet o byt ut 2dl mjöl mot mandelmjöl. Minska socker med 0,5 dl o strö det ovanpå istället. grädda i form 25x35.\nSätt ugnen på 200°C.\nSmörj eller lägg ett bakplåtspapper i botten på en form med löstagbar kant, ca 24 cm i diameter (för 1 kaka).\nSmält matfettet. Stöt kardemummakärnorna i en mortel.\nVispa ägg, socker och vanilj pösigt.\nBlanda mjöl och bakpulver, rör ner det och matfettet i smeten. Häll smeten i formen. Strö på rabarbertärningarna (skurna i ca 1 cm stora tärningar) och kardemumman.\nGrädda kakan mitt i ugnen 25-30 minuter. Kakan ska vara lite kladdig och seg.\nServera med lättvispad grädde eller vaniljglass.',
	'efterrätt,bakat',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-17 21:11:27',
	'Bittes äppelpaj',
	'6 äpplen\n150 g smör\n3 dl havregryn\n2 dl socker\n1,5 dl vetemjöl\n0,5 tsk bakpulver \n0,5 dl sirap\n2 msk mjölk\n\nSkiva äpplena runt o lägg i smord form. Smält smöret och blanda i de övriga ingredienserna. Fördela smeten över äpplena. Grädda i 175 g i ca 30 minuter. \nServera med lösvispad grädde smaksatt med rom.',
	'Efterrätt,Bakat',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:55:26',
	'Kyckling Ragú',
	'Olivolja till stekning\n1-2 morot\n1 gul lök\nLite celeri (mindre än morot)\n1 klyfta vitlök\n5 kvistar färsk timjan\nEventuellt lite salvia eller basilika\n1 lagerblad\n1 röd chili (ev. mindre om chillin är stark)\n500 g kycklinglårfilé\n100ml vitt vin\nSalt, peppar och grönsak-/kyckling buljong efter smak.\n\n1. Låt rotsakerna steka länge på låg värme i rikligt med olivolja.\n\n2. Stoppa i klycklingen så fint hackad som möjligt, viklöksklyftan hel (eventuellt lätt krossad för mer vitlökssmak), hackad chili, lagerblad, peppar, salt samt timjankvistar.\n\n3. När kycklingen ser färdig ut tillsätter du vitt vin och buljong.\n\n4. Servera med pasta (Gärna en skålad sort som kan få upp mycket sås).',
	'pasta,storkok,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:55:44',
	'Långbakad fläskkarré med gräddsås',
	null,
	'Varmrätt',
	'5bfef21885fe4b3357a29134.jpg'
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:57:26',
	'Hemgjord fylld pasta med tomatsås',
	'Till 3 personer\nTar cirka 1 timme från att du sätter på tomatsåsen. Alltså minst 1.5h totalt.\n\n---------------------\n\nPastan:\n140g vetemjöl\n140g durumvete\n3 ägg\nLite olivolja\n\nGör en vulkan av mjölet och kläck ägg samt häll olja i mitten. Tillsätt långsamt mjölet tills smeten blir en deg. Arbeta i minst 10 minuter eller tills degen känns homogen och hård. Om degen smular sig kan några milliliter vatten tillföras åt gången tills den håller ihop, men ej är kladdig. Stäng in i folie och låt sedan vila i kyl minst 30 min.\n\n---------------------\n\nFyllningen:\n200g ricotta\nMajoriteten av en basilikakruka\n70g riven parmesanost\n\nMixa ricottan och basilikan med en stavmixer. Tillsätt osten och mixa lite till.\n\n---------------------\n\nSåsen:\nEn burk plommon-/körsbärstomater\n1 vitlöksklyfta\nOlivolja till stekning\nCirka en halv dl torrt vitt vin\nNågra blad färsk basilika\nPyttelite socker\nSalt & svartpeppar efter behov\n\nStrax innan du tänkt ta fram pastadegen kan du börja med såsen. Börja med att fräsa vitlöken i olivolja på mellanhög värme. Tillsätt därefter tomaterna, vinet och sockret. Låt reduceras medan du fyller pastan och smaka sist av med salt, peppar och färsk basilika, precis innan du ska koka pastan.\n\n---------------------\n\nFyll pastan:\ndela degen i 4 delar och låt de oarbetade delarna lika inlindade i foliet när de inte används. Kavla ut en i taget så tunnt det går och skär ut cirklar ur degen med ett stort dricksglas. Lägg på sparsamt med fyllning och vik ihop till halvmånar. Pensla lite vatten på kontaktytan för att enklare få ihop månarna. Gör om för alla 4 delar samt ytterligare en gång för svinnet.\n\nKoka pastan i cirka 1-3 minuter beroende på tjocklek.\nFör att undvika att de går sönder, sänk ned och ta upp med hålslev, samt koka i två omgångar.\nDe färdigkokta pastana kan läggas ned direkt i tomatsåsen och serveras så.',
	'basilika,lyx,pasta,Vegetarisk,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-07-25 20:45:40',
	'Pasta med salsiccia i tomatsås',
	'2 Portioner\n\n~150g Salsiccia (Utan vitlökskyddning)\n1/2 Gul lök\n1/2 dl vitt vin\nOlivolja, peppar, timjan, oregano\n\nStek löken i rikligt med olivolja på låg värme i cirka 10 minuter.\nTillsätt korven och stek vidare på låg värme i ytterliggare 10 minuter (bränn inte löken)\nTillsätt resterande ingridienser, låt puttra tills lagom konsistens är nådd (cirka 1h).',
	'pasta,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2021-03-15 15:16:33',
	'Långrostade tomater',
	'30\tst\tkörsbärstomater\n2\tmsk\tolivolja\n1 1/2 tsk\tsalt\n1/2\ttsk\tsocker\n1/4\ttsk\tmald svartpeppar\n2\ttsk \ttorkad oregano\n\n1) skär tomaterna i halvor\n2) blanda övriga ingredienser i en skål\n3) lägg ut tomaterna med kupiga sidan uppåt på en plåt med bakplåtspapper\n4) sätt in ca 1 1/2 timme i 125 grader.',
	'SMÅRÄTT',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:56:33',
	'Tortiglioni med grön olivkräm',
	'400-500 g Tortiglioni\n150 g grön olivkräm eller pesto\n250 g ricotta\n250 g körsbärstomater\nParmesanost\nRuccula\nValnötter\nOlivolja\nSvartpeppar\n\n1) värm olivkrämen med 2 msk olivolja i en stor stekpanna. \n2) dela tomaterna i halvor\n3) blanda i ricotta och tomater\n4) koka pastan\n5) rör ner den nykokta pastan i såsen och koka ihop. \n\nServera med ruccula, krossade valnötter, hyvlad parmesan, svartpeppar och olivolja.',
	'pasta,vegetarisk,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 18:08:57',
	'Annas havrekakor',
	null,
	'havregryn,Bakat',
	'5bfef21885fe4b3357a29139.jpg'
), (
	'2018-11-28 19:52:56',
	'2020-04-19 17:58:13',
	'Marockansk Gryta',
	'4 portioner\n\n1\tst\tgul lök\n2\tst\tvitlöksklyftor\n1\tst\tfärsk röd chili\n1\tmsk\tvitvinsvinäger\n1\tmsk\ttomatpure\n1 1/2 tsk\tharissa elller sambal oelek\n400\tml\tkrossade tomater\n1/2\ttsk\tspiskummin\n1/2\tg\tsaffran\n1\ttsk\tmald ingefära\n1/2\ttsk\tmald kanel\n1/2\tmsk\tpaprikapulver\n1\tst\tgrönsaksbuljong\n3\tdl\tvatten\n400\tg\tsötpotatis\n400\tg\tkikärtor\n1\tdl\tsvarta urkärnade oliver\n1 1/2 msk\tpressad citron\n1/2\tdl\trussin\nrivet citronskal\nhackad färsk persilja\nsalt\nsvartpeppar\n\n1) finhacka löken, vitlöken och chilin\n2 fräs i olivolja tills det mjuknar\n3) häll på vinägern och låt ånga bort\n4) rör ner tomatpure och harissa. Låt fräsa med en kort stund.\n5) häll på tomaterna, kryddorna, buljongen och vattnet. Låt koka i 15 minuter.\n6) tärna sötpotatisen i kuber om 2x2 cm\n7) skölj kikärterna\n8) koka upp lite vatten och lägg russinen i blöt i 20 minuter.\n9) tillsätt kikärtorna och potatisen. Låt koka tills potatisen är klar, ca 20 minuter.\n10) riv citronskalet och pressa citronen. Hacka persiljan.\n11) Hacka persiljan\n12) vänd ner oliver och citronsaften. Smaka av med salt och peppar\n\nToppa med rivet citronskal, persilja och russin.\nServeras med couscous.',
	'vegetarisk,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 18:01:26',
	'Pastastubbar med pesto',
	'200 g färska pastaplattor\n1 dl pesto\n12 skivor skinka (av parmatyp)\n50 g ruccolasallad\n1 dl ricotta\n1 kruka färsk baslilika\n1 dl riven ost\n2 stora tomater\nbechamelsås eller en förpackning kelda ostsås\nsvartpeppar\nolivolja\n\nSätt ugnen på 250 grader\n1) Blanda pesto med ricotta och bred över lasagneplattorna\n2) Fördela skinka, ruccola, basilika och svartpeppar\n3) smörj en ugnsfast form med olivolja\n4) rulla ihop som en rulltårta och skär i bitar om ca 4 cm och ställ i formen\n5) Hacka tomater och fördela över pastan\n6) Häll över ostsåsen och strö över riven ost\n7) Gratinera i ca 15 min.',
	'Italiensk,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 18:01:43',
	'Bönlasagne med spenat och zucchini',
	'1 förp. kokta svarta böner (380 g)\n1 förp. kokta kidneybönor (380 g)\n1 gul lök\n3 vitlöksklyftor\n1 morot\n1 zucchini (300 g)\n2 påsar babyspenat (a 65 g)\n5 dl creme fraiche\n1 förp. krossade tomater (400 g)\n2 dl hackad basilika\n3 tsk salt\n1 tsk malen svartpeppar\n12 lasagneplattor\n50 g riven ost\nSmör\n\n1) häll av, skölj och låt bönorna rinna av. Lägg i en stor bunke.\n2) skala, dela och finhacka lök och vitlök. \n3) riv moroten\n4) skär zucchinin i små tärningar\n5) grovhacka spenaten\n6) lägg alla grönsaker i bunken och tillsätt krossade tomaterna, basilika och creme fraiche (spara lite till översta lagret)\n7) krydda med salt och peppar och blanda väl. \n8) täck bottnen på en ugnssäker plåt med plattorna\n9) varva bönröra och plattor. Avsluta med bönröra. \n10) klicka på resten av creme fraiche och toppa med osten\nStäll in i mitten av ugnen 35-40 minuter i 200 grader',
	'Vegetarisk,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2022-04-16 08:20:26',
	'Jiap che - sötpotatisnudlar',
	'Lagom för 4-5 hungriga. Minska socker o ev öka soja o vinäger',
	'ASIATISK,KOREANSK,VEGETARISK,VARMRÄTT',
	'5bfef21885fe4b3357a2913d.jpg'
), (
	'2018-11-28 19:52:56',
	'2020-04-19 18:01:57',
	'Gryta med Sötpotatis och Haloumi',
	'2,5\tdl\tröda linser\n1\tst\tfinhackad lök\n1,5\tklyfta hackad vitlök\n100\tg\tsojabönor\n500\tg\tsötpotatis\n1\tdl\tkvarngryn\n125\tg\tgrönkål\n200\tg \thaloumi\n10\tdl\tvatten\n1/2\tburk\tkokosmjölk\n2\ttsk\tkoriander\n2\ttsk\tingefära\n2\ttsk\tkummin\n1\tkrm\tkanel\n1,5\ttsk\tgurkmeja\n2\tkrm\tkardemumma\n2\tkrm\tkryddpeppar\n3\tkrm\tcayennepeppar\n1\tkrm\tfänkål\n1\tmsk\tcitron\n1,5\ttsk\tsalt\nsvartpeppar\n\nfräs lök och vitlök på låg värme\nTillsätt alla kryddor och fräs\nHäll på vatten och kokosmjölk\ntillsätt röda linser, kvarngryn och sötpotatis\nkoka tills det är nästan färdigt\ntillsätt haloumi, sojabönor och grönkål\nkoka tills allt är varmt.',
	'Vegetarisk,Varmrätt',
	null
), (
	'2018-11-28 19:52:56',
	'2020-04-19 18:08:24',
	'Nudelsallad med misokyckling',
	'Går bra med glasnudlar också. 300 g lagom för ca 10 p ( 1,5 kg kyckling).',
	'Asiatisk,Varmrätt',
	'5bfef21885fe4b3357a2913f.jpg'
), (
	'2018-11-28 19:52:56',
	'2019-11-23 07:03:23',
	'Pavlova på snabbt vis',
	'Vispa grädde o blanda med lika delar turkisk yoghurt samt ca 2 tsk vardera av vaniljsocker och florsocker - till 4 dl grädde ( o 4 dl yogh). Riv gärna i skal från citron. \nBred ut på maränger och täck sedan med bär och frukter. T ex hallon, blåbär, björnbär, persika och sist lite nötter t ex valnötter. Denna sats räcker bra till ca 7-8 st.\nOBS! Färdigköpta maränger smälter väldigt fort. Blanda precis innan det ska ätas. ',
	'Efterrätt',
	null
), (
	'2018-11-30 14:54:11',
	'2018-11-30 14:54:11',
	'Phad Thai Sås',
	'Kan frysas',
	'Asiatisk',
	'5c014ec7e5768f1336f80b22.jpg'
), (
	'2018-11-30 14:55:01',
	'2020-04-19 18:02:48',
	'Phad Thai',
	'Såsen finns i annat recept',
	'Asiatisk,Varmrätt',
	'5c014f1ae5768f1336f80b23.jpg'
), (
	'2018-11-30 15:36:06',
	'2021-03-01 17:29:14',
	'Andrés Musli (experimentell)',
	'8 dl gryn (havre lr blandade)\n2 dl nötter (hårda nötter blr hackas)\n1dl linfrön\n1dl kokos\n2 krm salt\n1 msk kardemumma (knappt)\n2 msk vaniljsocker (knappt)\n2 msk socker\n3 msk kokosfett\n1.5 dl kokande vatten\n\nBlanda allt torrt.\nBlanda vatten, kokosfett och socker för sig.\nKombinera.\nKör på varmluft 125 grader i en timme typ, med omrörning ett par gånger under tiden.',
	'ANDRE,FRUKOST',
	null
), (
	'2018-11-30 15:59:52',
	'2020-04-19 18:03:06',
	'Vegetarisk köttfärssås',
	'2.5 dl belugalinser\n1 burk krossade tomater\n1 burk körsbärstomater\n2 lökar\n1 vitlöksklyfta\n3 morötter\nRotselleri motsv. halva morötterna\n2 grönsaksbuljongtärningar\nOregano\nBasilika\nSalvia\nSvartpeppar\nSalt\nMycke olivolja\nVitt vin\n5dl vatten (kan behövas mer)\n\nKör först lök, morötter, selleri, vitlök och olivolja på låg värme.\n\nTillsätt linserna, vatten, vin, buljong, salt och körsbärstomaterna tills de börjar få hyffsad konsistens.\n\nTa i resten o koka tills linserna är färdiga.',
	'Storkok,pasta,Varmrätt',
	null
), (
	'2018-11-30 16:18:55',
	'2021-03-15 15:16:47',
	'Hummus',
	'Kikärtor\nCitron\nSalt\nPeppar\nOlivolja\nVatten eller yoghurt\n\nValfritt:\nSpiskummin\nSummak\nChilli',
	'ANDRE,DIP,SMÅRÄTT,TILLBEHÖR',
	null
), (
	'2018-12-05 20:38:25',
	'2020-04-17 21:14:04',
	'Chocolate chip cookies',
	null,
	'Efterrätt,Bakat',
	'5c083704313cd01209a4d726.jpg'
), (
	'2018-12-06 17:34:31',
	'2018-12-30 15:06:36',
	'Mammas marängtårta',
	'Räcker till 6-8 personer beroende på hur mycket man vill ha.\n\nBottnen ska stå åtminstone 30-60 minuter efter bakning innan tårtan läggs upp. De kan även bakas dagen innan och bör då förvaras torrt (inte i kylen). För godaste resultat (kanske, inconclusive testing) bör även den färdiga tårtan få stå i kylen i 30-60 minuter iallafall efter att den garnerats då den blir godare när den är lite kall och bottnet sugit åt sig lagom mycket vätska.\n\nTillagas i en bakplåtspappersklädd långpanna om c:a 1000-1200 cm^2.\n150 grader i c:a 40 minuter.\n\nSockerkaksbotten:\n125g smör\n1.5 dl strösocker\n6 äggulor\n2.5 tsk bakpulver\n3 tsk vaniljsocker\n135 g mjöl\n3 msk mjölk eller yoghurt\n\nMarängbotten:\n6 äggvitor\n3 dl socker\n50g mandelspån (optional)\n1 tsk vaniljsocker\n\nFyllning:\n4-5 dl grädde\n400-500g bär\n1 lime\n\n\nGöra sockerkakan:\nVispa socker och smör med elvisp i ett par minuter för att få luftigt.\nDela äggen så att gulorna kommer i smeten och vitorna i en annan bunke.\nVispa lätt ihop med elvisp.\nTillsätt mjöl, vaniljsocker och bakpulver.\nVispa lätt ihop med elvispen.\n\nGör marängen:\nSe till att visparna är helt rena från fett.\nVispa äggvitan tills bunken kan vändas upp och ned. Tillsätt socker och vispa igen tills bunken kan vändas upp och ned. Tillsätt vaniljsocker och rör lätt ihop.\n\nBred ut sockerkakssmeten i pappersklädd form och bred därefter ut marängen ovanpå.',
	'efterrätt',
	null
), (
	'2018-12-08 10:28:25',
	'2018-12-08 10:28:25',
	'Andrés låtsaspaj',
	'Frysta bär\nHavregryn\nKokos\nVaniljsocker (valfritt)\nYoghurt\nKvarg (valfritt)\n\nTina bär i en tallrik så de blir lite varma med inte heta.\nStrö över mycket havregryn (ska va mer än vad man tror).\nStrö över lite vaniljsocker och rikligt med kokos.\nMosa runt lite lätt med en sked, men inte så det blandas för mycket.\nHäll på ett tunnt lager yoghurt och droppa eventuellt på lite kvarg.',
	'Frukost,Bär',
	null
), (
	'2018-12-08 10:33:38',
	'2018-12-08 10:35:58',
	'Andrés smoothie',
	'Havregryn\nVaniljsocker\nCashewnötter\nKoko (valfritt)\nEtt par jordnötter (valfritt)\nFrysta bär (majoritet hallon)\nYoghurt\nKvarg (valfritt)\nÄgg (valfritt)\n\nBlanda torra ingridienser först i mixer. Tillsätt blöta och frysta ingridienser och mixa. Balandera mängderna för att få en bra konsistens. Tillsätt eventuellt lite vatten om det hela är för fryst.',
	'Bär,Frukost,Mellanmål',
	null
), (
	'2019-02-23 09:06:57',
	'2020-04-17 21:14:51',
	'Tryffechokladtårta ala Maggan',
	null,
	'Efterrätt',
	'5c710d17f541280b2aa327da.jpg'
), (
	'2019-02-24 09:59:56',
	'2021-05-22 07:38:11',
	'Potatisgratäng',
	'4 personer\n\n1.5 kg potatis\n3 dl grädde\n4-5 dl mjölk\n0-2 vitlöksklyftor\n2 tsk salt\nSvartpeppar\n\n200 grader, en timme ungefär.\nAlternativt grädda den  hyffsat klar o sen låta den stå på låg värme medan man färdigställer allt annat',
	'TILLBEHÖR',
	null
), (
	'2019-04-28 09:13:32',
	'2019-04-28 09:13:49',
	'Amerikanska pannkakor',
	'För två personer, cirka 12 st\n\n2.5 dl vetemjöl\n2 tsk bakpulver\n1 krm salt\nKnappt 2.5 dl mjölk\n1 ägg\n2 msk smält smör\nEller\nChocolate chips\n\nBlanda torrt, sen mjölk, sen ägg, sist fett.\nStek i smör.',
	'Frukost,Brunch',
	null
), (
	'2019-05-16 19:43:50',
	'2020-04-17 21:15:49',
	'Äppelkaka i långpanna',
	null,
	'Äpple,Efterrätt',
	'5cddbc70e4f41f050fb709fe.jpeg'
), (
	'2019-06-02 05:27:05',
	'2020-04-19 07:26:17',
	'Enkel Blåbärsglass',
	'5 dl vispgrädde\n1 burk sötad kondenserad mjölk (à 400 g)\n250 g frysta, tinade blåbär\n\n1) Vispa vispgrädde.\n2) Blanda sötad kondenserad mjölk och tinade blåbär. \n3) Vänd ner grädden och rör till en jämn smet. \n4) Häll smeten i en form.\nStäll in i frysen minst 6 timmar.\n\nTill servering: Ta ut ca 10 minuter före servering. Bjud gärna i våffelstrutar och strö över hackade hasselnötter.',
	'Efterrätt',
	null
), (
	'2019-06-16 08:00:14',
	'2021-05-26 18:00:35',
	'Ett fantastiskt bröd',
	null,
	'BAKAT',
	'5d05f6ace4f41f050fb70a00.jpeg'
), (
	'2019-06-16 08:02:28',
	'2021-05-22 07:30:25',
	'Tabbouleh på matvete och säsongens rotfrukter',
	'6 port matvete\n1 grönsaksbuljongtärning\n300 g morötter\n300 g kålrabbi\n200 g gulbetor\n1 1/2 msk olivolja\nsalt och svartpeppar\n3 dl hackad persilja\n2 påsar babyspenat (à 65 g)\nrivet skal av 1 citron\n3 msk färskpressad citronsaft\n1 msk paprikapulver\n4 msk olivolja\n\n1) Sätt ugnen på 225˚C. Sätt in en plåt i ugnen.\n2) Koka matvetet enligt anvisningen på förpackningen med en buljongtärning i vattnet. Häll av ev. överflödig buljong. Låt matvetet svalna.\n3) Skala och tärna rotfrukterna i ca 1x1 cm stora tärningar. Blanda dem med olivoljan. Smaksätt med salt och peppar. \n4) Häll rotfrukterna på den förvärmda plåten. Sätt in plåten mitt i ugnen 12-15 minuter, eller tills rotfrukterna är mjuka.\n5) Hacka persilja och spenat grovt. \n6) Riv det yttersta skalet av citronen och pressa ur saften.\n7) Blanda matvete, rotfrukter, persilja, spenat, citronskal, paprikapulver, citronsaft och olivolja. Smaksätt med salt och peppar.\n\nServera med Rostad Paprika- och harissayoghurt, pitabröd och gärna Orientkryddad kycklingfilé/tofu',
	'VEGETARISK,TILLBEHÖR',
	null
), (
	'2019-06-18 04:46:48',
	'2019-06-18 04:47:48',
	'Marängpaj med bärcurd',
	null,
	'',
	null
), (
	'2019-07-11 19:30:27',
	'2019-07-11 19:30:27',
	'Bröd i stekpanna',
	'4 bröd (hälften så stora som köptortillas, men tjockare)\n\n100g mjöl\nknappt 1/2 tsk salt\nknappt 1/4 tsk bakpulver\n25g smör\n1/2 dl varmt vatten (nästan kokande tror jag)\n\nBlanda torringridienser.\nMojsa smör med en gaffel tills det är scones-fördelat.\nHäll på varmt vatten o rör ihop allt till en deg.\nTillsätt ev. mer mjöl om degen känns som den fastnar.\nLåt vila varmt 20 min.\nKavla ut eller kör i pastamaskinen.\nStek i torr stekpanna, 80-90% värme, 1 min på varje sida sen 1 min igen på första sidan.',
	'tortilla,pita',
	null
), (
	'2019-09-18 18:10:11',
	'2021-05-26 18:01:30',
	'Danskt rågbröd',
	'',
	'BAKAT',
	'5d8272ede4f41f050fb70a07.jpg'
), (
	'2019-12-09 22:38:42',
	'2019-12-09 22:44:52',
	'Bountybollar',
	'Bountybollar\nhttps://www.ica.se/recept/?recipeid=714212\nMinska socker \n',
	'Godis',
	null
), (
	'2020-03-29 06:25:37',
	'2021-08-28 12:56:32',
	'Flammkuchen',
	'DEG: \n240 gram vetemjöl, ca 4 dl\n1 äggula\n3 msk olivolja\n3/4 tsk salt\n1 dl hett vatten\nTOPPING: \n300 gram varmrökt fläsk\n1 gul lök\n125 g riven ost som mozzarella eller lagrad ost som comte, Västerbotten, prästost eller liknande (valfritt)\n1 dl créme fraiche\nSvartpeppar\nflingsalt\n\n1) Koka upp vatten i en kastrull eller vattenkokare. Låt svalna något.\n2) Väg upp mjöl i en degbunke.\n3) Tillsätt olivolja, salt, äggula och rör i hett vatten. Arbeta ihop till en deg med händerna på bänken. \n4) Låt degen vila övertäckt en timme. Hit kan du förbereda och ha degen i kylen inslagen i plastfilm.\n5) Sätt ugnen på 250 grader varmluft. Sätt in plåten så att den blir varm. \n6) Förbered topping: skär fläsket i små strimlor. Skala och strimla lök. Riv ost..\n7) Dela degen i tre delar och kavla ut en deg i taget med lite extra mjöl. Kavla så tunna - cirka 2 mm - du kan. En storlek som en rektangel på 20x30 cm är lagom till varje - då passar de i en långpanna. Lägg försiktigt över den utkavlade degen på bakplåtspapper.\n8) Sprid ut ett lager créme fraiche över degen. Sprid ut ost om du vill ha det på. Vidare lök och fläsk samt sist svartpeppar.\n9) Ta ut den varma plåten och för över flammkuchen på bakplåtspappret direkt på den heta plåten.\n10) Grädda en flammkuchen i taget i nedre delen av ugnen i ca 5-7 minuter. Passa den mot slutet.\n\nServera direkt. Lägg över med bakplåtspappret under på en stor skärbräda och skär i rutor. Förslagsvis åtta stycken. Strö över lite flingsalt precis innan servering.',
	'VARMRÄTT',
	null
), (
	'2020-03-31 16:23:38',
	'2021-02-27 07:15:28',
	'Ratatouille',
	'1 1/2 kg blandade grönsaker (t ex aubergine, zucchini, paprika)\n1 rödlök eller vanlig lök\n2 vitlöksklyftor\n1/2 dl olivolja\n1 msk tomatpuré\n1 förp krossade tomater (à 400 g)\n2 dl vatten\n2 msk rödvinsvinäger\n2 tsk salt\nTimjan\nRosmarin\nSvartpeppar\n\n1) Hacka alla grönsaker i fina tärningar. Skala och skiva löken tunt, skala och hacka vitlöken. \n2) Fräs Löken i oljan på låg värme tills den mjuknar. \n3) Tillsätt grönsaker och tomatpuré och fräs 10-20 minuter\n4) Häll i krossade tomater, vatten, vinäger och kryddor.  Låt koka 30–40 minuter under lock på svag värme.',
	'VEGETARISK,TILLBEHÖR',
	null
), (
	'2020-04-00 15:47:20',
	'2020-04-19 18:10:14',
	'Bolognese med linser',
	'150 g rotselleri\n2 gula lökar\n4 vitlöksklyftor\n1/2 dl olivolja\n5 dl torkade belugalinser eller gröna linser\n1 l vatten\n2 förp krossade tomater (à 500 g)\n1 dl strimlade torkade tomater\n2 msk torkad oregano\n2 msk torkad basilika\n2 msk vinäger\n3 tsk salt\n1 tsk nymalen svartpeppar\n\n1) Skala och riv rotsellerin. Hacka lök och vitlök.\n2) Hetta upp olja i en rymlig kastrull och stek rotselleri, lök och vitlök tills löken mjuknat utan att ta färg.\n3) Tillsätt linser, vatten, krossade tomater, soltorkade tomater och oregano. Koka upp och sjud ca 40 min tills linserna är mjuka. Rör då och då.\n4) Smaka av med vinäger, salt och peppar.\n\nLite smaklös. Prova krydda med något mer nästa gång. ',
	'pasta,vegetarisk,Varmrätt',
	null
), (
	'2020-04-10 20:49:30',
	'2020-04-19 18:11:55',
	'Kryddiga köttbullar i tomatsås',
	'10 portioner\n\nTomatsås:\n5 vitlöksklyftor\n2 msk olivolja\n1 - 1 1/2 röda chili (t ex spansk peppar) eller chilipeppar (1 1/2 chili motsvarar 2-3 krm chilipeppar)\n4 tsk oregano\n4 burkar hela tomater (à 400 g)\n2 msk rödvinsvinäger\n2 dl grovhackad basilika och mejram\n1 tsk salt\n1 tsk socker\n1 - 1 1/2 krm nymald svartpeppar\n\nKöttbullar:\n3 gula lökar\n3 vitlöksklyftor\n1 - 1 1/2 röda chili (t ex spansk peppar) eller chilipeppar (1 1/2 chilipeppar motsvarar 2-3 krm chilipeppar)\n1200 g nötfärs\n2 dl ströbröd\n4 msk oregano\n1 msk spiskummin\n3 msk finhackad rosmarin\n3 msk senap\n3 äggulor\n2 tsk salt\n2 - 2 1/2 krm nymald svartpeppar\n4 msk olivolja\n2 dl rivna basilikablad\n2 mozzarellaostar (à 125 g)\n3 dl färskriven parmesanost\n\n1) Skala och finhacka vitlöken. \n2) Stek vitlöken i olivolja i en kastrull. \n3) Skölj, kärna ur och finhacka chilin om färsk används.\n4) Tillsätt chili, oregano och tomater. Låt puttra under lock 30 min-1 tim.\n5) Tillsätt sedan vinäger, rör om och hacka sönder tomaterna. \n6) Tillsätt örterna, smaka av med salt, socker och peppar.\n7) Skala och finhacka lök och vitlök.\n8) Blanda färsen med de båda löksorterna. ströbröd, kryddor, senap och äggulor. Krydda med salt och några ordentliga tag med pepparkvarnen.\n9) Blanda i 2 msk av olivoljan (för 10 port). \n10) Rulla smeten till stora köttbullar som läggs på en vattensköljd skärbräda. \n11) Bryn köttbullarna i omgångar i resten av olivoljan i en stekpanna.\n12) Blanda köttbullarna med tomatsåsen i en långpanna eller ugnssäker form. Tillsätt basilikan.\n13) Skär mozzarellaosten i bitar. Strö dem och parmesanosten över köttbullar och sås. \nGratinera mitt i ugnen i 225°C, ca 20 min. Servera med pasta.',
	'Köttfärs,Varmrätt',
	null
), (
	'2020-04-19 07:22:22',
	'2020-07-06 16:27:44',
	'Svartabönbiffar',
	'2 förp kokta svarta bönor (à 380 g)\n1 finhackad rödlök\n1 hackad vitlöksklyfta\n1 dl hackade färska örter (t ex persilja, basilika)\n3/4 tsk salt\n1/2 finhackad röd chili eller 1/2 tsk torkad pirripirri\n1 1/2 dl grovhackade rostade pumpakärnor\n4 msk potatismjöl\n1 msk olivolja\nolja till stekning/grillning\n\n1) Stek löken på låg värme så att den blir glansig\n2) Häll av och skölj bönorna i kallt vatten. Låt rinna av. \n3) Mosa bönorna med en gaffel i en bunke.\n4) Rör ner övriga ingredienser, tillsätt potatismjölet på slutet.\n5) Forma till burgare.\nPensla med olja och grilla eller stek 3–4 min per sida.',
	'Vegetarisk,Varmrätt',
	null
), (
	'2020-04-19 17:14:41',
	'2020-04-20 10:01:11',
	'Panerad rotselleri med ärtpotatismos och tartarsås',
	'Tartarsås:\n1 dl majonnäs\n1 dl crème fraîche\n5 cornichons\n2 rågade msk kapris\n1 schalottenlök\n0,5 citron, saft och zest (prova med mindre nästa gång)\nsalt\npeppar\n\nPotatismos:\n1 kg potatis\n4 dl frysta ärtor\n100 g fryst spenat\n4 msk smör\n1 dl mjölk\nsalt\npeppar\n\nPanerad rotselleri:\n1 rotselleri\n1 dl vetemjöl\n2 ägg\n4 dl pankoströbröd\n3 msk rapsolja\n\nTartarsås:\n1) Hacka schalottenlök, cornichons och kapris fint. \n2) Blanda med majonnäs och creme fraiche samt citron. Salta och peppra och ställ kallt.\n\nMos:\n1) Skala potatisen, dela i mindre bitar och koka dem mjuka i saltat vatten. \n2) mikra spenaten\n3) Häll i ärterna och låt koka med 1 minut. Häll av vattnet men spara lite.\n4) blanda i spenaten\n5) Häll i smör och mjölk i kastrullen och gör ett grovt mos.\n\nPanerad rotselleri:\n1) Skala rotsellerin och dela den på mitten. Skär halvmåneskivor, ca 1 cm tjocka.\n2) Koka upp en kastrull med vatten som rymmer all rotselleri. Koka rotsellerin i ca 5-6 min eller tills den känns mjuk. \n3) Häll av vattnet och torka skivorna lätt.\n4) Lägg mjöl i en tallrik, vispade äggen i en tallrik och pankon i en tallrik. \n5) Doppa rotsellerin i mjöl, ägg och sist panko. Försök trycka till panko ordentligt.\n6) Stek skivorna på medelvärme i olja tills de är gyllene på båda sidor. \n\nServera med moset, såsen, citron och hackad persilja',
	'Vegetarisk,Varmrätt',
	null
), (
	'2020-04-25 15:27:39',
	'2021-05-22 07:37:45',
	'Potatisgratäng, förkokt',
	'2 kg fast potatis (gärna marilyn)\n3 vitlöksklyftor\n2 1/2 dl vispgrädde\n5 dl mjölk (3 %)\n2 1/2 tsk salt\n1 tsk grovmalen svartpeppar\n2 dl riven ost (eller 400 g chèvre)\n\n1) Sätt ugnen på 200°C.\n2) Skala och skär potatisen i 3–4 mm tjocka skivor, gärna i matberedare. \n3) Skala och finriv vitlöken.\n4) Koka upp grädde, mjölk, vitlök, salt och peppar i en kastrull. \n5) Tillsätt potatisen och låt koka upp under omrörning. Koka på medelvärme utan lock tills potatisen är mjuk, ca 20 minuter. Rör då och då. \n6) Smaka av. Tillsätt ev mer salt och peppar.\n7) Häll potatisblandningen i en ugnssäker form, ca 25x30 cm. Jämna till och strö över osten. \nGratinera i mitten av ugnen ca 30 minuter. Låt gratängen vila minst 30 minuter i ugnen på eftervärme före servering, så den hinner sätta sig.\n\nGratängen går fint att laga 1 dag innan. Öka i så fall mängden grädde till 3 dl och mängden mjölk till 6 dl och följ receptet till och med punkt 6. Täck över och förvara i kylen. När det är dags för servering, värm gratängen i ugnen på 150°C till den är genomvarm, ca 45 minuter. Täck ev med folie mot slutet om den får för mycket färg.',
	'TILLBEHÖR',
	null
), (
	'2020-04-29 18:27:42',
	'2020-04-29 18:58:53',
	'Biff Stroganoff',
	'3 gula lökar\n1 vitlöksklyfta\nca 700 g rostbiff\nsmör att steka i\n1 tsk salt\npeppar\n2 tsk paprikapulver (kan uteslutas)\n3 msk tomatpuré\n2 msk dijonsenap (ganska lite senapssmak)\n7 dl vatten\n1 köttbuljongtärning\n2 dl crème fraiche\n\n1) Skala och skiva lök och vitlök. \n2) Skär köttet i strimlor.\n3) Stek lök och vitlök mjuk och flytta över i en kastrull \n4) Bryn köttet i omgångar i resten av matfettet och lägg i kastrullen\n5) Krydda köttet med salt och peppar. Tillsätt löken. Rör ner paprikapulver, tomatpuré och senap. \n6) Tillsätt vatten och buljongtärning\n7) koka med lock ca 30 minuter eller tills köttet är mört. \n8) Blanda ner crème fraiche och låt sjuda ca 5 minuter. ',
	'Varmrätt',
	null
), (
	'2020-04-30 20:44:00',
	'2020-09-21 14:45:08',
	'Rabarberkaka',
	'Rabarberkaka, 8 bitar\n\n150 g rumsvarmt smör\n3 dl strösocker\n2 ägg\n3 dl vetemjöl\n2 tsk vaniljsocker\n1 tsk bakpulver\n2-3 rabarberstjälkar\n\nTill servering:\nFlorsocker\nRåkram, recept: Råkräm\n\nGör så här:\n1. Sätt ugnen på 175 grader. Klä en springform på ca 24 cm med bakplåtspapper i botten och smörj kanterna med smör.\n2. Vispa smör och socker fluffigt, tillsätt ett ägg i taget.\n3. Blanda de torra ingredienserna och vispa ner dessa i smeten. Bred ut smeten i formen.\n4. Skär rabarbern i tunna stavar och tryck ner i smeten.\n5. Baka mitt i ugnen 40-50 minuter. Känn med en sticka att den inte kommer ur helt kladdig i mitten på kakan.\n6. Låt kakan vila 10 minuter i formen innan su stjälper upp den på ett fat.\n7. Pudra med florsocker och servera gärna med lite råkräm!\n',
	'Bakat',
	null
), (
	'2020-05-13 10:59:59',
	'2020-05-14 18:20:54',
	'Potatisbullar Aloo ticki chaat',
	'15 frysta potatisbullar\n\nRostade kikärter:\n2 pkt kokta kikärter\n2 msk rapsolja\n1 tsk mald spiskummin\n1/2 tsk paprikapulver\n1/2 tsk chilipeppar\n1 krm kayennepeppar\n\nKorianderchutney:\n4 msk fryst koriander\n4 msk fryst mynta\n2 st chilifrukter, hackade\n1-2 lime, saften\n1 msk vatten\n\n1) sätt ugnen på 225 grader\n2) skölj kikärterna och låt rinna av\n3) blanda kikärterna med olja och kryddor och lägg ut dem på en plåt\n4) lägg potatisbullarna bredvid på plåten\n5) låt stå i ugnen i 15 minuter\n6) mixa alla ingredienserna till chutneyn \n\nServera med turkisk yoghurt och mango chutney eller tamarindchutney',
	'Varmrätt,Indiskt,Vegetariskt',
	null
), (
	'2020-05-22 07:05:28',
	'2021-03-15 15:05:37',
	'Salta mandlar',
	'',
	'SNACK',
	'5ec77984e4f41f050fb70a13.jpg'
), (
	'2020-07-11 17:35:34',
	'2020-07-12 05:45:32',
	'Bouillabaisse med fänkål',
	'1 stor fänkål\n400 g potatis\n1 pkt saffran\n2 dl grädde\n2 dl vatten\n350 g färdigkokta linser, t.ex. gröna eller beluga\n4 vitlöksklyftor\n3 msk rapsolja\n1 1/2 msk vitvinsvinäger\n1 1/4 tsk salt\n1 krm cayennepeppar \nSvartpeppar\n\n1) skiva fänkålen och vitlöken\n2) dela potatisarna i ganska små bitar\n3) stek potatis, fänkål och vitlök mjuka i oljan\n4) tillsätt saffran och salt. Stek i några sekunder och tillsätt sedan grädde, vinäger och vatten. Koka tills potatisen är mjuk. \n5) vänd ner linsens och låt dem bli varma\n\nServera med aioli eller turkisk yoghurt',
	'Vegetarisk,Varmrätt',
	null
), (
	'2020-07-20 20:42:20',
	'2020-07-25 20:42:22',
	'Strawberry Daiquiri',
	'4 personer:\n\n20 cl ljus rom eller tequila\n16 cl pressad lime\n8 cl sockerlag (hälften socker, hälften vatten)\n500 g jordgubbar (färska eller frysta)\n300 g is (en ispåse)\n\nKör allt i en mixer. ',
	'Drink',
	null
), (
	'2020-07-26 09:48:14',
	'2021-02-03 18:22:05',
	'Tapas',
	'Tapas för 4\n\nVannameiräkor i vitlök o chili:\n300g vannameiräkor\n2-3 klyftor vitlök\n1,5 dl olja ( varav 2/3 oliv)\n2 krm krossad chili\n\nChorizo i vin:\n4 chorizo ca 200g zetas lättorkade\n1 tsk olivolja\nCa 1/2 dl rött vin\n\n\nDadlar med bacon\n\nSmå potatisar, förkokade som sedan grillas. \n\nStekta padrones med flingsalt. \n\nRostade brödskivor med hackade tomater, olivolja, flingsalt och skinka. \n\nAlbondigas enligt separat recept.',
	'SMÅRÄTT',
	null
), (
	'2020-08-12 18:50:08',
	'2020-08-29 14:40:23',
	'Albondigas',
	'Köttbullar:\n500 g nötfärs\n2 vitlöksklyftor\n1 ägg\n2 ½ msk ströbröd\n2 msk hackad persilja\n¾ tsk paprikapulver\n¼ tsk chipotle\n¼ tsk cayennepeppar\n1 tsk salt\n¼ tsk svartpeppar\n1 msk olivolja\n\nTomatsåsen:\n1 medelstor lök\n2 msk olivolja\n2 vitlöksklyftor\n2 burkar krossade tomater\n½ tsk fänkål\n1 tsk oregano\n2 lagerblad\n¼ tsk cayennepeppar\n2 msk hackad persilja\nsalt och peppar\n\nMeatballs:\nPlace the ground meat, grated garlic cloves, lightly beaten egg, dried breadcrumbs, parsley, sweet, smoked and hot paprika, salt, and pepper in a bowl. Mix well with your hand. Form between 30 and 35 small meatballs, about the size of a walnut.\nHeat the oil in a large skillet. Fry the meatballs (in two batches if necessary) until brown on all sides. This will take about 5 minutes. Take the meatballs out of the pan and set aside.\n\nTomato sauce:\nChop the onion very finely.\nHeat the 2 tablespoons olive oil in the same skillet. Add the onion and cook it until translucent. Add the finely chopped garlic cloves and stir for another minute.\nAdd the tomatoes from the can, fennel seeds, oregano, bay leaves, cayenne pepper, and chopped parsley. Add some salt and pepper as well. Stir well and bring to a boil. Simmer on medium-low heat for 20 minutes or until slightly thickened.\nAdd the meatballs to the pan and heat them in the sauce for about 5 minutes or until cooked through.\nServe as suggested above.\n',
	'Varmrätt,smårätt',
	null
), (
	'2020-09-05 05:02:32',
	'2020-09-21 14:45:45',
	'Heléns blåbärskaka',
	'',
	'Bakat',
	'5f531baee4f41f050fb70a18.png'
), (
	'2020-09-21 14:41:51',
	'2021-05-22 07:37:23',
	'Blomkålsmos',
	'ca 1 kg blomkål\n1 dl vispgrädde\n1 dl mjölk\n50 g smör\n1 tsk salt\n1 krm malen vitpeppar\n\n1) Skär blomkålen i mindre bitar, ta gärna med det mesta även av stammen.\n2) Mät upp vispgrädde och mjölk i en kastrull. Låt koka upp under övervakning för när det väl börjar koka så kokar det snabbt över. Ta bort kastrullen från värmen.\n3) Lägg i smöret, salt och vitpeppar och rör om tills smöret smält.\n4) Lägg i blomkålen, sätt tillbaka kastrullen på spisen och fortsätt koka på medelhög värme utan att det kokar över i ca 10 minuter. (Det gör inget att ungefär hälften av blomkålen ligger ovanför vätskenivån. Under tiden det kokar så sjunker blomkålen ihop och mot slutet så ligger nästan allt i vätska.)\nHa gärna locket på glänt om det går utan att det kokar över. Rör gärna om någon gång under tiden så att blomkålen högst upp som ligger ovanför vätskenivån kommer ner i vätskan. Kolla också att det inte bränner fast.\n5) Mixa ihop till ett jämnt och fint mos med mixer. (Mixa lite i taget uppifrån och ner så att det inte skvätter.)',
	'VEGETARISK,TILLBEHÖR',
	null
), (
	'2020-09-24 20:09:38',
	'2021-02-27 07:13:43',
	'Picklad rödlök',
	'',
	'TILLBEHÖR',
	'5f6cfcd1e4f41f050fb70a1b.png'
), (
	'2020-10-10 20:24:35',
	'2020-10-10 20:24:35',
	'Enkel Mangosorbet med topping',
	'500 g frusen mango\n1/2 dl pressad lime\n1/2 dl pressad apelsin\n1 msk råsocker\nKokosflarn\nNågra hallon, blåbär, granatäppelkärnor eller liknande\nMandlar\nMörk eller vit choklad\n\n1) mortla råsockret\n2) blanda sockret med Juicen\n3) hacka mandlarna och rosta i en torr stekpanna\n4) rosta kokosen i en torr stekpanna\n5) hacka chokladen\n6) häll mangon och juicen i en matberedare och mixa\n7) lägg upp mangosorben i skålar och toppa med alla andra saker',
	'Efterrätt',
	null
), (
	'2020-10-10 20:31:04',
	'2021-01-14 16:23:25',
	'Raggmunk i långpanna',
	'3 st ägg\n5,5 dl mjölk\n1 dl vatten\n2 dl vetemjöl\n800 g potatis\n1,2 tsk salt\nsmör\nEv fläsk\n\n1) Sätt ugnen på 225 grader\n2) smörj en liten långpanna med smör, eller stek fläsket i 5 min. Ta ur fläsket o smörj med smöret. \n3) Vispa ihop ägg, 2 dl mjölk, vatten o vetemjöl, vispa slätt o låt stå en stund. \n4) Tillsätt resten av mjölken.\n5) Skala potatisen och riv den grovt. Blanda ner dem i smeten o tillsätt saltet. \n6) Häll smeten i den förvärmda långpannan. Lägg fläsket ovanpå. \n8) Grädda mitt i ugnen ca 25-30 minuter eller tills ytan är knaprig och fått vacker färg.',
	'Varmrätt,Vegetarisk,Potatis',
	null
), (
	'2020-10-25 19:23:23',
	'2020-10-25 19:23:23',
	'Kardemummamousse på grekisk yoghurt',
	'2 äggvitor\n4 msk florsocker\n4 tsk vaniljsocker\n5 krm kardemumma (malen)\n4 dl grekisk yoghurt (10 %)\n\n1 apelsin\n1 dl vatten\n1 dl strösocker\n2 stjärnanis\n\nValnötter\nHonung\n\nSätt ugnen på 175 grader\n1) filea apelsinen. \n2) Koka upp sockerlagen tillsammans med stjärnanisen och låt den svalna\n3) Lägg ner apelsinklyftorna och låt dem marineras i minst en timme.\n\n4) Vispa upp äggvitan vit och fluffig. \n5) Tillsätt sedan florsockret och vispa smeten till ett hårt skum. \n6) Vispa ihop yoghurt, vaniljsocker och kardemumma i en annan skål och vänd sedan ner äggsmeten i yoghurten. \n7)  Portionera moussen i skålar och ställ dem i kylen i cirka en timme.\n\n8) gnid in valnötterna med honung\n9) lägg ut på ett ugnsfast fat och rosta i ugnen i 8 minuter. Rör om efter halva tiden\n10) låt svalna\n\nTa ut moussen ur kylen och garnera med apelsinklyftorna och valnötterna vid servering. Eventuellt kan lite honung ringlas över. ',
	'Efterrätt',
	null
), (
	'2020-12-06 17:47:07',
	'2020-12-06 17:47:07',
	'Bönpastej',
	'1 pkt vita bönor\n2 msk olivolja\n1 msk citron\n1 msk sesamfrön\n2 krm torkad chili\n1 msk frysta hackade örter\n2,5 krm flingsalt\n\n1) Mixa alla ingredienser fram till sesamfrön. \n2) rör i resterande ingredienser ',
	'Vegetarisk',
	null
), (
	'2020-12-23 11:36:37',
	'2020-12-23 11:38:02',
	'Köttbullar',
	'0.75 dl havregryn\n4 tsk potatismjöl\n1.5 dl vispgrädde\n1 tsk salt\n3 krm svartpeppar\n2 msk finhackad gul lök\n1 msk smör\n500 g nötfärs\n\n1) Blanda havregryn, potatismjöl, grädde, salt och peppar i en bunke. Låt svälla ca 10 minuter i rumstemperatur.\n2) Fräs löken i smör i en stekpanna på medelvärme tills den mjuknar.\n3) Tillsätt lök och färs i utdrygningen och blanda väl, men inte för länge – då finns risk att färsen blir seg.\n4) Forma smeten till ca 50 st köttbullar, gärna med oljade händer. Beräkna knappt 1 msk smet till varje bulle.\n\nStek köttbullarna i smör och rapsolja i en stekpanna på medelvärme 7–8 minuter, eller tills köttbullarnas innertemperatur är ca 75°C. Kan också stekas i ugn på 225°C varmluft i ca 6-7 minuter. ',
	'Varmrätt',
	null
), (
	'2020-12-23 11:44:20',
	'2020-12-23 11:44:34',
	'Hemmagjord lammkorv',
	'1350 g lammkött\n250 g lammfett \n3 tsk salt (kan ökas)\n1,5 tsk torkad rosmarin\n2,5 tsk torkad timjan\n2 st vitlöksklyftor, krossade och finhackade\n1,5 dl hackad persilja\n1,7 dl vatten\nca 3 meter svinfjälster',
	'',
	null
), (
	'2020-12-23 11:46:28',
	'2020-12-23 11:46:28',
	'Gravad lax',
	'1,1 kg lax\n1 dl salt\n1,1 dl socker\n70 g dill ink. Stjälkar\n4 tsk vitpeppar, grovstött',
	'',
	null
), (
	'2021-01-05 17:51:31',
	'2021-05-22 07:36:57',
	'Omelett i ugn',
	'1 1/2 msk vetemjöl\n3 dl mjölk\n8 ägg\n1/2 tsk salt\n1 krm peppar\nsmör till formen\n\n1) Sätt ugnen på 200°C.\n2) Vispa mjölet med lite av mjölken till en slät redning i en kastrull. Vispa ner hälften av mjölken i redningen och låt koka upp under omrörning. \n3) Ta av från plattan och vispa ner resten av mjölken.\n4) Vispa sönder äggen i en skål och rör ner i kastrullen.\n5) Tillsätt salt och peppar. \n6) Häll smeten i en smord ugnssäker form (ca 20x30 cm, för 4 port). \nGrädda mitt i ugnen i ca 20 minuter.',
	'VARMRÄTT',
	null
), (
	'2021-01-06 20:09:14',
	'2021-02-06 10:03:07',
	'Gluhwein',
	'75\tcl\trödvin\n5\tst\thela nejlikor\n3\tst\tfrökapslar från stjärnanis\n3\tcm\tkanelstång\n1\tdl\tsocker\n\n1) häll vinet i en kastrull och lägg i alla ingredienser.\n2) värm och låt stå i minst 2 timmar.\n\nVärm upp igen när det ska drickas.',
	'',
	null
), (
	'2021-01-25 19:11:32',
	'2021-10-05 16:46:54',
	'Kokosris med rostade kikärter',
	'2 st röda eller gula lökar\n1 burk kokosmjölk\n1 tsk gurkmeja \n1 tärning grönsaksbuljong \n3 dl ris\n2 pkt kokta gröna linser eller kikärter \n2 tsk garam masala \n2 krm chili\nSalt\nOlja\nSvartpeppar \nYoughurt\nMango chutney \n\n1) sätt ugnen på 225 grader\n2) skala och skiva löken tunt och blanda med 1 msk olja\n3) skölj linserna och torka dem torra med papper\n4) blanda kikärtorna med garam masala, chili, 2 krm salt och 2 tsk olja på en plåt\n5) ställ plåten i ugnen i ca 20 minuter. Rör om efter halva tiden. Lägg på löken efter 5 minuter. \n6) blanda kokosmjölk, 2 dl vatten, gurkmeja, buljong och 1 nypa salt i en kastrull\n7) koka upp och tillsätt riset. Koka på svag värme enligt anvisning på förpackningen\n\nServera med yoghurt blandat med chutney (ca 4+1)',
	'VEGETARISK,VARMRÄTT',
	null
), (
	'2021-02-27 07:12:44',
	'2021-02-27 07:12:44',
	'Harissa',
	'1 tsk tomatpuré \n2 krm koriander\n2 krm kummin\n1 krm anjouchilli\n1 krm chipotle\n1 krm salt\n1/2 klyfta riven vitlök\n1 krm vitvinsvinäger\n1 tsk olivolja',
	'KRYDDBLANDNING',
	null
), (
	'2021-03-15 14:55:08',
	'2021-03-15 14:56:24',
	'Brownietårta med hallonmousse',
	'Browniebotten\n120 gmörk choklad\n100 gsmör\n2 1/2 dl socker\n2 ägg\n1 1/2 msk vaniljsocker\n1 krm salt\n1 1/2 dl vetemjöl\nsmör till formen\nvispad grädde till garnering\nfärska hallon till garnering\n\nHallonmousse\nfrysta, tinade hallon 375 g\n1 1/2 dl gelésocker multi\n3 tsk vaniljsocker\n4 1/2 dl vispgrädde\n\nBrowniebotten: \nSätt ugnen på 175°C.\nBryt chokladen i bitar. Smält choklad och smör i vattenbad. Ta från värmen. Tillsätt sockret och rör tills det är jämnt fördelat. Tillsätt äggen, ett i taget, och rör om. Tillsätt vaniljsocker och salt. Vänd ner mjölet.\n\nSmörj en form med löstagbar kant, ca 22 cm i diameter (för 8 bitar). Klipp ut en rundel av bakplåtspapper och lägg det på bottnen av formen. Häll i smeten. Grädda mitt i ugnen 25–30 minuter. Låt svalna.\n\nHallonmousse: \nMixa hallonen eller värm i Micro. Passera genom en finmaskig sil. Koka upp den släta hallonpurén med gelésocker. Ta från värmen. Rör ner vaniljsockret.\n\nVispa grädden fluffig. Vänd ner grädden i hallongelén/purén när den svalnat (den ska ha börjat stelna något men fortfarande vara lite rinnig).\n\nBred hallonmoussen över browniebottnen (låt formens kant sitta kvar). Låt stå i kylen minst 3 timmar, gärna över natten.\n\nVid servering: Lossa tårtan ur formen, dra ev av bakplåtspapperet och lägg tårtan på ett fat. Garnera med spritsad grädde och färska hallon.',
	'BAKAT',
	null
), (
	'2021-03-15 15:05:07',
	'2021-03-15 15:17:42',
	'Ärtpesto och grillad sparris på svarta sesamkex',
	'Ärtpesto\n2 st jalapenos\n1 tsk olivolja\n100 gram parmesanost\n300 gram frysta gröna ärtor\n2/3 kruka färsk mynta\n2,5 msk olivolja\n172 st citron\n1 krm salt\n1 krm svartpeppar\n\nTopping\n200 gram färsk sparris\n35 gram sötmandel\n1 st citron(er)\n200 gram sesamkex\n\nÄrtpesto:\n1. Värm ugnen till 200 grader.\n2. Dela jalapeñon på mitten. Ringla över lite olivolja och rosta i ugnen i ca 20 min.\n3. Mixa samman riven parmesanost, tinade ärtor, myntablad och rostad jalapeño i en matberedare. Smaka av med citronsaft, salt och peppar.\n\nTopping:\n1. Grilla sparrisen i en grillpanna. Skär sparrisen i mindre bitar. Finhacka mandlarna.\n2. Lägg ärtröran på sesamkex och toppa med sparris, rivet citronskal och hackade mandlar. Lägg upp på fat och servera!',
	'SMÅRÄTT',
	null
), (
	'2021-03-15 15:11:04',
	'2021-03-15 15:16:01',
	'Avokadosnittar med wasabi',
	'Ingredienser\n2 Sarek\n1 Stor (eller 2 små) avokado, mogna\n1 msk Citronjuice\n2 msk Wasabi\nSalt\nValfria grönsaker i strimlor t ex gul paprika, morot, sockerärtor\n\nGör så här\n1) Mosa avokado med en gaffel.\n2) Pressa på citron.\n3) Smaka av med wasabi och salt.\n4) Bred röran på brödskivorna, lägg på grönsaker, rulla ihop och skär i bitar.',
	'SMÅRÄTT',
	null
), (
	'2021-03-15 15:14:44',
	'2021-03-15 15:14:44',
	'Snittar med citronkräm och rökt lax',
	'Ingredienser\n4 Sarek\n100 g Naturell färskost\n1 Citron\nEn nypa socker\nEn näve gräslök\n5 Skivor rökt lax\n\nGör så här\n1) Rör ihop färskosten med både det rivna skalet samt juicen från citronen, och tillsätt en liten nypa socker.\n2) Hacka gräslöken fint. Bred ut oströran på fyra skivor Sarek och strö sedan över gräslöken. Lägg ut laxen i ett jämnt lager ovanpå, och rulla ihop.\n3) Skär varje ihoprullat bröd i 6-8 bitar och servera!',
	'SMÅRÄTT',
	null
), (
	'2021-03-22 17:25:47',
	'2021-05-26 18:02:40',
	'Dillstuvad potatis',
	'1 kg kokt potatis av fast sort\n2 msk vetemjöl\n2 msk smör eller flytande margarin\n4 dl mjölk\n1 dl hackad dill\n1 krm salt\n0,5 krm vitpeppar\n\n1) Skala ev. potatisarna eller putsa och skrubba dem bara om de har fint tunt skal.\n2) Koka potatisarna mjuka\n3) Stuvningen kan du göra under tiden potatisen kokar: smält fett i en panna med höga kanter. Rör ut mjölet och tillsätt under omrörning mjölken och låt koka några minuter under omrörning på svag värme.\n4) Smaka under tiden av såsen med salt och vitpeppar. Håll varm.\n5) Häll av potatisen och låt de svalna något.\n6) Dela potatisarna i grova skivor eller tärningar.\n7) Vänd i potatisarna samt dillen och vänd runt.\nSmaka av med salt och peppar.',
	'TILLBEHÖR',
	null
), (
	'2021-04-15 18:55:34',
	'2021-04-15 18:56:13',
	'Moussaka',
	'Moussaka:\n2 st Aubergine\nSalt\n2 st Gul lök\n2 st klyftor Vitlök\nOlivolja\n500 g Köttfärs\n1 krm Kanel Malen\n0.5 tsk Chiliflakes\n1 msk Oregano - torkad\n2 tsk Balsamvinäger\n1 burk Krossade Tomater\n1 dl Vatten\n3 msk Tomatpuré\n1 tärning Köttbuljong\n1 krm Svartpeppar Malen\n\nOstsås:\n2 msk Mat & Bak Smör\n2 msk Vetemjöl\n3 dl Mjölk\n1 st Äggula\n100 g Riven Ost till såsen\nSalt\n1 krm Svartpeppar Malen\n50 g Riven Ost att gratinera med\n\nTillagning\n\n1. Värm ugnen till 175 grader.\n\n2. Moussaka: Skölj och skär auberginen i ca ½ cm tjocka skivor. Lägg ut skivorna på dubbelvikt hushållspapper och strö över salt. Låt ligga ca 15 min.\n\n3. Skala och finhacka lök och vitlök. Hetta upp olja i en stekpanna och fräs färsen genomstekt. Tillsätt lök, vitlök, kanel, chiliflakes, oregano och fräs ytterligare i ca 2 min.\n\n4. Tillsätt balsamvinäger, krossade tomater, vatten, tomatpuré och köttbuljong. Låt såsen puttra i ca 10 min. Smaka av med salt och peppar.\n\n5. Stek aubergineskivorna i olja i en stekpanna ca 1-2 min/ sida.\n\n6. Ostsås: Smält smöret i en kastrull och vispa ut mjölet. Tillsätt mjölk och låt såsen koka upp under omrörning. Vänd ner äggula och riven ost. Salta och peppra.\n\n7. Moussaka: Ta fram en ugnsform och varva ostsås, aubergineskivor och köttfärssås. Toppa med ostsås och resten av den rivna osten. Gratinera i ugn i ca 30 min.',
	'VARMRÄTT',
	null
), (
	'2021-04-21 18:43:09',
	'2021-05-26 18:29:56',
	'Glöhoppor',
	'Dessa bröd blir lite tjockare och kan inte vikas. Passar att lägga röror på eller som vanligt bröd. \n\n3 dl vetemjöl\n1 dl rågmjöl (fint eller grovt spelar ingen roll)\n2,5 dl yoghurt\n0,5 tsk bakpulver\n1 tsk bikarbonat\n0,5 tsk salt\n1 msk honung\n\n1) Blanda de torra ingredienserna. Tillsätt yoghurt och honung och rör om till en deg. Tillsätt så mycket mjöl att den inte kletar fast i kanten på bunken.\n2) Dela degen i cirka 5 bitar som var och en kavlas ut på mjölat bakbord.\n3) Nagga med gaffel och stek i en torr stekpanna, gärna gjutjärnspanna, på medelstark värme ett par minuter på varje sida. \n\nServeras helst nygräddade, kanske till kvällsfikat, till brunchen eller som härlig matsäck.\n\nAnpassat för husbil med förberedelse genom att blanda torrvarorna i en plastpåse.  4/5 av originalreceptet. \n145 g vetemjöl\n45 rågmjöl\n0,4 tsk bakpulver\n0,8 tsk bikarbonat\n0,4 tsk salt\n2 dl yoghurt\n2,5 tsk honung',
	'BRÖD,BAKAT',
	null
), (
	'2021-04-24 17:49:38',
	'2021-04-24 17:49:38',
	'Marcus Revbensspjäll',
	'1,2 kg tjocka revbensspjäll\n1 liten bit ingefära\n5 hela kryddpeppar\n1 liten stjärnanis\n7 hela kryddnejlikor\n1 tsk gula senapsfrön \n1 msk brunt farinsocker\n2 msk japansk soja\n2 msk honung\n4 krm chipotle\n1 tsk Salt\nSvartpeppar\n\n1) mortla och blanda kryddorna\n2) rör ihop soja, socker och honung\n3) salta och peppra köttet, strö på de torra kryddorna och häll över marinaden\n4) svep in i dubbel folie. Trångt och tätt. \n5) lägg på ett galler ovanpå en ugnsform. Tillaga i 2-3 timmar i 150 grader\n6) ta ut köttet och sätt ugnen på 225 grader. \n7) koka ihop spadet så att den blir mer konserterad och tjockare\n8) pensla köttet med spad och griljera i 5-10 minuter\nLägg köttet i spaden och servera',
	'VARMRÄTT',
	null
), (
	'2021-05-22 07:27:02',
	'2021-05-22 07:28:06',
	'Paprika- och harissayoghurt',
	'100 g grillad paprika (från burk)\n3 dl turkisk yoghurt\n1 - 2 tsk harissa\nsalt\nsvartpeppar\n\n1) Tärna paprikan.\n2) Blanda paprikan med yoghurt och harissa. \n3) Smaksätt med salt och peppar.',
	'SMÅRÄTT,TILLBEHÖR',
	null
), (
	'2021-05-22 07:35:25',
	'2021-05-22 07:36:02',
	'Orientkryddad kycklingfilé',
	'(Kan göras med Tofu)\n2 krm mald kanel\n1 1/2 tsk mald koriander\n1 1/2 tsk mald chili\n1 1/2 tsk mald ingefära\n1 1/2 tsk salt\n1 1/2 tsk grovmald svartpeppar\nca 600 g kycklingfilé\n3 msk olivolja\n\n1) Sätt ugnen på 175˚C.\n2) Blanda kryddorna. Vänd kycklingfiléerna i kryddblandningen. \n3) Bryn dem i olivoljan och lägg dem i en ugnssäker form. Sätt formen mitt i ugnen 20-25 minuter eller tills filéernas innertemperatur är 72˚C.\n4) Låt kycklingen vila ca 5 minuter innan den skivas.\n\nServera gärna till Tabbouleh med matvete och rotfrukter och Paprika och harissayoghurt.',
	'VARMRÄTT',
	null
), (
	'2021-05-20 17:56:10',
	'2021-05-26 17:57:07',
	'Förkokta Revbensspjäll',
	'Receptet fungerar nog bäst på tjocka revbensspjäll\n\n1,5 kg revbensspjäll\n2 msk rödvinsvinäger\n0,5 dl kinesisk soja\n3/4 köttbuljongtärning\nca 5 dl vatten\n50 g ingefära\n1 -2 klyftor vitlök\n10 st svartpepparkorn\n1 tsk salt\n\nFörkokning:\n1. Dela revbensspjällen i bitar.  Skala och skiva ingefäran och vitlöken.\n2. Koka upp vatten, vinäger, soja, buljong, ingefära och vitlök. \n3. Lägg ner köttet. Koka upp och skumma. \n4. Lägg i pepparkorn och salt.\n5. Låt sjuda på svag värme i 1 1/2 timme under lock. \n6. Låt allt svalna och ställ i kylen eller frys in. \n\nGrillning:\n1. Ta upp revbensspjällen från spadet. \n2. Reducera spadet till ca 1/3 genom att koka det.\n3. Smaksätt spadet med t.ex honung, cayennepeppar, liquid smoke och rödvinsvinäger. \n4. Använd spadet som glacé vid grillningen\nDet spad som blir över kan användas som sås och/eller extra glacé vid serveringen',
	'VARMRÄTT',
	null
), (
	'2021-06-13 10:37:02',
	'2022-01-15 08:39:05',
	'Tarjas potatissallad',
	'6-8 p. Det blir ganska mycket dressing. Man kan minska oljan. \n\n1 1/2 kg kokt färskpotatis (gärna varm)\n250 g vårlök\n150 g färsk spenat\n125 g sockerärtor\n400 g fetaost\nDelikatesskapris\nFärsk basilika\nKalamata\nEventuellt andra salladsblad\n\nDressing:\n2 dl olivolja\n2 msk vit vinäger\n2 msk dijonsenap\n2 msk grädde\n1 tsk salt\nSvartpeppar\n\n1) vispa ihop dressingen och låt dra en stund\n2) varva ingredienserna och häll över dressingen',
	'TILLBEHÖR',
	null
), (
	'2021-10-10 20:37:00',
	'2021-10-14 20:37:09',
	'Bröd i stekpanna',
	'4 bröd\n\n2 msk olivolja\n1 dl rågmjöl\n1 1/2 dl vetemjöl\n3/4 tsk bakpulver\n1 1/2 krm salt\n1 dl filmjölk\n\n1) nyp ihop smör, vetemjöl, bakpulver och salt\n2) tillsätt filmjölken\n3) dela i fyra delar och platta ut till ca 3/4 cm tjocklek\n4) stek i torr panna ca 2 min per sida',
	'',
	null
), (
	'2022-04-10 06:28:43',
	'2022-04-10 06:29:30',
	'Ljumma bär med råkräm',
	'',
	'EFTERRÄTT,BJÖRNBÄR',
	null
), (
	'2022-04-16 07:54:35',
	'2022-04-16 08:05:53',
	'Berberekrydda',
	'Ca 2 dl Berberekrydda \n1 tsk spiskumminfrön\n1 msk svartpepparkorn\n1 krossad kanelstång\n0,5 tsk hela nejlika\n1 msk kardemummafrön\n1 msk bockhornsklöverfrön\n0,5 tsk senapsfrön\n1 dl paprikapulver\n0,5 dl chilipulver (minska mängden om du vill ha en mild krydda eller öka för mer hetta)\n2 msk ingefärapulver\n2 msk salt\n1 tsk muskotnöt\nTIPS! Om du inte hittar hela frön av en viss krydda är det helt ok om du ersätter det med pulverkrydda. Jag hade tex inte hela nejlikor och tog då istället nejlikepulver. Kryddor som är i pulverformat ska inte rostas, endast hela frö.\n\nGör såhär:\nLägg alla hela kryddfrön i en helt torr stekpanna (svartpepparkorn, hel nejlika, kummin- kardemumma, bockhornsklöver- och senapsfrön). Rosta under omrörning i ca 2-3 min tills kryddorna rostas och får en härlig doft utan att de bränns vid. Låt kryddorna svalna och mixa dem tills de smulas sönder så mycket som möjligt. Mortla sedan dem tills du får en pulvermix av alla kryddor. Tillsätt övergiva kryddor och förvara i en burk. Håller sig bra i flera månader.',
	'KRYDDBLANDNING',
	null
), (
	'2022-04-16 08:04:04',
	'2022-04-16 15:02:30',
	'Injera - Etiopiska pannkakor',
	'480 g teffmjöl\n1,5 l vatten\nolja\n\n1) Blanda teffmjöl och vatten i en stor skål. Täck skålen med plastfilm och gör några små hål. Låt stå och fermentera i rumstemperatur i fyra dagar. Det kommer att bubbla och jäsa. Jästsvamp kommer att bildas på toppen, men skulle det börja mögla får du börja om från början.\n2) Skumma av jästsvamparna och häll av vätskan.\n3) Koka upp 2,5 dl vatten och vispa ner 1 dl av degen, sjud tills det tjocknat (det går fort). Rör ner blandningen i resten av degen och tillsätt ytterligare lite vatten tills konsistensen blir som pannkakssmet.\n4) Smeten kommer att dofta sötsyrligt och nötigt.\n5) Hetta upp en belagd panna och torka den med lite olja.\n5) Häll i ett tunt lager smet och stek tills bubblor bildas på toppen. Ta sedan av från värmen, lägg på ett lock och låt stå ett par minuter. Upprepa med resten av smeten.\n\nSnabb version:\n14 g torrjäst\n0,8-1 l vatten, ljummet\n220 g teffmjöl\n220 g bovetemjöl\n1 tsk salt\n1,25 dl vatten, hett\n\n1) Blanda jäst med lite av det varma vattnet i en stor skål, tillsätt mjöl och salt.\n2) Tillsätt lite vatten i taget och blanda tills du fått en tjock pannkakssmet.\n3) Täck över skålen med plastfilm och låt den vila i en timme.\n4) Rör runt och blanda sedan i det heta vattnet (96 grader).\n5) Låt stå i 20 minuter och stek sedan injeran enligt ovan.\n',
	'TILLBEHÖR',
	null
), (
	'2022-04-16 08:31:30',
	'2022-04-16 08:49:35',
	'Zigni - Etiopisk/eritreansk gryta',
	'6 portioner\n800 g benfritt lammkött skuret i små tärningar\n3 st lökar (gula eller röda funkar)\n2-3 msk berberekrydda\n5 st vitlöksklyftor\n1 msk riven färsk ingefära\n400 g krossad tomat\n2-3 msk tomatpure\n0,5 dl ghee till stekning (kan ersättas med olja och smör)\n1 tsk korianderpulver\nSalt & peppar\nCa 4-6 dl vatten\n\n1) Hacka lök i små tärningar. \n2) Hetta upp ghee eller olja och smör. Stek löken på medelhög värme tills den blir lätt karamelliserad, ca 25 min. Rör om med jämna mellanrum. \n3) Tillsätt berberekrydda och stek långsamt i ytterligare ca 20 min, viktigt att du steker lök och berbebrekryddan långsamt och länge för godast smak.\n4) Hetta upp ghee eller olja och smör i en stor stekpanna. Stek köttet på hög värme under omrörning tills det får fin färg. Krydda köttet med koriander, salt, peppar och stek lite till.\n5) Tillsätt tomatpure, ingefära och vitlök med lök och berbereblandningen och stek i ca 5 min. Vänd i köttet och stek lite till. \n6) Tillsätt krossad tomat, blanda och börja med att hälla i 4 dl hett vatten. Smaka av med salt och peppar. Låt grytan koka under lock i ca 1,5-2 h, tills köttet faller isär och är mjukt. Späd eventuellt ut med vatten vid behov och smaka av med berbere, salt eller peppar. Grytan ska inte ha för vattnig konsistens, den ska vara tjock och mustig.\n\nServera med Injera',
	'VARMRÄTT',
	null
), (
	'2022-04-16 08:46:27',
	'2022-04-16 08:50:12',
	'Mesir wat - Etiopisk linsgryta',
	'4 portioner:\n2 gula lökar\n4 klyftor vitlök\n5 cm färsk ingefära\nrapsolja till stekning\n4 dl röda linser\n2-3 msk berberekrydda\nvatten\nsalt\n1 msk socker\n\n1) Hacka löken i tärningar och stek under omrörning i olja. \n2) När löken mjuknat och blivit glansig tillsätter du vitlöken som du finhackat och riven ingefära och fräser en stund till. \n3) Vänd i krydda, salt, socker och fräs i 2-3 min till, tillsätt eventuellt mer olja om det behövs. Häll i ca 1 dl vatten och låt löken och kryddorna puttra i 1-2 min. \n4) Vänd i linser och 3 dl vatten. Koka upp och låt sedan puttra under lock i ca 1 timme. \n5) Rör om då och då och späd ut med lite vatten i omgångar under tiden grytan puttrar. Låt inte linserna brännas i botten av kastrullen, såsen är ganska tjock, så rör om med jämna mellanrum. Den kommer att bli härligt krämig i konsistensen, tänk på att inte ha i för mycket vätska. Smaka av och krydda eventuellt med mer kryddor, salt eller socker. När grytan blivit krämig och len i konsistensen är den klar. \n\nServera med ris eller injera och grönsaker.',
	'TILLBEHÖR,VEGETARISK,VARMRÄTT',
	null
), (
	'2022-04-20 19:25:40',
	'2022-04-23 19:25:44',
	'Räkpasta med vitlök o chili',
	'250g pasta Bavette el spaghetti \nCa 2 msk Olivolja\nCa 150g räkor, ok med räkor i lag\n2 stora vitlöksklyftor \n4 små torkade chili, piripiri\nSalt\nEv persilja\n\nSkiva vitlöken tunt, tryck till med kniven på skärbrädan. Lägg i pastan i kokande vatten. \nHäll ca 2msk olivolja i kall stekpanna. Lägg i vitlöken och tryck till skivorna i pannan. Låt gå på mycket svag värme till ca 2 min innan pastan är färdig , höj till hög värme. När det är riktigt varmt: lägg i krossad chili, salt samt väl avrunna räkor. Tillsätt ev persilja. \nHäll av pastan, lägg upp i varma tallrikar. Häll räkor o olja över pastan och blanda. ',
	'PASTA,RÄKOR,VITLÖK,CHILI',
	null
), (
	'2022-05-28 06:09:01',
	'2022-05-28 06:09:01',
	'Smashed Blomkål',
	'6 pers\n2 stora blomkålshuvuden (ca 700 gram utan blad) \n50-70 g smält smör \nRiven parmesan, en rejäl nypa per bukett (~ 2-3 dl)\n1 liten vitlöksklyfta -pressas i smöret\nSalt o peppar \n\nDela blomkålen i stora buketter och koka knappt mjuka i saltat vatten. Låt rinna av och svalna ordentligt, gärna på handduk. \n\nLägg buketterna på 2 plåtar o tryck till med stekspade. \n\nSkeda över smör, krydda. \nLägg på en rejäl nypa ost. Grädda i 200-225, till krispig o fin yta-ca 20 min. \n',
	'BLOMKÅL,KETO,VEGETARISK',
	null
), (
	'2022-06-01 06:46:40',
	'2022-06-06 06:48:28',
	'Pizza',
	'',
	'ITALIENSK',
	'629da27e3f5e38098a1fcfbd.jpeg'
), (
	'2022-07-16 18:06:40',
	'2022-07-16 18:06:40',
	'Apelsinmarmelad ',
	'2 apelsiner\n1 citron\n2,2 dl råsocker \n1 dl vatten \nTvätta frukten o ta allt av det yttersta skalet av citron samt topp o botten av apelsinerna. \nTa bort det vita av skalet på citronen samt ev mellanväggarna. Strimla resten. \nTa bort det vita på botten o toppen av apelsinerna. Strimla sedan apelsinerna tunt. \nKoka allt ca 20 min eller så, tills det har tjocknat lagom. Gör marmeladprovet. ',
	'',
	null
);




/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-31 14:07:28
