/*
 Navicat Premium Data Transfer

 Source Server         : data
 Source Server Type    : SQLite
 Source Server Version : 3030001
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3030001
 File Encoding         : 65001

 Date: 12/04/2022 00:05:30
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS "activity";
CREATE TABLE "activity" (
  "id" INTEGER NOT NULL,
  "activity_name" TEXT,
  "email" TEXT,
  "create_time" TEXT,
  "activity_time" TEXT,
  "destination" TEXT,
  "description" TEXT,
  "user_name" TEXT,
  "content" TEXT,
  PRIMARY KEY ("id")
);

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO "activity" VALUES (1, 'Popularization of ugly animals', 'user1@mail.com', 1649682498683, 1650459600000, 'YouTube', 'Popularization of ugly animals. Monkfish, Hyena, Warthog etc. Looking forward to your participation​. The live address will be updated one hour before the live broadcast.', 'user12', '%3Ch2%3E1.%20Monkfish%3C%2Fh2%3E%3Cp%3EKnown%20as%20the%20%E2%80%9Cpoor%20man%E2%80%99s%20lobster%E2%80%9D%20and%20sometimes%20called%20%E2%80%9Csea-devils%2C%E2%80%9D%26nbsp%3B%3Ca%20href%3D%22https%3A%2F%2Fa-z-animals.com%2Fanimals%2Fmonkfish%2F%22%3Emonkfish%3C%2Fa%3E%26nbsp%3Bhave%20large%2C%20flat%20heads%2C%20wide%20mouths%2C%20and%20comparatively%20little%20bodies.%20Their%20eyes%20are%20small%20and%20beady%2C%20and%20individuals%20exude%20a%20generally%20slimy%20vibe%20that%E2%80%99s%20less%20than%20attractive.%3C%2Fp%3E%3Cp%3EBut%20monkfish%20probably%20couldn%E2%80%99t%20care%20less%20about%20our%20aesthetic%20sensibilities.%20After%20all%2C%20their%20unique%20looks%20keep%20them%20well%20camouflaged%20in%20deepwater%20dwellings%20%E2%80%94%20and%20being%20alive%20is%20more%20important%20than%20being%20pretty!%3C%2Fp%3E%3Cp%3E%3Ca%20href%3D%22https%3A%2F%2Fa-z-animals.com%2Fanimals%2Fmonkfish%2F%22%3EClick%20here%20to%20learn%20more%20about%20monkfish%3C%2Fa%3E%2C%20which%20reside%20around%20the%26nbsp%3B%3Ca%20href%3D%22https%3A%2F%2Fa-z-animals.com%2Fanimals%2Flocation%2Focean%2Fsouth-atlantic%2F%22%3EAtlantic%20Ocean%E2%80%99s%20coasts%3C%2Fa%3E.%3C%2Fp%3E%3Cp%3E%3Cimg%20src%3D%22https%3A%2F%2Fa-z-animals.com%2Fmedia%2F2021%2F01%2Fmonkfish-1.jpg%22%20alt%3D%22A%20monkfish%20with%20its%20mouth%20open%20against%20a%20white%20background.%22%2F%3E%3C%2Fp%3E%3Cp%3E%3Cbr%2F%3E%3C%2Fp%3E%3Cp%3E2.%26nbsp%3B%3Cspan%20style%3D%22color%3A%20inherit%3B%20font-family%3A%20inherit%3B%20font-size%3A%2024px%3B%22%3EHyena%3C%2Fspan%3E%3C%2Fp%3E%3Cp%3E%E2%80%9CJokers%E2%80%9D%20of%20the%26nbsp%3B%3Ca%20href%3D%22https%3A%2F%2Fa-z-animals.com%2Fanimals%2Flocation%2Fafrica%2F%22%3EAfrican%3C%2Fa%3E%26nbsp%3Bsavannah%2C%26nbsp%3B%3Ca%20href%3D%22http%3A%2F%2Fcarnivores%2F%22%3Ehyenas%3C%2Fa%3E%26nbsp%3Bare%20scraggly%20carnivores%20with%20a%20distinct%20bark%20that%20heightens%20their%20creepiness.%20Hyenas%20are%20notoriously%20rag-tag%2C%20and%20their%20patchy%20hair%20adds%20to%20their%20disheveled%20aura.%20But%20you%20can%E2%80%99t%20accuse%20hyenas%20of%20being%20wasteful.%20Like%20a%20survivalist%20hunter%20who%20shuns%20waste%2C%20hyenas%20devour%20every%20inch%20of%20their%20prey.%3C%2Fp%3E%3Cp%3E%3Ca%20href%3D%22https%3A%2F%2Fa-z-animals.com%2Fanimals%2Fhyena%2F%22%3EClick%20here%20to%20learn%20more%20about%20hyenas%3C%2Fa%3E%2C%20which%20are%20more%20closely%20related%20to%26nbsp%3B%3Ca%20href%3D%22https%3A%2F%2Fa-z-animals.com%2Fpets%2Fcats%2F%22%3Ecats%3C%2Fa%3E%26nbsp%3Bthan%26nbsp%3B%3Ca%20href%3D%22https%3A%2F%2Fa-z-animals.com%2Fpets%2Fdogs%2F%22%3Edogs%3C%2Fa%3E.%3C%2Fp%3E%3Cp%3E%3Cimg%20src%3D%22%2Fstatic%2Fc-images%2F2022041121033538321.jpg%22%20contenteditable%3D%22false%22%20style%3D%22font-size%3A%2014px%3B%20max-width%3A%20100%25%3B%22%2F%3E%3C%2Fp%3E%3Cp%3E%3Cbr%2F%3E%3C%2Fp%3E%3Cp%3E3.%26nbsp%3B%3Cspan%20style%3D%22color%3A%20inherit%3B%20font-family%3A%20inherit%3B%20font-size%3A%2024px%3B%22%3EWarthog%3C%2Fspan%3E%3C%2Fp%3E%3Cp%3ESure%2C%20their%20odd-shaped%20heads%20and%20large%20snouts%20aren%E2%80%99t%20exactly%20attractive.%20However%2C%20what%20lands%26nbsp%3B%3Ca%20href%3D%22https%3A%2F%2Fa-z-animals.com%2Fanimals%2Fwarthog%2F%22%3Ewarthogs%3C%2Fa%3E%26nbsp%3Bon%20our%20ugliest%20animals%20list%20is%20the%20fleshy%20%E2%80%9Cwarts%E2%80%9D%20that%20cover%20their%20bodies.%20But%20the%20bumps%20aren%E2%80%99t%20actually%20warts.%20Instead%2C%20they%E2%80%99re%20built-in%20armor%20that%20protects%20the%20wild%20pigs%20during%20combat.%3C%2Fp%3E%3Cp%3E%3Ca%20href%3D%22https%3A%2F%2Fa-z-animals.com%2Fanimals%2Fwarthog%2F%22%3EClick%20here%20to%20learn%20more%20about%20warthogs%3C%2Fa%3E%2C%20which%20have%20two%20sets%20of%20tusks.%3C%2Fp%3E%3Cp%3E%3Cimg%20src%3D%22%2Fstatic%2Fc-images%2F2022041121035751254.jpg%22%20contenteditable%3D%22false%22%20style%3D%22font-size%3A%2014px%3B%20max-width%3A%20100%25%3B%22%2F%3E%3C%2Fp%3E%3Cp%3E%3Cbr%2F%3E%3C%2Fp%3E%3Cp%3ELooking%20forward%20to%20your%20participation.%3C%2Fp%3E');

-- ----------------------------
-- Table structure for activity_comment
-- ----------------------------
DROP TABLE IF EXISTS "activity_comment";
CREATE TABLE "activity_comment" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "activity_id" TEXT,
  "user_name" TEXT,
  "content" TEXT,
  "create_time" TEXT,
  "email" TEXT
);

-- ----------------------------
-- Records of activity_comment
-- ----------------------------
INSERT INTO "activity_comment" VALUES (8, 1, 'user12', '%3Cp%3E123%3C%2Fp%3E', 1649601824811, 'user1@mail.com');
INSERT INTO "activity_comment" VALUES (12, 2, 'user12', '%3Cp%3E23423%3C%2Fp%3E', 1649680119485, 'user1@mail.com');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS "blog";
CREATE TABLE "blog" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "title" TEXT,
  "tag" TEXT,
  "description" TEXT,
  "content" TEXT,
  "create_time" TEXT,
  "user_name" TEXT,
  "userId" INTEGER,
  "email" TEXT
);

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO "blog" VALUES (15, 'World''s ugliest animals', 'ANIMALS, ENVIRONMENT', 'Cute and fluffy animals usually hog all the limelight. But, in this picture gallery we feature some of the planet''s weird and odd-looking creatures which are not only forgotten but are also endangered.', '%3Cp%3E1.%20Imagine%20never%20growing%20up!%20That''s%20exactly%20what%20the%20axolotl%2C%20a%20type%20of%20salamander%20found%20in%20Mexico%2C%20does.%20It%20uniquely%20spends%20its%20whole%20life%20underwater%20in%20its%20larval%20form%20without%20going%20through%20a%20metamorphosis.%20That%20has%20made%20the%20forever-young%20amphibian%20a%20popular%20animal%20kept%20in%20labs%2C%20schools%20and%20as%20pets.%20But%2C%20this%20creature%20with%20its%20odd%20lifestyle%20and%20looks%2C%20is%20critically%20endangered%20in%20the%20wild.%3Cbr%2F%3E%3C%2Fp%3E%3Cp%3E%3Cimg%20src%3D%22https%3A%2F%2Fstatic.dw.com%2Fimage%2F15966122_303.jpg%22%20alt%3D%22Bildergalerie%20Amphibiensterben%20Axolotl%20%22%2F%3E%3Cimg%20src%3D%22%2Fstatic%2Fc-images%2F20220411204526254504.jpg%22%20contenteditable%3D%22false%22%20style%3D%22font-size%3A%2014px%3B%20max-width%3A%20100%25%3B%22%2F%3E%3Cbr%2F%3E%3Cbr%2F%3E%3C%2Fp%3E%3Cp%3E2.%26nbsp%3BThis%20rat%20has%20little%20use%20for%20hair%20or%20for%20eyes.%20In%20fact%2C%20it%20helps%20the%20rodent%20adapt%20to%20its%20underground%20environment%20in%20insect-like%20colonies.%20The%20naked%20mole-rat%20is%20native%20to%20East%20Africa%20and%20can%20live%20for%20nearly%2030%20years.%20It''s%20also%20found%20to%20have%20a%20remarkable%20resistance%20to%20cancer.%3C%2Fp%3E%3Cp%3E%3Cimg%20src%3D%22https%3A%2F%2Fstatic.dw.com%2Fimage%2F16102396_303.jpg%22%20alt%3D%22Nacktmull%20(AP)%22%2F%3E%3Cimg%20src%3D%22%2Fstatic%2Fc-images%2F20220411204601521432.jpg%22%20contenteditable%3D%22false%22%20style%3D%22font-size%3A%2014px%3B%20max-width%3A%20100%25%3B%22%2F%3E%3C%2Fp%3E%3Cp%3E%3Cbr%2F%3E%3C%2Fp%3E%3Cp%3E3.%26nbsp%3BWhat%20is%20that%3F%20That''s%20the%20first%20reaction%20this%20jelly-like%20mass%20that%20resembles%20a%20bald%2C%20grumpy%2C%20old%20man%20usually%20elicits.%20The%20gelatinous%20fish%2C%20aptly%20called%20the%20blobfish%2C%20lives%20at%20depths%20of%20up%20to%201%2C200%20meters%20off%20the%20coasts%20of%20Australia%20and%20Tasmania.%20It%20feeds%20on%20oysters%20and%20crabs%20and%20often%20gets%20hauled%20up%20in%20trawler%20nets.%3C%2Fp%3E%3Cp%3E%3Cimg%20src%3D%22https%3A%2F%2Fstatic.dw.com%2Fimage%2F17897848_303.jpg%22%20alt%3D%22Blobfisch%22%2F%3E%3Cimg%20src%3D%22%2Fstatic%2Fc-images%2F20220411204617985935.jpg%22%20contenteditable%3D%22false%22%20style%3D%22font-size%3A%2014px%3B%20max-width%3A%20100%25%3B%22%2F%3E%3C%2Fp%3E%3Cp%3E%3Cbr%2F%3E%3C%2Fp%3E%3Cp%3E4.%26nbsp%3BThis%20frog%2C%20with%20its%20excessive%20skin%20folds%2C%20is%20found%20at%20the%20bottom%20of%20Lake%20Titicaca%20sandwiched%20between%20Peru%20and%20Bolivia.%20Sadly%2C%20this%20oddball%20amphibian%20suffers%20from%20over-popularity.%20It''s%20offered%20on%20menus%20at%20restaurants%20around%20the%20lake.%20And%2C%20locals%20often%20skin%20the%20frog%2C%20cook%20it%20and%20run%20it%20through%20a%20blender%20to%20sell%20as%20an%20aphrodisiac.%3C%2Fp%3E%3Cp%3E%3Cimg%20src%3D%22https%3A%2F%2Fstatic.dw.com%2Fimage%2F17898822_303.jpg%22%20alt%3D%22Titicaca%20Riesenfrosch%20Pfeiffrosch%22%2F%3E%3Cimg%20src%3D%22%2Fstatic%2Fc-images%2F20220411204631177110.jpg%22%20contenteditable%3D%22false%22%20style%3D%22font-size%3A%2014px%3B%20max-width%3A%20100%25%3B%22%2F%3E%3C%2Fp%3E%3Cbr%2F%3E', 1649681193371, 'user12', NULL, 'user1@mail.com');
INSERT INTO "blog" VALUES (16, 'Most people avoid ugly animals. I''m obsessed with them', 'LOVE', 'Growing up in rural Australia, I found joy in the weird creatures around me – and finding out why they had evolved that way. Now I’ve illustrated a whole children’s book about them.', '%3Cp%3E%3Cimg%20src%3D%22%2Fstatic%2Fc-images%2F20220411204927589660.jpg%22%20contenteditable%3D%22false%22%20style%3D%22font-size%3A%2014px%3B%20max-width%3A%20100%25%3B%22%2F%3E%3C%2Fp%3E%3Cp%3E%3Cfont%20face%3D%22Courier%20New%22%20size%3D%222%22%3EAn%20animal%E2%80%99s%20appearance%20impacts%20our%20willingness%20to%20assist%20with%20its%20survival%20%E2%80%93%20which%20doesn%E2%80%99t%20seem%20fair%20on%20the%20blobfish.%26nbsp%3BIllustration%3A%20Hachette%3C%2Ffont%3E%3C%2Fp%3E%3Cp%3E%3Cfont%20face%3D%22Courier%20New%22%20size%3D%222%22%3E%3Cbr%2F%3E%3C%2Ffont%3E%3C%2Fp%3E%3Cp%3EThe%20surinam%20toad%3Cem%3E%26nbsp%3B%3C%2Fem%3Eis%20an%20unusual%20creature%20to%20behold%3A%20it%20has%20an%20extremely%20flat%2C%20splat-like%20body%2C%20with%20a%20posterior%20packed%20with%20large%20pores%20full%20of%20babies.%20It%E2%80%99s%20as%20though%20somewhere%20during%20evolution%2C%20it%20took%20a%20wrong%20turn%20%E2%80%93%20and%20then%20got%20run%20over.%3C%2Fp%3E%3Cp%3EBut%20of%20course%2C%20the%20adaptation%20has%20an%20intelligent%20purpose.%20By%20carrying%20her%20eggs%20on%20her%20back%2C%20the%20mother%20is%20able%20to%20lay%20flat%20against%20her%20surroundings%2C%20protecting%20her%20spawn%20from%20predators%20until%20they%20are%20ready%20for%20the%20world.%3C%2Fp%3E%3Cp%3E%3Cgu-island%3E%3C%2Fgu-island%3E%3C%2Fp%3E%3Cp%3EIf%20you%20suffer%20from%20trypophobia%20(the%20fear%20of%20small%2C%20tightly%20packed%20holes)%2C%20look%20away%20now.%3C%2Fp%3E%3Cp%3E%3Cimg%20src%3D%22%2Fstatic%2Fc-images%2F20220411205033577794.jpg%22%20contenteditable%3D%22false%22%20style%3D%22font-size%3A%2014px%3B%20max-width%3A%20100%25%3B%22%2F%3E%3Cbr%2F%3E%3Cfont%20size%3D%222%22%20face%3D%22Courier%20New%22%3EThe%20surinam%20toad%2C%20as%20drawn%20by%20Sami%20Bayly.%26nbsp%3BIllustration%3A%20Hachette%3C%2Ffont%3E%3Cbr%2F%3E%3C%2Fp%3E%3Cp%3E%3Cfont%20size%3D%222%22%20face%3D%22Courier%20New%22%3E%3Cbr%2F%3E%3C%2Ffont%3E%3C%2Fp%3E%3Cp%3EThe%20surinam%20toad%20is%20a%20perfect%20example%20of%20one%20of%20my%20obsessions%3A%20ugly%20animals.%20What%20may%20be%20a%20distressingly%20hideous%20feature%20to%20humans%20often%20belies%20evolutionary%20genius%2C%20which%20fascinates%20me%20so%20much%20that%20I%20wrote%20and%20illustrated%20a%20whole%20children%E2%80%99s%20book%20full%20of%20them.%3C%2Fp%3E%3Cp%3EMost%20people%20spend%20their%20lives%20avoiding%20being%20associated%20with%20anything%20regarded%20as%20%E2%80%9Cugly%E2%80%9D%3B%20I%20find%20myself%20being%20drawn%20towards%20them.%20And%20drawing%20them.%3C%2Fp%3E%3Cp%3EI%E2%80%99m%2023%20now%20but%20I%20grew%20up%20in%20my%20family%E2%80%99s%20home%20just%20outside%20of%20Port%20Macquarie%20in%20Australia%2C%20in%20the%20rural%20suburb%20of%20Sancrox.%20From%20an%20early%20age%20I%20found%20so%20much%20joy%20in%20the%20weird%20and%20wonderful%20creatures%20around%20me%2C%20from%20the%20frequent%20visits%20of%26nbsp%3B%3Cem%3EAntechinus%26nbsp%3B%3C%2Fem%3Emarsupials%20to%20the%20bandy-bandy%20snakes%2C%20goannas%20in%20the%20garden%2C%20and%20possums%20in%20the%20trees.%20We%20had%20a%20vast%20range%20of%20pets%20too%20%E2%80%93%20miniature%20ponies%20and%20donkeys%2C%20among%20them.%3C%2Fp%3E%3Cp%3EOur%20home%20was%20always%20decorated%20with%20paintings%20by%20Mum%2C%20and%20my%20sister%20and%20I%20were%20fortunate%20enough%20to%20inherit%20her%20artistic%20skill.%20I%20wasn%E2%80%99t%20sure%20what%20to%20do%20with%20it%20after%20studying%20art%20in%20high%20school%20%E2%80%93%20until%20Mum%20came%20across%20a%20unique%20course%3A%20I%20could%20get%20a%20bachelor%E2%80%99s%20degree%20in%20natural%20history%20illustration.%3C%2Fp%3E%3Cp%3EDuring%20my%20honours%20year%20I%20researched%20the%20connections%20between%20conservation%20and%20aesthetics%2C%20to%20discover%20the%20impact%20of%20an%20animal%E2%80%99s%20appearance%20on%20how%20willing%20humans%20were%20to%20assist%20with%20its%20survival.%3C%2Fp%3E%3Cp%3E%3Cimg%20src%3D%22https%3A%2F%2Fi.guim.co.uk%2Fimg%2Fmedia%2F2d4f7c5b93ee84ea421ecbb0a75a223ac2f599a9%2F257_1070_5255_2818%2Fmaster%2F5255.jpg%3Fwidth%3D445%26amp%3Bquality%3D45%26amp%3Bauto%3Dformat%26amp%3Bfit%3Dmax%26amp%3Bdpr%3D2%26amp%3Bs%3D96e34d06258aaca5e4738408a23bf9f6%22%20alt%3D%22The%20naked%20mole%20rat%20in%20The%20Illustrated%20Encyclopaedia%20of%20Ugly%20Animals%22%2F%3E%3C%2Fp%3E%3Cp%3E%3Cfont%20face%3D%22Courier%20New%22%20size%3D%222%22%3EThe%20naked%20mole%20rat%20in%20The%20Illustrated%20Encyclopaedia%20of%20Ugly%20Animals.%26nbsp%3BIllustration%3A%20Hachette%3C%2Ffont%3E%3Cbr%2F%3E%3C%2Fp%3E%3Cp%3ELarge%20and%20impressive%20animals%20found%20in%20safari%20parks%20or%20reservations%2C%20including%20tigers%2C%20lions%20and%20elephants%2C%20are%20considered%20%E2%80%9Ccharismatic%20megafauna%E2%80%9D%20owing%20to%20their%20popularity%20with%20the%20public.%20As%20a%20result%2C%20they%20tend%20to%20receive%20more%20press%2C%20better%20benefits%20and%20more%20donations%20%E2%80%93%20while%20less%20popular%20or%20%E2%80%9Cugly%E2%80%9D%20animals%20are%20left%20behind.%3C%2Fp%3E%3Cfigure%3E%3Cgu-island%3E%3Cp%3EIn%20his%202011%20article%2C%20The%20New%20Noah%E2%80%99s%20Ark%2C%20the%20Canadian%20veterinary%20research%20scientist%20Ernie%20Small%20compared%20the%20%242m%20Coca-Cola%20had%20committed%20to%20save%20polar%20bears%20%E2%80%93%20and%20the%26nbsp%3B%3Ca%20href%3D%22https%3A%2F%2Fnationalpost.com%2Fnews%2Ftoo-cute-to-die-experts-say-were-too-selective-about-species-we-choose-to-protect%22%3E%24125m%20commitment%20to%20the%20whooping%20crane%3C%2Fa%3E%26nbsp%3Bmade%20by%20a%20joint%20Canada-US%20recovery%20plan%20%E2%80%93%20with%20money%20promised%20to%20help%20endangered%20frogs%20and%20toads%2C%20who%20receive%20nowhere%20near%20that%20much.%3C%2Fp%3E%3Cp%3E%E2%80%9CAesthetic%20and%20commercial%20standards%20have%20become%20the%20primary%20determinants%20of%20which%20species%20in%20the%20natural%20world%20deserve%20conservation%2C%E2%80%9D%20he%20wrote.%20%E2%80%9CAccordingly%2C%20the%20world%E2%80%99s%20biodiversity%20is%20being%20beautified%20by%20selective%20conservation%20of%20attractive%20species%2C%20while%20the%20plight%20of%20the%20overwhelming%20majority%20of%20species%20is%20receiving%20limited%20attention.%E2%80%9D%3C%2Fp%3E%3Cp%3E%3Ca%20href%3D%22https%3A%2F%2Fwww.theguardian.com%2Fbooks%2F2018%2Fdec%2F31%2Faminatta-forna-further-reading-animals-humans%22%3E%3C%2Fa%3E%3C%2Fp%3E%3Cfigure%3E%3Cbr%2F%3E%3C%2Ffigure%3E%3Cfigure%3E%3Cimg%20src%3D%22https%3A%2F%2Fi.guim.co.uk%2Fimg%2Fmedia%2F61fd8e927e4b84279466fe1a2597c42894e9d501%2F0_463_5751_3608%2Fmaster%2F5751.jpg%3Fwidth%3D445%26amp%3Bquality%3D45%26amp%3Bauto%3Dformat%26amp%3Bfit%3Dmax%26amp%3Bdpr%3D2%26amp%3Bs%3D8cefbbea6dfd1f6e3cdbb4200535f269%22%20alt%3D%22Aye-aye%20illustration%22%2F%3E%3C%2Ffigure%3E%3Cfigure%3E%3Cfigure%3E%3Cfigcaption%3E%3Cfont%20face%3D%22Courier%20New%22%20size%3D%222%22%3EAccording%20to%20superstition%2C%20if%20an%20aye-aye%20points%20at%20you%20with%20its%20%E2%80%98scrawny%20single%20finger%E2%80%99%2C%20you%20are%20doomed%20to%20die.%26nbsp%3BIllustration%3A%20Hachette%3C%2Ffont%3E%3C%2Ffigcaption%3E%3Cfigcaption%3E%3Cfont%20face%3D%22Courier%20New%22%20size%3D%222%22%3E%3Cbr%2F%3E%3C%2Ffont%3E%3C%2Ffigcaption%3E%3Cfigcaption%3E%3Cp%3ESpecies%20that%20possess%20human%20tendencies%2C%20infant-like%20features%2C%20vibrant%20colours%2C%20symmetry%20and%20impressive%20proportion%20%E2%80%93%20or%20offer%20something%20we%20can%20use%2C%20such%20as%20food%2C%20medicine%20or%20clothing%20%E2%80%93%20are%20almost%20always%20going%20to%20appeal%20more%20to%20us.%20But%20an%20animal%20like%20the%20endangered%20aye-aye%20suffers%20in%20comparison.%3C%2Fp%3E%3Cp%3ETo%20draw%20the%20aye-aye%2C%20one%20must%20take%20into%20consideration%20their%20coarse%20fur%2C%20bulging%20eyes%2C%20scrawny%20single%20finger%20and%20over-all%20rat-like%20appearance%2C%20while%20keeping%20the%20superstition%20that%20surrounds%20it%20in%20the%20back%20of%20one%E2%80%99s%20mind%3A%20if%20an%20aye-aye%20points%20at%20you%20with%20its%20long%20finger%2C%20the%20legend%20goes%2C%20you%E2%80%99ve%20been%20cursed%20with%20an%20imminent%20death.%3C%2Fp%3E%3Cp%3EIt%20sounds%20ridiculous%2C%20but%20myths%20like%20these%20have%20a%20direct%20impact%20on%20their%20population.%20We%20need%20to%20understand%20this%20incredible%20species%2C%20not%20be%20afraid%20of%20it%3B%20we%20need%20to%20educate%20others%20on%20why%20the%20creature%20has%20evolved%20like%20this.%20It%20is%20one%20of%20only%20a%20few%20species%20to%20use%20a%20technique%20called%20%E2%80%9Cpercussive%20foraging%E2%80%9D%3A%20their%20large%20ears%20help%20them%20hear%20insects%20inside%20the%20trees%3B%20their%20sharp%20teeth%20gnaw%20holes%20in%20the%20wood%3B%20and%20their%20eerily%20long%20index%20finger%20and%20claw%20helps%20them%20spear%20grubs%20found%20in%20the%20holes%20they%E2%80%99ve%20made%2C%20for%20a%20tasty%20meal.%3C%2Fp%3E%3Cp%3EThe%20helmeted%20hornbill%20is%20another%20one%3A%20critically%20endangered%20owing%20to%20land%20clearing%20for%20palm%20oil%20plantations%2C%20and%20poaching%20for%20its%20magnificent%20red%20ivory%20casque.%20In%20West%20Kalimantan%2C%206%2C000%20birds%20were%20killed%20for%20trade%20purposes%20in%202013%20alone%2C%20to%20create%20carved%20ornaments%20and%20jewellery%20from%20their%20horns.%3C%2Fp%3E%3Cp%3EThe%20helmeted%20hornbill%20is%20wonderful%20to%20illustrate%2C%20with%20its%20enormous%20size%2C%20outrageous%20beak%20and%20textured%20neck.%20I%20used%20a%20range%20of%20painting%20techniques%20to%20capturethis%20weird%20yet%20wonderful%20bird.%3C%2Fp%3E%3Cp%3EI%20hope%20my%20book%20will%20introduce%20others%20to%20a%20broader%20range%20of%20species%20%E2%80%93%20and%20help%20us%20care%20about%20them%2C%20regardless%20of%20how%20they%20look.%3C%2Fp%3E%3Cp%3E%3Cbr%2F%3E%3C%2Fp%3E%3Cfooter%3E%3Cp%3E%3Cem%3E%3Cspan%3E%3C%2Fspan%3E%3C%2Fem%3E%3C%2Fp%3E%3C%2Ffooter%3E%3C%2Ffigcaption%3E%3Cfigcaption%3E%3Cfont%20face%3D%22Courier%20New%22%20size%3D%222%22%3E%3Cbr%2F%3E%3C%2Ffont%3E%3C%2Ffigcaption%3E%3Cfigcaption%3E%3Cfont%20face%3D%22Courier%20New%22%20size%3D%222%22%3E%3Cbr%2F%3E%3C%2Ffont%3E%3C%2Ffigcaption%3E%3C%2Ffigure%3E%3Cbr%2F%3E%3C%2Ffigure%3E%3C%2Fgu-island%3E%3Cbr%2F%3E%3C%2Ffigure%3E%3Cbr%2F%3E', 1649681582218, 'user12', NULL, 'user1@mail.com');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS "comment";
CREATE TABLE "comment" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "blog_id" TEXT,
  "user_name" TEXT,
  "rate" INTEGER,
  "content" TEXT,
  "create_time" TEXT,
  "email" TEXT
);

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO "comment" VALUES (3, 3, 'user1', 3, '%3Cp%3ESad.%3Cspan%20style%3D%22font-size%3A%2014px%3B%22%3E%F0%9F%98%AD%3C%2Fspan%3E%3C%2Fp%3E', 1641517457303, 'user1@test.ac.uk');
INSERT INTO "comment" VALUES (4, 4, 'user3', 3, '%3Cp%3EWOW.%26nbsp%3B%3Cspan%20style%3D%22font-size%3A%2014px%3B%22%3E%F0%9F%98%84%3C%2Fspan%3E%3C%2Fp%3E', 1641517589774, 'user3@mail.com');
INSERT INTO "comment" VALUES (5, 4, 'user3', 5, '%3Cp%3EGreat!%26nbsp%3B%3Cspan%20style%3D%22font-size%3A%2014px%3B%22%3E%F0%9F%91%8D%3C%2Fspan%3E%3C%2Fp%3E', 1641517602689, 'user3@mail.com');
INSERT INTO "comment" VALUES (6, 5, 'user3', 3, '%3Cp%3EPlease%20contact%20me%20by%20email%20if%20you%20would%20like%20to%20purchase%20quickly.%3Cspan%20style%3D%22font-size%3A%2014px%3B%22%3E%F0%9F%98%83%3C%2Fspan%3E%3C%2Fp%3E%3Cp%3E%3Cspan%20style%3D%22font-size%3A%2014px%3B%22%3EI%20also%20have%20a%20phone%20bought%20in%20may%202021.%26nbsp%3B%3C%2Fspan%3EOnly%20%24150%20required.%3Cimg%20src%3D%22%2Fstatic%2Fc-images%2F20220107095223541693.jpg%22%20contenteditable%3D%22false%22%20style%3D%22max-width%3A%20100%25%3B%22%2F%3E%3Cbr%2F%3E%3Cbr%2F%3E%3C%2Fp%3E', 1641520359176, 'user3@mail.com');
INSERT INTO "comment" VALUES (7, 5, 'Hank', 5, '%3Cp%3EI%20want%20it.%3Cspan%20style%3D%22font-size%3A%2014px%3B%22%3E%F0%9F%98%83%3C%2Fspan%3E%3C%2Fp%3E', 1641520546787, 'hank@test.ac.uk');
INSERT INTO "comment" VALUES (9, 15, 'user1', 3, '%3Cp%3Ethis%20is%20comment%3C%2Fp%3E', 1649692107817, 'user1@test.ac.uk');
INSERT INTO "comment" VALUES (11, 18, 'admin', 3, '%3Cp%3Etest%3C%2Fp%3E', 1649692811918, 'admin@gmail.com');

-- ----------------------------
-- Table structure for enroll
-- ----------------------------
DROP TABLE IF EXISTS "enroll";
CREATE TABLE "enroll" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "activity_id" TEXT,
  "user_name" TEXT,
  "create_time" TEXT,
  "email" TEXT
);

-- ----------------------------
-- Records of enroll
-- ----------------------------
INSERT INTO "enroll" VALUES (18, 1, 'user12', 1649682504995, 'user1@mail.com');
INSERT INTO "enroll" VALUES (21, 1, 'user1444', 1649692662379, 'user1@test.ac.uk');
INSERT INTO "enroll" VALUES (22, 1, 'admin', 1649692784102, 'admin@gmail.com');

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS "sqlite_sequence";
CREATE TABLE "sqlite_sequence" (
  "name" ,
  "seq" 
);

-- ----------------------------
-- Records of sqlite_sequence
-- ----------------------------
INSERT INTO "sqlite_sequence" VALUES ('activity_comment', 13);
INSERT INTO "sqlite_sequence" VALUES ('blog', 18);
INSERT INTO "sqlite_sequence" VALUES ('comment', 11);
INSERT INTO "sqlite_sequence" VALUES ('enroll', 22);
INSERT INTO "sqlite_sequence" VALUES ('blog', 16);
INSERT INTO "sqlite_sequence" VALUES ('comment', 7);
INSERT INTO "sqlite_sequence" VALUES ('enroll', 18);
INSERT INTO "sqlite_sequence" VALUES ('activity_comment', 12);
INSERT INTO "sqlite_sequence" VALUES ('users', 7);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "users";
CREATE TABLE "users" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "user_name" TEXT,
  "password" TEXT,
  "create_time" TEXT,
  "email" TEXT,
  "is_admin" TEXT
);

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "users" VALUES (1, 'user12', 'user1', 1640925002815, 'user1@mail.com', 1);
INSERT INTO "users" VALUES (2, 'user2', 'user22', 1641284753454, 'user2@mail.com', NULL);
INSERT INTO "users" VALUES (3, 'user4', 'user4', 1641285457672, 'user4@mail.com', NULL);
INSERT INTO "users" VALUES (4, 'user3', 'user3', 1641285509048, 'user3@mail.com', NULL);
INSERT INTO "users" VALUES (5, 'user123', 'passuser1', 1641436513765, 'user1@test.ac.uk', NULL);
INSERT INTO "users" VALUES (6, 'Hank', 'hank', 1641520524821, 'hank@test.ac.uk', NULL);
INSERT INTO "users" VALUES (7, 'admin', 'admin', 1641520524821, 'admin@gmail.com', 1);

-- ----------------------------
-- Auto increment value for activity_comment
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 13 WHERE name = 'activity_comment';

-- ----------------------------
-- Auto increment value for blog
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 18 WHERE name = 'blog';

-- ----------------------------
-- Auto increment value for comment
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 11 WHERE name = 'comment';

-- ----------------------------
-- Auto increment value for enroll
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 22 WHERE name = 'enroll';

-- ----------------------------
-- Auto increment value for users
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 7 WHERE name = 'users';

PRAGMA foreign_keys = true;
