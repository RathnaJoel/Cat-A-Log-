-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2026 at 06:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalogue_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(180) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `password`, `created_at`) VALUES
(1, 'admin@catalog.com', '$2y$12$gyoDH9XqXcQKluhhMsn4quW3Jh8wd/UyteUNxqFZiX4WUya8Vxtgq', '2026-04-18 09:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'assets/images/placeholder.jpg',
  `description` text NOT NULL,
  `age` varchar(40) NOT NULL DEFAULT 'Unknown',
  `abilities` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `name`, `image`, `description`, `age`, `abilities`, `created_at`) VALUES
(1, 'Sunless', 'assets\\images\\Characters\\Sunless.jpg', 'Sunless (or Sunny), is the main character of Shadow Slave. Growing up in the outskirts and leading a life of deceit and focusing on his own survival, he initially has a bleak outlook on life, even resigning himself to his fate when he was infected by the Nightmare Spell. But then, inside his First Nightmare, he resolved to himself that he must survive, no matter what.', '28', 'Lord of Shadows, Flame of Divinity, Blood Weave, Bone Weave, Soul Weave, Onyx Shell, Jade Shell, Fateless, Flesh Weave, Mind Weave, Curse, Spirit Weave.', '2026-04-17 22:04:55'),
(8, 'Gaius Julius Caesar', 'assets\\images\\characters\\gaiusjuliuscaesar.jpg', 'A brilliant Roman general and statesman who played a critical role in the demise of the Roman Republic and the rise of the Roman Empire, eventually becoming dictator for life.', '55', 'Military strategy, Political acumen, Oratory, Charismatic leadership, Historical writing', '2026-04-18 16:04:20'),
(9, 'Walter White', 'assets/images/characters/walterwhite.jpg', 'A mild-mannered high school chemistry teacher who transforms into a ruthless methamphetamine kingpin known as \"Heisenberg\" to secure his family\'s financial future.', '52', 'Genius-level intellect, Master chemist, Strategic planning, Manipulation, Deception', '2026-04-18 16:11:06'),
(10, 'Anakin Skywalker', 'assets/images/characters/anakinskywalker.jpg', 'A prophesied Jedi Knight of immense potential who tragically falls to the dark side of the Force, eventually becoming the feared Sith Lord Darth Vader.', '22', 'Master lightsaber combatant, Force telekinesis, Force choke, Expert pilot, Mechanical engineering', '2026-04-18 16:13:18'),
(11, 'Spider-Man', 'assets/images/characters/spiderman.jpg', 'A witty, brilliant high school student who balances his everyday life with protecting New York City as a web-slinging superhero.', '18', 'Superhuman strength, Superhuman agility, Wall-crawling, Spidey-sense (danger precognition), Web-shooting', '2026-04-18 16:17:28'),
(12, 'Moana', 'assets/images/characters/moana.jpg', 'The courageous and strong-willed daughter of a Polynesian village chief, chosen by the ocean itself to embark on an epic journey to restore the heart of Te Fiti.', '16', 'Master wayfinding, Ocean affinity, Strong leadership, Athleticism, Courage', '2026-04-18 16:23:00'),
(13, 'Blade', 'assets/images/characters/blade.jpg', 'A stoic swordsman who abandoned his original body to become a living weapon. He is a member of the Stellaron Hunters, cursed with a terrifying immortality.', 'Unknown (Immortal)', 'Immortality, Master swordsmanship, Self-healing, Superhuman pain tolerance, Wind combat skills', '2026-04-18 16:29:41'),
(14, 'Napoléon Bonaparte', 'assets/images/characters/napoleonbonaparte.jpg', 'A brilliant French military and political leader who rose to prominence during the French Revolution and crowned himself Emperor of the French.', '51', 'Genius military strategy, Artillery mastery, Charismatic leadership, Political administration, Tactical adaptation', '2026-04-18 16:32:52'),
(15, 'Cadis Etrama Di Raizel', 'assets/images/characters/cadisetramadiraizel.jpg', 'The Noblesse, an incredibly powerful, ancient, and elegant vampire-like noble who awakens in the modern world after an 820-year slumber.', '2000+', 'Mind control, Blood field manipulation, Telekinesis, Superhuman speed, Aura manipulation', '2026-04-18 16:35:19'),
(16, 'Daenerys Targaryen', 'assets/images/characters/daenerystargaryen.jpg', 'The Mother of Dragons, a determined royal exile of the Targaryen dynasty seeking to reclaim her family\'s throne in Westeros.', '22', 'Dragon riding, Fire resistance, Charismatic leadership, Multilingualism, Strategic conquest', '2026-04-18 16:37:30'),
(17, 'Optimus Prime', 'assets/images/characters/optimusprime.jpg', 'The noble, wise, and compassionate leader of the Autobots, dedicated to protecting all sentient life across the universe from the evil Decepticons.', 'Millions of years old', 'Transformation (Semi-truck), Superhuman strength, Master tactician, Energy weaponry combat, Inspiring leadership', '2026-04-18 16:40:20'),
(18, 'Big P', 'assets/images/characters/pennywise.jpg', 'An ancient, shape-shifting cosmic evil that awakens every 27 years to prey upon the children of Derry, Maine, typically manifesting as a dancing clown.', 'Billions of years old', 'Shapeshifting, Reality warping, Fear manipulation, Illusion casting, Telepathy', '2026-04-18 16:43:18'),
(19, 'Triple T', 'assets/images/characters/triplet.jpg', 'A chaotic manifestation of pure 3 AM internet brainrot, this deep-fried entity exists solely to shatter eardrums with max-volume, bass-boosted nonsense and absolutely destroy your sleep schedule.', 'Unknown (Brainrot Entity)', 'Deep-fried audio projection, Aura stealing, Brain cell depletion, Bass-boosted shockwaves, Negative rizz generation', '2026-04-18 16:47:02'),
(20, 'Satoru Gojo', 'assets/images/characters/satorugojo.jpg', 'A special grade jujutsu sorcerer, widely recognized as the strongest in the world, who casually protects humanity while teaching the next generation at Tokyo Jujutsu High.', '28', 'Limitless cursed technique, Six Eyes, Domain Expansion (Unlimited Void), Hollow Purple, Master hand-to-hand combat', '2026-04-18 16:50:33'),
(21, 'Guy sItting on a chair', 'assets/images/characters/fangyuan.jpg', 'A completely ruthless and pragmatic Gu Master who will resort to absolutely any means necessary, including demonic paths, to achieve his singular goal of true eternal life.', '500+ (Mental age)', 'Gu manipulation, Mastermind-level intellect, Unshakeable willpower, Time travel (via Spring Autumn Cicada), Ruthless pragmatism', '2026-04-18 16:53:24'),
(22, 'Rohan Kishibe', 'assets/images/characters/rohankishibe.jpg', 'A highly skilled, eccentric, and somewhat arrogant mangaka living in Morioh, dedicated to seeking out \"reality\" above all else to use as inspiration for his hit manga.', '20', 'Heaven\'s Door Stand (Reading and rewriting people like books), Superhuman drawing speed, Artistic genius, Incredible observational skills', '2026-04-18 16:55:53'),
(23, 'Rick Grimes', 'assets/images/characters/rickgrimes.jpg', 'A former sheriff\'s deputy who awakens from a coma to find the world overrun by zombies, eventually becoming the hardened and fiercely protective leader of a group of survivors.', '40', 'Expert marksman, Hand-to-hand combat, Tactical leadership, Survival skills, Indomitable willpower', '2026-04-18 16:58:30'),
(24, 'Percy Jackson', 'assets/images/characters/percyjackson.jpg', 'A troubled teen who discovers he is a demigod—the son of Poseidon—and is thrust into a hidden world of Greek monsters and gods, where he must embark on quests to save Olympus.', '16 (By the end of the original series)', 'Hydrokinesis (water manipulation), Water-based healing, Underwater breathing, Master swordsmanship (Riptide), Enhanced battle reflexes', '2026-04-18 17:02:12'),
(25, 'Michael Scofield', 'assets/images/characters/michaelscofield.jpg', 'A brilliant structural engineer who intentionally gets himself incarcerated in a maximum-security prison to execute a meticulously tattooed escape plan and save his innocent brother from death row.', '31', 'Genius-level intellect, Structural engineering, Mastermind strategic planning, Low latent inhibition, Manipulation', '2026-04-18 17:04:14'),
(26, 'Cristiano Ronaldo', 'assets/images/characters/cristianoronaldo.jpg', 'The greatest football players in history, known for his relentless work ethic, incredible goal-scoring records, and unparalleled athleticism on the pitch.', '41', 'Elite goal scoring, Superhuman athleticism, Free-kick mastery, Header specialist, High-pressure performance', '2026-04-18 17:07:57'),
(27, 'Batman', 'assets/images/characters/batman.jpg', 'A billionaire vigilante who, after witnessing his parents\' murder, trained himself to the absolute peak of physical and intellectual perfection to wage a one-man war on crime in Gotham City.', '40', 'Genius-level intellect, Master martial artist, World\'s greatest detective, Stealth mastery, Advanced gadgetry application', '2026-04-18 17:10:33'),
(28, 'Rust Cohle', 'assets/images/characters/rustcohle.jpg', 'A highly intelligent but deeply cynical and philosophical homicide detective whose obsessive, pessimistic nature drives him to solve a decades-spanning, ritualistic serial killer case.', '48', 'Master detective, Psychological profiling, Interrogation tactics, Eidetic memory, Undercover infiltration', '2026-04-18 17:13:26'),
(29, 'Mordret', 'assets/images/characters/mordret.jpg', 'Known as the Prince of Nothing, he is a dangerously cunning, terrifyingly patient, and ruthless Divine Aspect wielder who was imprisoned by his own lineage and will use anyone to achieve his revenge.', 'Early 20s', 'Reflection manipulation, Body possession, Soul combat, Master manipulator, Tactical genius', '2026-04-18 17:17:56'),
(30, 'Lightning McQueen', 'assets/images/characters/lightningmcqueen.jpg', 'A hotshot racing car who learns the true meaning of friendship, humility, and sportsmanship after getting stranded in the forgotten town of Radiator Springs.', 'Adult (Car)', 'Extreme speed, Precision driving, Drifting, Drafting, Piston Cup Champion', '2026-04-18 17:27:13'),
(31, 'John Cena', 'assets/images/characters/johncena.jpg', 'A legendary professional wrestler, actor, and pop culture icon, famous for his \"Hustle, Loyalty, Respect\" mantra and his supposedly being completely invisible.', '48', 'Superhuman strength, Attitude Adjustment (finisher), Invisibility (\"You can\'t see me\"), STF submission, Masterful promo skills', '2026-04-18 17:28:54'),
(32, 'Randy Orton', 'assets/images/characters/randyorton.jpg', 'A ruthless, calculating third-generation professional wrestler known as \"The Viper\" and \"The Apex Predator\" for his vicious and sudden attacks in the ring.', '46', 'RKO (out of nowhere), Punt kick, Ring psychology, Tactical striking, High pain tolerance', '2026-04-18 17:31:31'),
(33, 'FlightReacts', 'assets/images/characters/flightreacts.jpg', 'A highly energetic live streamer and YouTuber, famous for his iconic dolphin laugh, exaggerated basketball reactions, and intensely passionate gaming rage moments.', '30', 'Dolphin laugh, Extreme hype generation, Controller destruction, Unpredictable basketball takes, Infinite streaming stamina', '2026-04-18 17:33:53'),
(34, 'Dante', 'assets/images/characters/dante.jpg', 'A legendary, wisecracking demon hunter and private investigator. As a half-human, half-demon, he uses his immense power and stylish combat skills to protect the human world from demonic threats.', '40s', 'Devil Trigger transformation, Master swordsmanship (Rebellion), Expert dual-wielding marksmanship (Ebony & Ivory), Superhuman regeneration, Demonic strength', '2026-04-18 17:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `monuments`
--

CREATE TABLE `monuments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'assets/images/placeholder.jpg',
  `description` text NOT NULL,
  `location` varchar(200) NOT NULL,
  `historical_significance` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monuments`
--

INSERT INTO `monuments` (`id`, `name`, `image`, `description`, `location`, `historical_significance`, `created_at`) VALUES
(1, 'Taj Mahal', 'assets/images/monuments/tajmahal.jpg', 'An ivory-white marble mausoleum on the right bank of the river Yamuna, built by Mughal Emperor Shah Jahan.', 'Agra, India', 'Built to house the tomb of Shah Jahan\'s favorite wife, Mumtaz Mahal; a universal symbol of love and Mughal architecture.', '2026-04-19 16:15:31'),
(2, 'Great Wall of China', 'assets/images/monuments/greatwall.jpg', 'A series of fortifications built across the historical northern borders of ancient Chinese states and Imperial China.', 'Northern China', 'Constructed to protect against various nomadic groups from the Eurasian Steppe; represents millennia of Chinese history.', '2026-04-19 16:15:31'),
(3, 'Eiffel Tower', 'assets/images/monuments/eiffeltower.jpg', 'A wrought-iron lattice tower on the Champ de Mars, named after the engineer Gustave Eiffel.', 'Paris, France', 'Constructed as the centerpiece of the 1889 World\'s Fair; it has become a global cultural icon of France.', '2026-04-19 16:15:31'),
(4, 'Colosseum', 'assets/images/monuments/colosseum.jpg', 'An oval amphitheatre in the centre of the city of Rome, the largest ancient amphitheatre ever built.', 'Rome, Italy', 'Hosted gladiatorial contests and public spectacles; a symbol of the Roman Empire and its architectural prowess.', '2026-04-19 16:15:31'),
(5, 'Machu Picchu', 'assets/images/monuments/machupicchu.jpg', 'A 15th-century Inca citadel situated on a mountain ridge above the Sacred Valley.', 'Cusco Region, Peru', 'Believed to be an estate for the Inca emperor Pachacuti; the most familiar icon of Inca civilization.', '2026-04-19 16:15:31'),
(6, 'Statue of Liberty', 'assets/images/monuments/statueofliberty.jpg', 'A colossal neoclassical sculpture on Liberty Island in New York Harbor, a gift from the people of France.', 'New York, USA', 'A symbol of freedom and democracy; served as a welcoming sight to immigrants arriving by sea.', '2026-04-19 16:15:31'),
(7, 'Pyramids of Giza', 'assets/images/monuments/pyramids.jpg', 'Ancient pyramid structures, including the Great Pyramid, the oldest of the Seven Wonders of the Ancient World.', 'Giza, Egypt', 'Built as monumental tombs for pharaohs; reflects the Egyptian belief in the afterlife and their engineering mastery.', '2026-04-19 16:15:31'),
(8, 'Stonehenge', 'assets/images/monuments/stonehenge.jpg', 'A prehistoric monument consisting of a ring of standing stones, each around 13 feet high and weighing 25 tons.', 'Wiltshire, England', 'A marvel of prehistoric engineering whose exact purpose remains a mystery, though likely tied to astronomical observation and religious rituals.', '2026-04-19 16:15:31'),
(9, 'Mount Rushmore', 'assets/images/monuments/mountrushmore.jpg', 'A massive sculpture carved into the granite face of Mount Rushmore, featuring four US presidents.', 'South Dakota, USA', 'Depicts Washington, Jefferson, Roosevelt, and Lincoln; represents the nation\'s birth, growth, development, and preservation.', '2026-04-19 16:15:31'),
(10, 'Petra', 'assets/images/monuments/petra.jpg', 'A historical and archaeological city famous for its rock-cut architecture and water conduit system.', 'Ma\'an, Jordan', 'The capital of the Nabataean Kingdom; a major regional trading hub in antiquity, demonstrating incredible rock-carving techniques.', '2026-04-19 16:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'assets/images/placeholder.jpg',
  `description` text NOT NULL,
  `location` varchar(200) NOT NULL,
  `climate` varchar(120) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `image`, `description`, `location`, `climate`, `created_at`) VALUES
(1, 'Grand Canyon', 'assets/images/places/grandcanyon.jpg', 'A massive, spectacular canyon carved by the Colorado River, exposing millions of years of geological history.', 'Arizona, USA', 'Arid / Semi-arid', '2026-04-19 16:15:31'),
(2, 'Mount Everest', 'assets/images/places/mounteverest.jpg', 'Earth\'s highest mountain above sea level, located in the Mahalangur Himal sub-range of the Himalayas.', 'Nepal/China Border', 'Alpine / Extreme Cold', '2026-04-19 16:15:31'),
(3, 'Great Barrier Reef', 'assets/images/places/greatbarrierreef.jpg', 'The world\'s largest coral reef system composed of over 2,900 individual reefs and 900 islands.', 'Queensland, Australia', 'Tropical', '2026-04-19 16:15:31'),
(4, 'Amazon Rainforest', 'assets/images/places/amazonrainforest.jpg', 'A moist broadleaf tropical rainforest in the Amazon biome that covers most of the Amazon basin of South America.', 'South America', 'Tropical Rainforest', '2026-04-19 16:15:31'),
(5, 'Sahara Desert', 'assets/images/places/saharadesert.jpg', 'The largest hot desert in the world, comprising much of North Africa with sweeping sand dunes and rocky plateaus.', 'North Africa', 'Arid / Desert', '2026-04-19 16:15:31'),
(6, 'Santorini', 'assets/images/places/santorini.jpg', 'An island in the southern Aegean Sea, famous for its dramatic views, stunning sunsets, and iconic white-washed houses.', 'Aegean Sea, Greece', 'Mediterranean', '2026-04-19 16:15:31'),
(7, 'Mariana Trench', 'assets/images/places/marianatrench.jpg', 'The deepest oceanic trench on Earth, a crescent-shaped scar in the Earth\'s crust located in the western Pacific Ocean.', 'Western Pacific Ocean', 'Deep Ocean / Freezing', '2026-04-19 16:15:31'),
(8, 'Yellowstone National Park', 'assets/images/places/yellowstone.jpg', 'A nearly 3,500-sq-mile wilderness recreation area atop a volcanic hot spot, featuring dramatic canyons and geysers.', 'Wyoming, USA', 'Continental / Alpine', '2026-04-19 16:15:31'),
(9, 'Galapagos Islands', 'assets/images/places/galapagosislands.jpg', 'A volcanic archipelago in the Pacific Ocean, considered one of the world\'s foremost destinations for wildlife-viewing.', 'Pacific Ocean, Ecuador', 'Tropical / Oceanic', '2026-04-19 16:15:31'),
(10, 'Banff National Park', 'assets/images/places/banff.jpg', 'Canada\'s oldest national park, encompassing mountainous terrain, numerous glaciers, dense coniferous forest, and alpine landscapes.', 'Alberta, Canada', 'Subarctic / Alpine', '2026-04-19 16:15:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monuments`
--
ALTER TABLE `monuments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `monuments`
--
ALTER TABLE `monuments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
