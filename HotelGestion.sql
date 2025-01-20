-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 20 jan. 2025 à 16:02
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `HotelGestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `Chambres`
--

CREATE TABLE `Chambres` (
  `Numero_Chambre` int(10) UNSIGNED NOT NULL,
  `id_type_chambres` int(10) UNSIGNED NOT NULL,
  `Numero_Client` int(11) NOT NULL,
  `Nom_chambre` varchar(255) NOT NULL,
  `Caracteristique_chambres` varchar(255) NOT NULL,
  `Situation_chambres` varchar(255) NOT NULL,
  `Nombre_chambre` int(10) UNSIGNED NOT NULL,
  `Prix_chambres` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Chambres`
--

INSERT INTO `Chambres` (`Numero_Chambre`, `id_type_chambres`, `Numero_Client`, `Nom_chambre`, `Caracteristique_chambres`, `Situation_chambres`, `Nombre_chambre`, `Prix_chambres`) VALUES
(1, 2, 1, 'CHAM1', 'CLIMATISER', 'SIMPLE', 1, 10000);

-- --------------------------------------------------------

--
-- Structure de la table `Chambres_type`
--

CREATE TABLE `Chambres_type` (
  `id_type_chambres` int(10) UNSIGNED NOT NULL,
  `chambres_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Chambres_type`
--

INSERT INTO `Chambres_type` (`id_type_chambres`, `chambres_type`) VALUES
(1, 'SINGEL'),
(2, 'DOUBLE'),
(3, 'TRIPLE');

-- --------------------------------------------------------

--
-- Structure de la table `Clients`
--

CREATE TABLE `Clients` (
  `Numero_Client` int(11) NOT NULL,
  `Nom_client` varchar(255) NOT NULL,
  `Prenoms_client` varchar(255) NOT NULL,
  `sexe_client` varchar(10) NOT NULL,
  `Carte_de_fideliter` varchar(255) NOT NULL,
  `Pays_client` varchar(255) NOT NULL,
  `Tel_client` varchar(20) NOT NULL,
  `Photo` blob NOT NULL,
  `Id_type_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Clients`
--

INSERT INTO `Clients` (`Numero_Client`, `Nom_client`, `Prenoms_client`, `sexe_client`, `Carte_de_fideliter`, `Pays_client`, `Tel_client`, `Photo`, `Id_type_client`) VALUES
(1, 'AKPO', 'Kokou Akisch', 'M', 'OUI', 'TOGO', '99269715', 0xffd8ffe000104a46494600010200000100010000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108009600c803012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f41786cf00878dbf1acc8618efb556b80a3cab7f95149c8cf73fe7deaa6a9f6cb348a349a1b9129dab88feefb9e6ad693f68b55fb325bab003258922bc9aea525cb15a9d74f956ecd0bbb6df0b4891877c74ce2b222d39aded5d0c7236f3b8056c015aaba879bf2fd9dd79e48c1a8ee2704fcacea00fe3522b9e10b41b9dcb96afdd3125482691e2da6190705861bf4cd45ae471c3a6a912c4f0c2373338dac3e9567ecc6e662c5636676196dc3a52eafa6ab4332b7310503afca6ba29ddc0cb4bec71b6b7c64bef3214323b709b14938fa5747670b45292f996ea5190bbb951efe95452cfec8c65b5558b671b80c501ee5019d2679257e873594f561282dcdb90a42a165725c0c9f9715467dd27ee60562ac32491d285b28dcabde4f27dab1c739dbf4e6acc2209ddd56e98cb1f1d2b17157d8c396faa0d374e48612ed16e71c9ddd8d4b71756f1c880421493d78e0d40b79750995e45668d4739359c75096f5cc4cb887b37a7e358cab25648ca4db36716f7138965c381c119068c460e6da6548f77ccaa326aad9ac11c7e596d9c603039ad48e1b48e2dd110d2e3926ba209c95d9314afa9af632f9768672a42a0c01d326aec71c334430e8a7e993fad733a9f8874ed2208206779b680efe4aeee4e7bf4ce41e3af4e2b297c79613ddc69f66ba689c64796e80818cf3f37f9c1af5a94aaa7b1765b1d8dce9d1da37da6d6576c1cc906ee1bdc5509354b6d5e68edad1d9307f7a8c4e47e14cb3f14e97390221242e4e1525eadc03907a1ea29b7528693ed8088de2e4e06091f875a752a72be5ee5c757a972e74f89a29a48d88b8846e438fe94dd3f52905a33ce151a41fc471f9553bcd4ccf686e27b978d8291b0a6095f6c560e89ae45ac5ecd098898e103cbdd8fd47ad672a918caf145c20da6a47631df2c844b215919788e33d07b9a9b6b4e8cf2e4f70aac00ac6b7876b3471851df00f4a649339948451205e1b69ce0d4ac63b6aae6728762cc91e5d409420cf45357220b1c2ee24c15ebc9cff85646e520e42a11d41ab56f7a12231991195ba82335953c4454f5426ac8ba14dcc2c610c1c9eac073f8d14b69ab59c12f9699280649c0e0d15d6a5464aee5f89376507bab3b8c066e718e69a45b2f293953ecd8a8cd9e47cf0311f4a89b4e4393e5951ec715e7ba723d2e6893f9d87212656047af34d4b9bc58da3631ca8571f3ad66cda12c8e1e3b99e170782af50cfa6ebc24060d65c2af4531035bc22adef366525d8d7b4952ca2f2d6ca23904649ee7f3ac4bd56b6d3d956425bef10c7f9553367e258f5179a4ba492165c6513047e14d4b6bd88797366e232d96dd90fd738e98c55d48526af7d5131534edd0b70992e5161524061965c66b7ed62b5b2b751e493c61b77cd54ad3cb8374be4804afdcce0d5f08d38127311fee1208ac52bc6fa1a495dd9942e625fb4314ba88646e00aedc7e3542349e284c8cf1b6e258ed61902b4e5b748a5dd724b2390bf2ae7f9562ea0d7915ebc71e9d722c917878b692c7d307b51ec399743294229348d1b62af6d33360828482c735523124a40f2b6201920fcb914dd2ee3cdb732343242dfeaca48bb49fc2ba48b4289ada398cafbc8e77366b9e546cedd84e8369599e75e2ed78e8f02c56f6efe7cdd393851df047393dab918daf6ede37b366bc91cef91a65dac84e70a79e79ddc74c01d715d0eafa6ff6eeb9f699cf97a6db336d0c30f2e0e063d14e33c8cfd720d5d82286dc896d214233d539c7e5f5af468254a165b8a341b66347a75f5b287b9b666cf7488124f240f97a8c763e9d2aa24564975e6bc7739427c9665619c0e092a7e6c7438ce7f335e8b617d18cb49b93039dddbfcf35ac2c34ed45144d1c727ae4671d3b77f7ade356e5ca8248f3f8e17bb8e19a1903b7ca46d07017a907e63903f4c0ee063a2b0f11bdbdb059e3f3b24279a83956e98e9dcff3eb53f887400b601b4b6f2678c8f9902e719e739ebf4eff00cf9058a7d3963825b811ceaa1cb7cb90dd0f519fef7e87bd1251a9a48c9c1c75477e6ea2d46c24031248a0aac9820fd6abe95610e936676c7212fcb3aae48ff3ed5068477a18a26072037ca776e27927db2726bacb5b092545f30884e38dbce6b8250d5a8a3694ac95c86c0af9123c52292e30093d2a8cbe7413828a1875caf34f6b636978d711c327963fd63027afd2b6a092caf550c4132473f3e33f4eb53ec9c9249d887aaba39eb8916e5562671131e59dc803351f9c2d98c6ceae00ea9ce7f1abba8c43ed0fbd50a03b578cd5286ce34908c7cac73c81584a9a4edd48dc7467700e8ad106ef9cd156a2b3da9b18e509e3a5159b725a26271b1d10b88f18c00293742dd48c7bd55d87dbf3149e5b7a0fcebbbeaf4cebf6d32c95873c043f514c68616fe14cd43b1bd0d2ac5239f9549a161e3d1b1bacfad80dac5bf8c81ec69925929398ddbf1356d2c49dbbe4209ecb5762b28d662ca37295c6198fff00aaad61dff3321d75fca8c48f4e8a7eb364e32005c9fcb155aedd74f84bb69fa8dd64e00b78831fcab72cd152ee58c83b95880c060100771ff02fd3357b8ad7952df532e66fc8e6a1488cf0ee8b699577ac533ed7c719c2900f191f8915a0b6d09c96800ec396c93f424d49a8da7daa264dc541e3835c9cfa3df69a0cb6329e6559241e6142fb7d48e0f7ce412dd09e9834ec2d7b9d05eaba23c914b22beddbc73fa571771e259af3ed56dbede7448f065588e1b248c2b742010c0e3382083ce6aeda6b6d7525b5b5e3189db29ba7023f348240236e577f00ed18c86cae36951c15bd9dd68fadeada54b70f3a2b2cf04929f9e40f9c93ebc8c13dce4f7ab76711415a5634e6b29af2d8cd6d731a5c2b6e1b8f0deaa7d073fcab12dad3c4116a0b2fd99151c80e226ceffc3bff003edc569832981955a4b52065a6f2c3aa631d4e08ea7032066ba3d2eeefe08c79f6f6b3e7832dbccb803d7dbe9cd62db4ac7a2a117a98373afc1a74aa9a91fb3487f848049fcbf0ad6b3d4ecae9435a6a10b39c10bbc679e338eb516a565a5eb77689791c914f03ee8a44c6e1903d41079f506b56cf4656288cef2464ed8fcf2bb8803a0000edcd4ab5b4dc26dadf621bfd5574f86233b179656d914401259bd80e78ff000ea4815cf4da46a9739b9b8b39e29247de8046774431d011cf3ebb874c631815de0b6d25655964b7124aa7219d412a718e33d3a7418ab86f6076dab2301db8c7f2a6a738f47f71cd27193dd19fe0b111bd0f31f2428c0121c1fa57a0a3a34d90cac3b83cd716d244c0e64191ebde91589ff56ebf962aa153956abf32270e677b9d9be9d652ef0f0a33b1ee31fcab8c9a0b18fc4b2476482258800c3764337d3fcf5a70bc9a37e2675e3a873556dfecf6f74f708184acdbd9db2c49fd689c949688518599d4ae8dbedda59140e32320106a15d0e57b7333410a1ea39c122a9bebcf3aaa4a4151fdde29b75a828b676266d857a47f31fc850e74ad6684a949ea5a934793cbcb444afaa38228aced22e5edec645fb53c4f2b6e01c72a3d0d150e14a5af28dc1a7b97802c70aa49f41491e2595a20ebe62f25370c8fa8fc0fe55b85d55764bb5d48e78e0fe1556486370639904b0677213d633ec7a823d7fc8d9244dd902e991cc8566f994f6071522e96902016b24b085c6003b80c7518f7fc6992dd7d898348ed223385e465973fcff0e7eb564dc2f67fcb9a7a12568e59821332aee8c02fb0f4febe9d40eb5309d5a338620f6229934f95dc1be75ced6642467dfb8fc08ac283578afaf25b68e254100db27967284f60a40c63ae47d3d6819a4b725a7693237b104e3d718ce2ae0b9c2e49aa71c11310cc0eecf041c54cd0ab48b18276e324fbf6a405cde1d0376aa9791ab40d8c60900fe7570db11181bf071838154ae2dee1233b406207014e39ebce7f1a4c6635ce8915cc4d14d024b1370c8c320fe15e79e3cd2aef45ff0089bfdaa02b0c5e5c46e1199d94903ca62a32c33860c4e41ce73bb23d6ed2432c658a9040e7238ae13e2fcccbe12546851879cace848cecce723f967dfe9550dc4f4d4f3487c4ff006528d2e9fa8425c6f1e5b641049c153c020e3ae315a3fdb336ad2b0d36c1a39cfcd7371723cb08b8eae5482410a7be7e5c00c78ae62d659ad58c16f2bed971244d14ad119d01fbac571f30ed9cf53df15a916aef7d6f0892fee1d2d87faa998b18813c8209e064e78f7ad9518dee0ebced63d33c27036ab637fa92b2158ef5a3814ae76c6113683ea79cfd4fb62b7f4bb6965d4a253100c37befec4018fc3ef567f859e4d3bc1163bb1234ced3461081bfcc7263519c0c9dc0727af7aeb74bb18eca694b006ea600cb20e73824051e8a39c0f727a924e12493d0136d6a54b8b04dd89222a7d6a949a6a91857fceba7bd646b27208249e3eb9ac7da7d2a5cb9594a3cc8c936170bf758545b6488fcc88c7d76e0fe95b9b5b1c546cb2f78837e142a80e998fe728e1a3907d083fce8dd6e7ab63fde423f956934209e6dd81f614c302f431b8fc3355ce89e46511103fea5c13e81a9ad05c2f24103e9571ac1189213f352288ac6edcffa3b39ed856cfe94d4ee271b15526917e5f338efc515725b1d453fd6c05bdda3a29b715ba0b4bb9b0f7b048e5048bcb6c3ec71d2ab1be58f87917a61813dfd3fafe350436b650ba308b2c99da77138cfd4f3f8d6a413ac4a12340aa0e400a0007f0ac9c8b512a4d9b985a29eda665718cf90cc0fa1e05538a1bab64685893121c2875076e3b6181e3e95d14770c07dddd9ef505d488ea434383ea09a5ed07c863bc7e72b248cbb0f0555001f9819a8d2de357db022aaa7cbb634000ee7007d6a4bc94410b3292a4f039ef4cb779a1b7595254da0642bf07154b5d592f4069991ca15650a792454897987439e0fad59b4bdf3612255cf3d08cd4a6dad6e5f2d181f4e3f9531134779c0dcc39f7a78be888058fcbd1a9b359236d2023718c63f2fad54364b2dd6d8d5547420e7afd3e9401a16e88967e56e05064120e78cd7857c44d7e1d5bc4eda523ab25b21553b79dffc4bc804640e873d01cf35ea9e2dd44f85bc2f7f7a7ca0eb11f2c1e03b761ebd70315f365d3bdecafaa59bfce5cbc89d19093fcab6a31ea4cd8cb6962899ac6e8916e5ff00752f789fd7e95af15b9bdba820e22d45a6485665c7258800903aae3af5e3359ed0c3aaa972447727efa0ee7d47d7d2b7fe17dacd7de34863999fc9b1477c91d382b83f8337e55b3764458f78d36cd5afa2852309158c2a63001555dc0803238e013c63b83dab4cc7243b9940e06c007f0e3b566e8d75e5698f7850acd78fe7e180c80c06d538ee170bf87a56b79cc582c6ac40f453cd7136ae6c932bcb73f64b554972cc4f41cfd6991ea3031f4f63572560c007383dc30aad259db30c941f503158cad7358dec4be723e0ae0fd2a1b9beb6b4c79f2a2123a77aad25b4302b3a4aeb819e39ae4f52b4975194cad3142385c7f5ace55f0f45a7889597e3f704bda38feed5d9d41f1069cbff002d58ff00c04d33fe125d341e646ffbe0d797de5f1d3aecdb4d3c6587746ce3ebe9572daf52651b655607b835f45472ba15a9aa94e4da7fd763c1ab9bd5a53709c6cd1da6bde24b76d06f974eb8297a607109319e1f071dbd715e29e19b8f1469faf5a99af35282d9a4df2b2969411d4838c8c9e99f7cd77fb2627e57ddf85588a3e86450df4adffb1e0a0d467b982cf25ed17353dbee360f8d2e62995629642a3b491e771fc451552240d819718f7a2b18e56e9c5414af6ee75cb368d5939b8dafd8ea704919efdb383fce9eb1b292c0e7d326a21384279e0f438a517a83b807d8d786ec7ae5b8e59500e463b6e19fe957a22ce7e645c91592ad24a32a0e01eb576dde4055001b8f233c0a8ba2ecccbbe64babcf2557f748482465b711d7fc05416f791ea567b92deee10cc5025c40f13e7838dac012391ce31f91a92281a3dcf8c98b2a769e411d7f0a4865f318b336493dfd2ba15ac62f725b6b6ba8c3068ce474cf1915247713c472d0483dc2e7f954f05c9538dc001d8d5d8a51bf763e5ef480a51ea0257d808c838233ce6acadcc6920dce33df8cf15652dedda669258c32b10c87d3a7f85719f117c490f85f4b904276dedc178ed410186ef539e30323ae7a8c8a126d8f43cebe277895b5dd7a4d32da52d1d8c857c96e371c0248c8078e41073d323ad702968eb209eddcc12a8fbc7853f5acf7ba9fedcf73382d248c5a4046324ff2fc2ba9b09edd625757cc0e40df8c8ce3ee38fe16f423afd6bae2925632dd95e0f26ee430cd018af7077c4081bbfda5f6fa1e315ddfc3ed3a083c3faddcdc46cd24d732db4afc890c4111bae7ae19bdce6b86bf369049b652c2007314a871244c7fba7d32338aeafc0be28b05d0a6d045c2a5dc934af0b3c7c312a39c0f5209c67b7b8a9a9b0d6e7b7ddcf6ceff0067f202b29ce476ff003e953c1b0f1b3f315e6a7c736d65722d6459ae6eced261b70098f3d59d890bd73c75e9c739ae874cf1434f731c2f0052c57788a6127960e492d90bc741c64f3d0726b8faea6ea2dad0e9351f3049181b44646431180bed55097750136fb9c71535fdcc212195e78fcb39c61860d624faf58408c7ed4b951c2ab64fd38acd61aad59de09bf4453af4e9c7df697a935f5d6e411275fe23eb5e6fe28f10cc666b2b690c68a70cca704fe35b71ebb349772b342d2424920a8e4561dc68f69a85f4f75319e25739da9dbf4ae8caf21c4471f2ad8ca778a5eebd2df76f7f97e87979866d42545428cf56fcff0033903f3714e8d5d1c18dc83eaa71576eaceda1942db5c99d08fbc53660fd29d15b807a62beda293d8f9e9d44b42cd96a7a8c0c0070e3d1c575ba1df3ea57896ad6c031192ca7a0f5ae6a2b72e55514b31e800c9af4bf0c689fd9767be51fe932e0bffb23b0af0789738a795e11b8bfde4b48afd7d17e675e51829632bed682dffc8d5b4d3ad205e54bb7ab0cd15702e78a2bf19af9a636bcdcea55937eacfb9861684172c6292320dc47bca245e5943cac879ffebd4be6c8079823f2a36f47eff4aadb8312f3edc29e022e3f1cd46ad2c92968a27da3a070483f9d7e8ca2a3d2e70c9b7d49d1ee4b1319ddea0123ff00ac2a78ddf7e59d5588e781cd405c32140232c0ff000f63efd3f99a74817f75e5b1f314124f1b4fb60f7a5caa4f4d3f10e6696ba8eb99d6cd1aeb26252caa518e56466206724f0492063bf14c3716f798fdd2c72f62c369cfb7ad4a97b21553b63248e0373fcfa547124720f29fcb63c11221dcb8e79e3a9ffeb56aa5cba49ea66e3cdac4d182d13ececc1999cf2a58ff005a824b7b881e3915d9b73601233cf3e9f434f8a04b9b7cda5d36c04a02afbc120907247d3d6a68e39227646ced0d92eadc67d7155726c4e676d3ade57bb044718dc5c70300649ce7a63bfd6be72f1bebb1f89fc417572c13c98ff776ea579da3b70403ce4fde3d71cf15eade2db8baf13da3e976170ab658cbccb1993cd23a04ce17ae393f87435ce7fc2bbb36b5ff004bbeba9665070632a8a7d3821abaa952695d98cea2d91e4d7311b78d7fe592ff00cf3922dc38fa96c556b0fb6dc5fa41a746c6e653b42c431bc7b8e98c75cf1eb5e81a8f806d188dba85d8cb73e6b2b7f251cd3bc3ba441e1b17373e6099dc08fcc1c60027701f5c0fcaaaaa708b905171a9350b956cbe1d5f5e79726ad7d0c432a4c36f1296c1fbc3760053db2370fad74165f0f7c3f640b34571732021d5e49d95971e9b36ff008d6ae97f6ed5479912ed8324095c7071d703a9c7e5d79aeb2c34a8a319973313d4b807f4af22ae2a77b5cf5a34a8c56d738fbab00b098ecac611ceedcc8325ba6e24f24e31c9e6b534dd32cb4ab18fecf34b35d4bf3cef2285c371c7d3b639faf7aec22d3ad5502c70228031c8cd44da35a91b7690c7ba93582accd6f1ec7237d06a179741a2993ca006d12b0f93d867d71da9b0f869e721e7bc07b1f2d3fa9ff0aea26d1a48c17b770f81f71b827d79a86cd1963656465656390c3915ece1f39c4fbb4616492dd6e7898aca30ce6eabbbbbd9b7a156d741b18146e89a523a798e71f90c5624be289f4af10369d7d61676b6ec311cd1264e0f4624f6ededf4e6bb1515ce78d3455d4b466b955fdf5afce0faaff10febf80addd47884e95693b4b4bdf6f34632a4a8ae7a5149af2dfc8b4fa2d85f3f993d9c3213d5f6804fe22a683c2da346c1859027fda763fd6b97d03c58d61642daf62926d8008dd48ce3d0e6afbf8dae1d4f93651a1ec5dcb7f857ca7fabfc430a92a341cb957553b26beffd0e9966b95b82a952d77d2d77f91d345a75a43711c36d6b146a3e77daa074e95aeab8ac5f0cde4da9594b7339533193690a30063a0ad516c448659762a8e49c8ff0feb5f219852ad47113a3887efc5d9f5d4f62856a73a31a94fe16ae8b4ab4571fe20f153386b3d2db83f2bcdfd17fc68aecc370fe26bd3e79351bf47b99cabc532c348b19cca14337ca0e0e48fd4d57fed0b188b2615587de2a1b9fcab986bd0bcc7bc12724e7193ebd69235bcba24c16d24993d510b7f2afd9a390e1e3ad5969f77f99f0f2e20c44aca8c35fbff2b1bc75e8e224c6aec4138e768fe7fd2a9b78827121748c063d724b0ffeb5322d075790e59160503ef3b85fe5cd5987c2a2461e6deef3dd625cff00e3c7fc29fb2caa82be8fef7f9684aa99c621ff002fdcbf3d4cf9f5fbf785e2fb6ec46ce422a8fd40cd723aacd1c9114b8bb99a3ce76b39233eb826bd28785ac922cf95e6b0ed2cd827f2e2aab68168e4916eb1b0fe189554fd3383594b36c2af768535f725f91d54b2bc62b4abd57f7b7f99e6fe0ed54e9fabcb6f6b2dc41e70dcb2ac84676f3b71fc43927f3e31d3d186b9ab6a7a62dadea08918ed25400d2a8241c907853d71c1f5cf399e3f0d684a4349611b9dc0979817743d883c91f518c553d42d974d98402e15950332b1619f2c9241c7e279f635e72a90ad3d63a9e94a12a71f75e8695b855458d570a0e00e94f9772a3e0f0c0104f3cd72d3f8ba0b75510466697919ce07e1fe7bd605ef8ab5b93728b95894823091afbf73cfebda9b252d0eab500644c10006620eee6a943fd9a8c8977e4eddc24d8cf8ebc74cfae07a5798ea2f777f2799713cb33a8201918b1c6738e6b43c13a7eff13db1954ed8c971c770370fe559557fbb95fb1a525efa68f73825f2820d8b823802afa5d29ca246e0e3be2b22d994bfa11deb6ac8a92bb801839e9d4d7cbbdcf7509653ddc85c5d471c254fca01c93cff002fcbad68aed8d32a323b9ce73552ee23e733201f32fa55682ee4858a4c0a91d33d0d2e7d752ec6a19803820fe1cd53be7451131600b36d5f738ce3f4352f9b1c8010573e9deb97f18dfbc3141670a912e7cf2d9e42f2063ea73f97bd6f876fda2b19d649c1dc75cebd71e54ef61a64f70b0121dd884538ebb7a93cfb5619f176a9791c9108ade18dc11f74938fa938fd2a4d2efeeb4cd3824726e524908ca0af355e38230b33b46be64872a026157b9c60f1f91af5b9edb1c1ca620876395c74ab71438e7152b419998f6ffeb54aa98ed5f7f847cf4a337d523f39c75a9d79d35d1b3aaf04ccaaf756c4804e241efd8ff21f9d686b9ae5c59335bad802187124dca9fc075fceb93d3ee24b1bd8ee62c9743f77fbc3b8aebf52d674f9ace30733ee01bca518e7b64f6e7f1afccf88b22ad1cf2389a743dac2a74d6c9ab277b5979eba3d4fabca333a53c07b2a93e570d3e5d2df977316d25bebe2ce2cb4e8a35604cc610368f4248a2b46d619b506496e5765ba91e4c0ab853f87f5e68aeaab85c2527c9888c54bb4546cbcaf24db7f725b23ba853ad523cf4ef67fccddff000d8ad1a585a9511584119ecccbbc8fc4d587b8b96c8f3804f5518c0a648208311c667c303ce0b7ebdbf3a8e356c0612839e0233f1fa66b796239ece4feff00f826f1a1c9eec57ddff009cc6fbbce54123019e589c0f5c1a96267dc1095569061538527f1cf34922869e0716d1a30cab3ee3b803fcfa568c1632cfb4469e5a8392c40248fa9e6b2a951ec690a7d4ccb7b1c5c83241e632018c3636ff3a7dd39572044a00058aaa8c37d49a975255b5918acfb881f3ed23e5ff22abdbc4f248cc6e4b8c7193d7db8eb5ce9b85aeedf79bbf7aef72295a258e4611b2b14e5b6f38f41c735ce78aed2593c3cccbbd7cb4cbfcfb891f8753ce3bf19aeca5580ae22958850149438e2a85e595aec9a3570a6442aec390c0f5e7f3ae9a5269eb730a8938f438bd07445d4ed608f4ed322d402e3ed37b7523c411ca86d8aaac090bdcf2493d862adeb9e1092cecf2da6471edff96f693bb4433fde5705bb75c81c8a8bc2be2687c2da85d6897e49b4136e8e65e4ae401d3d318e0739cf5af4cb4d77499a3591751b4da4646f942b0fc09c83f9577339558f11ff00847c301f2ee079ae97c23e1e73ae5a18d18857064d9c623e8d93e98c8f7ce3bd77daf5a5a39874cd3ec2dfedd70772ed8d54851924eee31f748fc0d66e8f7f7de1f82deea5899f4cba66dc1546430247b60fcbd0f079fc137a0d2b327d5f48363a93c567928df347193c918c9c7ae3078ebc77eb55e19e7b6daf2c1204fef329c039abd2df47796d757123131348504818a86c9c2fb8ea3a9cfe9566d0b45a6476b326d78a42c40e8e59b76475ee7f9578b5f0f0726e27a74eac925721beb959b4bf396f16d563657693009c03f77f1e98efd3d8e75e789f4e1e7c90dbcae0905dd1723773c1c9fe80636f6c5617c43d26fe7b63ad47fbb4b5f91909da187f7c73f7b276fa903d0571da3eaef7cdf63f39a1bb73b1241fc4d8e8dea3903f1aedc3e114e8f24e5a76b25f7f5fc4e5ad8a70a978a3d96ca35b98629a15f384bb9a35fba5942e72376085270b923ab0ec466e6a5a72de097ce51e4fcb12a807e43f316c96eab92002077c76cd79bd9db472a477513bc13a483fd53e40652338eb8f5f6ae874cb4b88e4936dcdd4f24a30cacf9dc320e4e077c73ebdeb6860a14e2d47a994b14e6d73150f86aeda0221cb05720338da319e87af38ff00f5546da3ddc78134122a0e3722eefe55d946cd0a5c5b5cb244ae4311b49c6403907bd305cc11ba8476744183b94f3f41ff00d6af3d49c7496f73bb979b58ec79bc90bc7348bb4fc879ebc511f2477af481773b168c08ca1e9bd40c0fa7afe355a15db2f9b14ca8a3920a121bdf68e9f5afa6a3c431a54947934492dffe01f2f5f86dd6ad2a8ea6adb7f0ff00c138d4da0e723039e0f4abf6b66f728b2905616fbae3a31ff0ae8d24b5bd91fed08ce4f1e6ec3c7a8e9440b0dac4b6bb047146a4c6833909ea3b9aceb67f3ab1e484795ff5b1bd0e1ea7465cf39732f4fcc37cd0c91452e4a819dd1e0e7d319e28ab41a1c2ba8ce3853d8fe668af164a0dddc4f6e3cd6d2463cd234c88724678233fe1504d6eb6f347322afc8090bd07345155c915aa466e72968d924172f712b057dbb08dc0ae7b76e6a3b3b9b8bdb8fde4cc63282455048c7a0c67145156926aec96ecec8b7180d6ccf92c048465c0247f9f4a248b7389158efdb84c8000fc051454c35761c9db522763087054336dce0310a48e7a741f5c1a2548d461d7fd6ae7e5ea38cf5a28ab7157b91cced63cf7c6d1c2751b36822018db8662c7ef216da01c7704fea7d056669f31042724601e4e7ae68a2ba293bc119d4569b48eb34dd56e6daf96ee395bed4093e63618e48c13cf5eb5765926fb2180cd27945b798f71da5bd71eb4514c48e9f4247b8d32dacde4c43206908c672439c020f60549e3dba75a9a7bc9afb4e9a58d8a489bd01639e412b9f7e99a28ae4aba1d54ddf7286a805c58dc69d72c2409b10c9e5827749bb6903a0c05ea30735e3100682e5278e79fcc460ea0b64060720e0f5a28ad708dbe6b996252d3faec7acda003cfb960ac3cb3244acb9c370006f51cff00fac715a3a36ba6f7584b4df72926ddc4bb2bab8ee08c0c1f71edc1a28ae99ee614f637f57b46fed15657c2ac232adc82c4900e3f0acfbcf316789c1280fc85518e3de8a2bc6a9272a934fa1ead249422d7508a13e72c1e6b2f059580c9fc7f3a8a1123c12f96cb1ca3218ede0e38cfe545156b6b932dec470e3f872a5d40761c127fbd560ce6dd230e892c9b73bdbd05145610f793b9d13496dd87deaf9d60d2b632b86dc179c1fc7ad14515d347489c553567ffd9, 5);

-- --------------------------------------------------------

--
-- Structure de la table `Clients_type`
--

CREATE TABLE `Clients_type` (
  `Id_type_client` int(11) NOT NULL,
  `Type_client` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Clients_type`
--

INSERT INTO `Clients_type` (`Id_type_client`, `Type_client`) VALUES
(1, 'PRIVER'),
(2, 'AFFAIRES'),
(3, 'GROUPES'),
(4, 'TOPS'),
(5, 'VIP');

-- --------------------------------------------------------

--
-- Structure de la table `Date`
--

CREATE TABLE `Date` (
  `id_date` int(10) UNSIGNED NOT NULL,
  `Date_debut` date NOT NULL,
  `Date_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Date`
--

INSERT INTO `Date` (`id_date`, `Date_debut`, `Date_fin`) VALUES
(1, '2024-02-04', '2024-02-05');

-- --------------------------------------------------------

--
-- Structure de la table `Factures`
--

CREATE TABLE `Factures` (
  `Id_factures` int(10) UNSIGNED NOT NULL,
  `Cout_facture` float UNSIGNED NOT NULL,
  `Confirmation` varchar(30) NOT NULL,
  `Date_depart` date NOT NULL,
  `Numero_Client` int(11) NOT NULL,
  `Numero_chambre` int(10) UNSIGNED NOT NULL,
  `id_paiement` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Factures`
--

INSERT INTO `Factures` (`Id_factures`, `Cout_facture`, `Confirmation`, `Date_depart`, `Numero_Client`, `Numero_chambre`, `id_paiement`) VALUES
(1, 20400, 'OUI', '2024-02-07', 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `Lavage`
--

CREATE TABLE `Lavage` (
  `Id_lavage` int(11) UNSIGNED NOT NULL,
  `Type_leinge` varchar(255) NOT NULL,
  `Nbr_leinge` int(11) UNSIGNED NOT NULL,
  `Prix_lavage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Lavage`
--

INSERT INTO `Lavage` (`Id_lavage`, `Type_leinge`, `Nbr_leinge`, `Prix_lavage`) VALUES
(1, 'CALCIF', 2, 500);

-- --------------------------------------------------------

--
-- Structure de la table `LOISIRS`
--

CREATE TABLE `LOISIRS` (
  `Id_loisir` int(11) UNSIGNED NOT NULL,
  `Numero_Client` int(11) NOT NULL,
  `Id_lavage` int(11) UNSIGNED NOT NULL,
  `Type_loisir` varchar(255) NOT NULL,
  `Prix_loisir` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `LOISIRS`
--

INSERT INTO `LOISIRS` (`Id_loisir`, `Numero_Client`, `Id_lavage`, `Type_loisir`, `Prix_loisir`) VALUES
(1, 1, 1, 'PISCINE', 1200);

-- --------------------------------------------------------

--
-- Structure de la table `Mode_paiement`
--

CREATE TABLE `Mode_paiement` (
  `id_paiement` int(10) UNSIGNED NOT NULL,
  `type_paiement` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Mode_paiement`
--

INSERT INTO `Mode_paiement` (`id_paiement`, `type_paiement`) VALUES
(1, 'ESPECES'),
(2, 'CARTE DE CREDIT'),
(3, 'CHEQUE');

-- --------------------------------------------------------

--
-- Structure de la table `Personnel`
--

CREATE TABLE `Personnel` (
  `Id_personnel` int(10) UNSIGNED NOT NULL,
  `Type_personnel` text NOT NULL,
  `Nom_personnel` varchar(30) NOT NULL,
  `Mdp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Personnel`
--

INSERT INTO `Personnel` (`Id_personnel`, `Type_personnel`, `Nom_personnel`, `Mdp`) VALUES
(1, 'Admin', 'AKPO', 'Akisch'),
(2, 'Personnel', 'pipi', 'gg'),
(3, 'Admin', 'akisch', 'akisch');

-- --------------------------------------------------------

--
-- Structure de la table `Reservations`
--

CREATE TABLE `Reservations` (
  `Id_reservation` int(10) UNSIGNED NOT NULL,
  `Numero_Client` int(11) NOT NULL,
  `Numero_chambre` int(11) UNSIGNED NOT NULL,
  `id_date` int(10) UNSIGNED NOT NULL,
  `Nombre_nuit` int(10) UNSIGNED NOT NULL,
  `Etat_reservation` varchar(30) NOT NULL,
  `Cout_reservation` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Reservations`
--

INSERT INTO `Reservations` (`Id_reservation`, `Numero_Client`, `Numero_chambre`, `id_date`, `Nombre_nuit`, `Etat_reservation`, `Cout_reservation`) VALUES
(1, 1, 1, 1, 2, 'CONFIRMER', 1500);

-- --------------------------------------------------------

--
-- Structure de la table `Restauration`
--

CREATE TABLE `Restauration` (
  `Id_restauration` int(11) UNSIGNED NOT NULL,
  `Nom_plat` varchar(255) NOT NULL,
  `Nbr_plat` int(11) UNSIGNED NOT NULL,
  `Prix_plat` double NOT NULL,
  `Nom_boisson` varchar(255) NOT NULL,
  `Nbr_boisson` int(11) UNSIGNED NOT NULL,
  `Prix_boisson` double NOT NULL,
  `Numero_Client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Restauration`
--

INSERT INTO `Restauration` (`Id_restauration`, `Nom_plat`, `Nbr_plat`, `Prix_plat`, `Nom_boisson`, `Nbr_boisson`, `Prix_boisson`, `Numero_Client`) VALUES
(1, 'FRITS AUX POULETS', 2, 6000, 'BATCHANA', 3, 1200, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Chambres`
--
ALTER TABLE `Chambres`
  ADD PRIMARY KEY (`Numero_Chambre`),
  ADD KEY `id_type_chambres` (`id_type_chambres`),
  ADD KEY `Numero_Client` (`Numero_Client`);

--
-- Index pour la table `Chambres_type`
--
ALTER TABLE `Chambres_type`
  ADD PRIMARY KEY (`id_type_chambres`);

--
-- Index pour la table `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`Numero_Client`),
  ADD KEY `Id_type_client` (`Id_type_client`);

--
-- Index pour la table `Clients_type`
--
ALTER TABLE `Clients_type`
  ADD PRIMARY KEY (`Id_type_client`);

--
-- Index pour la table `Date`
--
ALTER TABLE `Date`
  ADD PRIMARY KEY (`id_date`);

--
-- Index pour la table `Factures`
--
ALTER TABLE `Factures`
  ADD PRIMARY KEY (`Id_factures`),
  ADD KEY `id_paiement` (`id_paiement`),
  ADD KEY `Numero_Client` (`Numero_Client`),
  ADD KEY `Numero_chambre` (`Numero_chambre`);

--
-- Index pour la table `Lavage`
--
ALTER TABLE `Lavage`
  ADD PRIMARY KEY (`Id_lavage`);

--
-- Index pour la table `LOISIRS`
--
ALTER TABLE `LOISIRS`
  ADD PRIMARY KEY (`Id_loisir`),
  ADD KEY `Id_lavage` (`Id_lavage`),
  ADD KEY `Numero_Client` (`Numero_Client`);

--
-- Index pour la table `Mode_paiement`
--
ALTER TABLE `Mode_paiement`
  ADD PRIMARY KEY (`id_paiement`);

--
-- Index pour la table `Personnel`
--
ALTER TABLE `Personnel`
  ADD PRIMARY KEY (`Id_personnel`);

--
-- Index pour la table `Reservations`
--
ALTER TABLE `Reservations`
  ADD PRIMARY KEY (`Id_reservation`),
  ADD KEY `id_date` (`id_date`),
  ADD KEY `Numero_Client` (`Numero_Client`),
  ADD KEY `Numero_chambre` (`Numero_chambre`);

--
-- Index pour la table `Restauration`
--
ALTER TABLE `Restauration`
  ADD PRIMARY KEY (`Id_restauration`),
  ADD KEY `Numero_Client` (`Numero_Client`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Chambres`
--
ALTER TABLE `Chambres`
  MODIFY `Numero_Chambre` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Chambres_type`
--
ALTER TABLE `Chambres_type`
  MODIFY `id_type_chambres` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Clients`
--
ALTER TABLE `Clients`
  MODIFY `Numero_Client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Clients_type`
--
ALTER TABLE `Clients_type`
  MODIFY `Id_type_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Date`
--
ALTER TABLE `Date`
  MODIFY `id_date` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Factures`
--
ALTER TABLE `Factures`
  MODIFY `Id_factures` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Lavage`
--
ALTER TABLE `Lavage`
  MODIFY `Id_lavage` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `LOISIRS`
--
ALTER TABLE `LOISIRS`
  MODIFY `Id_loisir` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Mode_paiement`
--
ALTER TABLE `Mode_paiement`
  MODIFY `id_paiement` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Personnel`
--
ALTER TABLE `Personnel`
  MODIFY `Id_personnel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Reservations`
--
ALTER TABLE `Reservations`
  MODIFY `Id_reservation` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Restauration`
--
ALTER TABLE `Restauration`
  MODIFY `Id_restauration` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Chambres`
--
ALTER TABLE `Chambres`
  ADD CONSTRAINT `Chambres_ibfk_1` FOREIGN KEY (`id_type_chambres`) REFERENCES `Chambres_type` (`id_type_chambres`),
  ADD CONSTRAINT `Chambres_ibfk_2` FOREIGN KEY (`Numero_Client`) REFERENCES `Clients` (`Numero_Client`);

--
-- Contraintes pour la table `Clients`
--
ALTER TABLE `Clients`
  ADD CONSTRAINT `Clients_ibfk_1` FOREIGN KEY (`Id_type_client`) REFERENCES `Clients_type` (`Id_type_client`);

--
-- Contraintes pour la table `Factures`
--
ALTER TABLE `Factures`
  ADD CONSTRAINT `Factures_ibfk_2` FOREIGN KEY (`id_paiement`) REFERENCES `Mode_paiement` (`id_paiement`),
  ADD CONSTRAINT `Factures_ibfk_6` FOREIGN KEY (`Numero_Client`) REFERENCES `Clients` (`Numero_Client`),
  ADD CONSTRAINT `Factures_ibfk_7` FOREIGN KEY (`Numero_chambre`) REFERENCES `Chambres` (`Numero_Chambre`);

--
-- Contraintes pour la table `LOISIRS`
--
ALTER TABLE `LOISIRS`
  ADD CONSTRAINT `LOISIRS_ibfk_1` FOREIGN KEY (`Id_lavage`) REFERENCES `Lavage` (`Id_lavage`),
  ADD CONSTRAINT `LOISIRS_ibfk_2` FOREIGN KEY (`Numero_Client`) REFERENCES `Clients` (`Numero_Client`);

--
-- Contraintes pour la table `Reservations`
--
ALTER TABLE `Reservations`
  ADD CONSTRAINT `Reservations_ibfk_1` FOREIGN KEY (`id_date`) REFERENCES `Date` (`id_date`),
  ADD CONSTRAINT `Reservations_ibfk_2` FOREIGN KEY (`Numero_Client`) REFERENCES `Clients` (`Numero_Client`),
  ADD CONSTRAINT `Reservations_ibfk_3` FOREIGN KEY (`Numero_chambre`) REFERENCES `Chambres` (`Numero_Chambre`);

--
-- Contraintes pour la table `Restauration`
--
ALTER TABLE `Restauration`
  ADD CONSTRAINT `Restauration_ibfk_1` FOREIGN KEY (`Numero_Client`) REFERENCES `Clients` (`Numero_Client`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
