-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2017 at 07:21 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dailyshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(1, 'a@b.com', '123'),
(2, 'asad@gmail.com', '123'),
(3, 'c@d.com', '123'),
(4, 'e@b.com', '123'),
(5, 'a@f.com', '123'),
(6, 'g@h.com', '123'),
(7, 'i@j.com', '123'),
(8, 'k@l.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'DELL'),
(3, 'LENOVO'),
(4, 'Sony'),
(5, 'Nintendo'),
(6, 'Samsung'),
(7, 'Asus'),
(8, 'Apple'),
(9, 'Huawei'),
(10, 'NOKIA'),
(11, 'NIKON'),
(12, 'Play Station'),
(13, 'Xbox');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(11) DEFAULT NULL,
  `ip_add` varchar(16) DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`) VALUES
(1, 'Men'),
(2, 'Women'),
(3, 'Kids'),
(4, 'Home & Living'),
(5, 'Electronic Appliances'),
(6, 'Beauty');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_ip` varchar(100) DEFAULT NULL,
  `customer_fname` text NOT NULL,
  `customer_lname` text,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `customer_country` text,
  `customer_city` text,
  `Address` varchar(255) NOT NULL,
  `customer_contact` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_fname`, `customer_lname`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `Address`, `customer_contact`) VALUES
(1, '::1', 'Mohammad', 'Uzair', 'mohduzair9@gmail.com', 'asd', 'Pakistan', 'Karachi', '', '03135284998'),
(2, '::1', 'Asad', 'Ali', 'asadali@gmail.com', 'asad', 'Pakistan', 'Layyah', 'House #13, Street #7, Housing Colony', '03025855267'),
(3, '1', 'Mujeeb', 'Ur Rehman', 'mrehman.bscs15seecs@seecs.edu.pk', '15bscsmrehman', 'Pakistan', 'Islamabad', 'H-12', '7777-7777777'),
(4, '2', 'Muhammad', ' Asad Ali', 'mali@seecs.edu.pk', '15bscsmali', 'Pakistan', 'Islamabad', 'H-11', '0012-3456789'),
(5, '6', 'Mohammad', 'Uzair', 'muzair.bscs15seecs@seecs.edu.pk', '15bscsmuzair', 'Pakistan', 'Islamabad', 'H-12', NULL),
(6, '10', 'Hafiz', ' Muhammad Uzair', 'hmuzair.bscs15seecs@seecs.edu.pk', '15bscshmuzair', 'Pakistan', 'Islamabad', 'H-12', '1234-5678910'),
(7, '16', 'Isha', 'Shafique', 'ishafique.bscs15seecs@seecs.edu.pk', '15bscsishafique', 'Pakistan', 'Islamabad', 'H-12', NULL),
(8, '12', 'Mueed', 'Ur Rehman', 'murehman.bscs15seecs@seecs.edu.pk', '15bscsmurehman', 'Pakistan', 'Islamabad', 'H-12', '9999-9999999'),
(9, '17', 'Abdullah', 'Rashid', 'arashid.bscs15seecs@seecs.edu.pk', '15bscsarashid', 'Pakistan', 'Islamabad', 'H-12', NULL),
(10, '19', 'Huzaifah', 'Saleem', 'hsaleem.bscs15seecs@seecs.edu.pk', '15bscshsaleem', 'Pakistan', 'Islamabad', 'H-12', '4512-6216453'),
(11, '25', 'Syed Ajwad', 'Ud Din', 'sdin.bscs15seecs@seecs.edu.pk', '15bscssdin', 'Pakistan', 'Islamabad', 'H-12', '2575-7525725'),
(12, '75', 'Maheen', 'Jamil', 'mjamil.bscs15seecs@seecs.edu.pk', '15bscsmjamil', 'Pakistan', 'Islamabad', 'H-12', '7525-2575275');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `p_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `p_id`, `c_id`, `qty`) VALUES
(1, 11, 2, 1),
(2, 5, 2, 1),
(3, 12, 2, 1),
(4, 8, 2, 1),
(5, 4, 5, 3),
(6, 2, 4, 3),
(7, 8, 6, 1),
(8, 1, 7, 1),
(9, 3, 8, 2),
(10, 5, 9, 4),
(11, 3, 1, 5),
(12, 1, 1, 1),
(13, 9, 1, 1),
(14, 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount`, `customer_id`, `product_id`, `payment_date`) VALUES
(1, 1330, 2, 7, '2017-01-17 01:30:44'),
(2, 360, 2, 5, '2017-01-17 01:33:20'),
(3, 490, 2, 10, '2017-01-17 01:33:20'),
(4, 460, 2, 12, '2017-01-17 01:34:32'),
(5, 800, 2, 8, '2017-01-17 01:35:13'),
(6, 1330, 2, 7, '2017-01-17 01:37:30'),
(7, 360, 1, 5, '2017-01-17 01:37:30'),
(8, 490, 2, 5, '2017-01-17 01:37:30'),
(9, 460, 4, 5, '2017-01-17 01:37:30'),
(10, 800, 7, 5, '2017-01-17 01:37:30'),
(11, 460, 1, 5, '2017-01-17 01:37:30'),
(12, 360, 3, 5, '2017-01-17 01:37:30'),
(13, 800, 5, 5, '2017-01-17 01:37:30'),
(14, 4460, 8, 5, '2017-01-17 01:37:30'),
(15, 360, 9, 5, '2017-01-17 01:37:30'),
(16, 1190, 1, 3, '2017-01-17 06:37:43'),
(17, 360, 1, 5, '2017-01-17 06:37:43'),
(18, 890, 1, 2, '2017-01-17 06:37:43'),
(19, 4460, 1, 1, '2017-01-17 08:32:10'),
(20, 910, 1, 9, '2017-01-18 11:28:17'),
(21, 490, 1, 10, '2017-05-29 18:07:02'),
(22, 800, 1, 8, '2017-05-29 18:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `electronics`
--

CREATE TABLE `electronics` (
  `product_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `product_title` text NOT NULL,
  `product_img1` text,
  `product_img2` text,
  `product_img3` text,
  `price` int(11) NOT NULL,
  `product_desc` text,
  `status` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `electronics` (`product_id`, `cat_id`, `brand_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `price`, `product_desc`, `status`) VALUES
(1, 5, 11, '2017-01-16 22:14:24', 'Nikon D3300 1532 18-55mm f/3.5-5.6G VR II', '81aLEVAFXnL._SL1500_.jpg', '', '', 4460, '24.2 MP CMOS DX-format sensor\r\n5 frames per second continuous shooting\r\n11 AF points with 3D tracking\r\nISO 100-12800 (expandable to 25600)\r\n1080 (60, 50, 30, 25, 24 fps) HD video (MPEG-4/H.264/MOV)\r\n3 inch LCD with 921,000 dots\r\nExpeed 4 processing', 'on'),
(4, 3, 5, '2017-01-16 22:29:29', 'Wii Uâ„¢ GamePad', 'Wii-U.jpg', '', '', 340, 'The Wii U GamePad controller removes the traditional barriers between games, players and the TV by creating a second window into the video game world.\r\n\r\nIt also offers a new way for viewers to engage with their favorite entertainment. The GamePad incorporates a 6.2-inch, 16:9 aspect ratio LCD touch screen, as well as traditional button controls and two analog sticks. Inputs include a +Control Pad, L/R sticks, L/R stick buttons, A/B/X/Y buttons, L/R buttons, ZL/ZR buttons, Power button, HOME button, -/SELECT button, +/START button, and TV CONTROL button.\r\n\r\nThe GamePad also includes motion control (powered by an accelerometer, gyroscope and geomagnetic sensor), a front-facing camera, a microphone, stereo speakers, rumble features, a sensor bar, an included stylus and support for Near Field Communication (NFC) functionality.', 'on'),
(2, 5, 4, '2017-01-16 22:16:34', 'Sony DSCW800/B 20.1 MP Digital Camera', '61SY905+enL._SL1200_.jpg', '', '', 890, 'MP Super HAD CCD sensor for beautifully detailed images\r\nSony Lens w/ 5x Optical Zoom\r\nReduced blur with SteadyShot Image stabilization\r\nCapture your videos in 720p HD Movie mode\r\nSimplify camera menu with Easy Mode.\r\nSuper HAD CCD 20.1 MP sensor\r\nSony Lens with F3.2 (W) â€“ 6.4 (T) Maximum Aperture', 'on'),
(3, 5, 4, '2017-01-16 22:18:13', 'Nikon COOLPIX L32 Digital Camera', '51tpjvrtztL.jpg', '', '', 1190, '5x wide-angle NIKKOR zoom lens\r\nLarge 3.0-inch LCD\r\n720p HD video with sound\r\nSmart Portrait System\r\nRuns on regular AA batteries', 'on'),
(5, 3, 13, '2017-01-16 22:30:36', 'Xbox 360 250GB', 'Xbox360-250GB.jpg', '', '', 360, 'Xbox 360 brings you a total games and entertainment experience. The largest library of games , including titles that get you right into the thick of it with Kinect. Plus, your whole family can watch HD movies, TV shows, live events, music, sports and moreâ€”across all your devices 5. Xbox 360 is the center of your games and entertainment universe.', 'on'),
(6, 3, 12, '2017-01-16 22:31:43', 'Sony PlayStation 4 1TB UK Black', 'Sony-Playstation-4.jpg', '', '', 450, 'The PS4â„¢ system focuses on the gamer, ensuring that the very best games and the most immersive experiences are possible on the platform. The PS4â„¢ system enables the greatest game developers in the world to unlock their creativity and push the boundaries of play through a system that is tuned specifically to their needs. The PS4â„¢ system is centered around a powerful custom chip that contains eight x86-64 cores and a state of the art 1.84 TFLOPS graphics processor with 8 GB of ultra-fast GDDR5 unified system memory, easing game creation and increasing the richness of content achievable on the platform. The end result is new games with rich, high-fidelity graphics and deeply immersive experiences', 'on'),
(7, 1, 3, '2017-01-16 22:34:28', 'Lenovo Yoga 900 13 Core i7-6500U 256GB 8GB QHD', 'Yoga-900-13.jpg', '', '', 1330, 'Specifications\r\n\r\nProcessor\r\n6th Generation IntelÂ® Coreâ„¢ i7-6500U (2.5GHz Turbo Boost 3.1GHz, 4MB Cache)\r\nDisplay\r\n13.3" Quad HD+ IPS, 300 nits x360 Convertible Touch (3200 x 1800)\r\nStorage\r\n256GB SSD SATA\r\nRam\r\n8GB DDR3L\r\nOperating System\r\nGenuine Windows 10 Home (64-bit)\r\nGraphics Card\r\nIntel HD 520 Shared\r\nExtra Features\r\nTouch Screen, QHD', 'on'),
(8, 1, 2, '2017-01-16 22:36:04', 'Dell Inspiron 13 Convertible Core i7-6500U FHD Touch', 'Inspiron-13-7353.jpg', '', '', 800, 'Specifications\r\n\r\nProcessor\r\n6th Generation IntelÂ® Coreâ„¢ i7-6500U (2.5GHz Turbo Boost upto 3.1GHz)\r\nDisplay\r\n13.3" Full HD LED x360 Convertible Touch Screen (1920x1080)\r\nStorage\r\n256GB 5400rpm SSD SATA\r\nRam\r\n8GB DDR3L\r\nOperating System\r\nGenuine Windows 10 (64-bit)\r\nGraphics Card\r\nIntel HD 520 Shared\r\nExtra Features\r\nTouch Screen, FHD', 'on'),
(9, 1, 1, '2017-01-16 22:36:54', 'HP Probook 440 G3 Core i7-6500U 1TB 8GB 2GB-GC ', 'Probook-440-G3.jpg', '', '', 910, 'Specifications\r\n\r\nProcessor\r\n6th Generation IntelÂ® Coreâ„¢ i7-6500U (2.5 GHz Turbo Boost 3.1 GHz)\r\nDisplay\r\n14" diagonal HD anti-glare flat LED-backlite (1366 x 768)\r\nStorage\r\n1 TB 5400 rpm SATA\r\nRam\r\n8 GB DDR3L\r\nOperating System\r\nFreeDOS 2.0\r\nGraphics Card\r\nAMD Radeonâ„¢ R7 M340 ( 2 GB DDR3 dedicated, switchable)\r\nExtra Features\r\nFinger Print Reader', 'on'),
(10, 2, 6, '2017-01-16 22:47:49', 'Samsung 32J5100 32" Full HD Flat LED', '32J5100.jpg', '', '', 490, 'More vibrant colours for better images\r\nBringing a full multimedia experience into your living room with HDMI\r\nWatch movies from your USB', 'on'),
(11, 2, 4, '2017-01-16 22:48:35', 'Sony Bravia 40" KDL-R562C LED', 'KDL-R562C.jpg', '', '', 690, 'Connect with great entertainment with Built-in Wi-FiÂ®\r\nClear Resolution Enhancer\r\nMotion flow XR 100hz\r\nFlatter any living space with beautiful styling and class-leading slimness.\r\nYouTubeâ„¢ and more', 'on'),
(12, 1, 2, '2017-01-17 00:48:23', 'Dell 3521', 'Inspiron-13-7353.jpg', '', '', 460, 'abc', 'on'),
(13, 3, 10, '2017-01-17 06:41:03', 'gaskjd', 'space_painting-wallpaper-1366x768.jpg', '', '', 32432, 'sadsa', 'on');

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `product_title` text NOT NULL,
  `product_img1` text,
  `product_img2` text,
  `product_img3` text,
  `price` int(11) NOT NULL,
  `product_desc` text,
  `status` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `brand_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `price`, `product_desc`, `status`) VALUES
(1, 5, 1, '2023-12-22 22:29:29', 'SWEATSHIRT', '2.jpg', '', '', 849, 'Blue solid sweatshirt, has a hood, long sleeves, 2 kangaroo pocket, ribbed hem', 'on'),
(2, 3, 2, '2023-12-22 22:29:29', 'BELT', 'BELT.jpg', '', '', 499, 'Brown solid leather belt, Secured with a tang closure', 'on'),
(3, 2, 5, '2023-12-22 22:29:29', 'RYTRAS', '24.jpg', '', '', 469, '100% rayon, Western, 3/4 Sleeves, Mandarin Neck, Crop', 'on'),
(4, 2, 6, '2023-12-22 22:29:29', 'SMARTY PANTS', '29.jpg', '', '', 755, '100% Cotton,Ankle Length, Classis Style, Pull On Closure', 'on'),
(5, 5, 12, '2017-01-16 22:47:49', 'Samsung 32J5100 32" Full HD Flat LED', '32J5100.jpg', '', '', 490, 'More vibrant colours for better images\r\nBringing a full multimedia experience into your living room with HDMI\r\nWatch movies from your USB', 'on'),
(6, 3, 1, '2023-12-22 22:29:29', 'JACK & JONES JACKET', 'jacket-4.jpg', '', '', 2380, 'solid jacket, has a spread collar, 4 pockets, button closures, long sleeves, straight hem', 'on'),
(7, 2, 8, '2023-12-22 22:29:29', 'PUMA SHOES', '41.jpg', '', '', 1569, 'Textile, Lace-Up Closure, Flat Heel, Rubber, Running Shoes ', 'on'),
(8, 3, 9, '2023-12-22 22:29:29', 'BUMZEE KIDS', '46.jpg', '', '', 791, '100% Cotton, Regular Jacket, Standard Length, Solid Pattern', 'on'),
(9, 3, 10, '2023-12-22 22:29:29', 'FRANTIC KIDS', '52.jpg', '', '', 3199, 'washable felt velvet, Light weight , two adjustable shoulder straps ,top handle fit small children ', 'on'),
(10, 5, 11, '2017-01-16 22:34:28', 'Lenovo Yoga 900 13 Core i7-6500U 256GB 8GB QHD', 'Yoga-900-13.jpg', '', '', 1330, 'Specifications\r\n\r\nProcessor\r\n6th Generation IntelÂ® Coreâ„¢ i7-6500U (2.5GHz Turbo Boost 3.1GHz, 4MB Cache)\r\nDisplay\r\n13.3" Quad HD+ IPS, 300 nits x360 Convertible Touch (3200 x 1800)\r\nStorage\r\n256GB SSD SATA\r\nRam\r\n8GB DDR3L\r\nOperating System\r\nGenuine Windows 10 Home (64-bit)\r\nGraphics Card\r\nIntel HD 520 Shared\r\nExtra Features\r\nTouch Screen, QHD', 'on'),
(11, 1, 1, '2023-12-22 22:29:29', 'DENIS LINGO SHIRT', 'shirt-1.jpg', '', '', 699, 'checks checked opaque casual shirt ,has a spread collar, button placket, 2 flap pocket, long regular sleeves, curved hem', 'on'),
(12, 3, 10, '2023-12-22 22:29:29', 'TAGAS ', '57.jpg', '', '', 452, 'Mario Rib Material, Knee-Length, Checkered Pattern, Boat Neck, A-line Style', 'on'),
(13, 4, 5, '2023-12-22 22:29:29', 'HOME DECOR METAL WALLART', 'meatlwall.jpeg', '', '', 5499, 'Size of complete set-52x28x3 inches. Weight -5.00kg made in heavy sheet 23 gauge. Material- Iron alloy. Powder coated rust free item. Color-natural multicolor. Finish-Chrome. Design- Antique. Clean with Dry and Wet Cloth.', 'on'),
(14, 3, 3, '2023-12-22 22:29:29', 'HIGHLANDER', 'shoe-4.jpg', '', '', 999, 'Synthetic Leather upper, Cushioned footbed', 'on'),
(15, 5, 12, '2017-01-16 22:48:35', 'Sony Bravia 40" KDL-R562C LED', 'KDL-R562C.jpg', '', '', 690, 'Connect with great entertainment with Built-in Wi-FiÂ®\r\nClear Resolution Enhancer\r\nMotion flow XR 100hz\r\nFlatter any living space with beautiful styling and class-leading slimness.\r\nYouTubeâ„¢ and more', 'on'),
(16, 3, 10, '2023-12-22 22:29:29', 'NIREN ', '58.jpg', '', '', 399, 'Modal Material,Knee-Length, Long Sleeve, All Over Print Pattern, A=Line Style', 'on'),
(17, 6, 21, '2023-12-22 22:29:29', 'MAYBELLINE', '64.jpg', '', '', 534, 'Witty Color,Liquid Form, High-Glossy Finish Type, WaterProof,Long Wearing ', 'on'),
(18, 3, 4, '2023-12-22 22:29:29', 'PUMA', 'sports-2.jpg', '', '', 2749, 'Solid , Central lace-up, Cushioned footbed', 'on'),
(19, 3, 9, '2023-12-22 22:29:29', 'TRIBE ', '61.jpg', '', '', 3999, 'Kids Bike, Matte Black & Yellow,Frame-Size:12 ', 'on'),
(20, 6, 21, '2023-12-22 22:29:29', 'HUDA GIRL', '68.webp', '', '', 400, '	Rose Gold + New Nude Edition, Matte,Natural, Powder Form', 'on'),
(21, 5, 13, '2017-01-16 22:14:24', 'Nikon D3300 1532 18-55mm f/3.5-5.6G VR II', '81aLEVAFXnL._SL1500_.jpg', '', '', 4460, '24.2 MP CMOS DX-format sensor\r\n5 frames per second continuous shooting\r\n11 AF points with 3D tracking\r\nISO 100-12800 (expandable to 25600)\r\n1080 (60, 50, 30, 25, 24 fps) HD video (MPEG-4/H.264/MOV)\r\n3 inch LCD with 921,000 dots\r\nExpeed 4 processing', 'on'),
(22, 6, 20, '2023-12-22 22:29:29', 'PARK AVENUE', '71.webp', '', '', 411, 'Spray Form, Volume: 100ml, Euphoria Scent,Long Lasting  ', 'on'),
(23, 4, 5, '2023-12-22 22:29:29', 'CUTE DEER SUCCLENT', '103.webp', '', '', 129, 'Ideal and Unique Gift: Adorable animal planter is good gift choice for kids, , friends, parents, clients, schoolmates or colleague for any occasion or festival.', 'on'),
(24, 5, 13, '2017-01-16 22:18:13', 'Nikon COOLPIX L32 Digital Camera', '51tpjvrtztL.jpg', '', '', 1190, '5x wide-angle NIKKOR zoom lens\r\nLarge 3.0-inch LCD\r\n720p HD video with sound\r\nSmart Portrait System\r\nRuns on regular AA batteries', 'on'),
(25, 4, 6, '2023-12-22 22:29:29', 'HANGING LED STREET LIGHT', '109.jpg', '', '', 451, 'CREATE A SUNNY AMBIANCE WITH YELLOW FAIRY LIGHTS: Yellow fairy lights are a customer favorite for a reason - they add warmth and happiness to any space. Use our USB-powered fairy string lights to create a cozy and welcoming atmosphere in your bedroom or living room.', 'on'),
(26, 4, 5, '2023-12-22 22:29:29', 'LED TREE LAMP', '105.jpg', '', '', 899, 'Bonsai tree lamp design with 36 Pearl LED lights,20in high, handmade, adjustable branches easily to bend it into your desired shape , making it an ideal natural tree.', 'on'),
(27, 4, 8, '2023-12-22 22:29:29', 'PLUSH FLOWER PILLOW', '117.jpg', '', '', 399, 'This super soft flower shaped floor pillow mat is very fresh and cute. There are a total of 8 colors for you to choose from. There are sunflower cushions and daisy cushions in various colors. The colors are bright and it feels very exciting and comfortable.', 'on');

--
-- Table structure for table `men`
--

CREATE TABLE `men` (
  `product_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `product_title` text NOT NULL,
  `product_img1` text,
  `product_img2` text,
  `product_img3` text,
  `price` int(11) NOT NULL,
  `product_desc` text,
  `status` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `men`
--

INSERT INTO `men` (`product_id`, `cat_id`, `brand_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `price`, `product_desc`, `status`) VALUES
(1, 5, 1, '2023-12-22 22:29:29', 'SWEATSHIRT', '2.jpg', '', '', 849, 'Charcoal solid sweatshirt, has a hood, long sleeves, 2 kangaroo pocket, ribbed hem', 'on'),
(4, 3, 2, '2023-12-22 22:29:29', 'BELT', 'BELT.jpg', '', '', 499, 'Brown solid leather belt, Secured with a tang closure', 'on'),
(2, 5, 1, '2023-12-22 22:29:29', 'ALLEN SOLY JACKET', 'jacket-1.jpg', '', '', 890, 'solid jacket, has a spread collar, 4 pockets, button closures, long sleeves, straight hem', 'on'),
(3, 5, 1, '2023-12-22 22:29:29', 'CAMPUS SUTER JACKET', 'jacket-2.jpg', '', '', 1190, 'solid jacket, has a spread collar, 4 pockets, button closures, long sleeves, straight hem', 'on'),
(5, 3, 1, '2023-12-22 22:29:29', 'ROADSTER JACKET', 'jacket-3.jpg', '', '', 580, 'solid jacket, has a spread collar, 4 pockets, button closures, long sleeves, straight hem', 'on'),
(6, 3, 1, '2023-12-22 22:29:29', 'JACK & JONES JACKET', 'jacket-4.jpg', '', '', 2380, 'solid jacket, has a spread collar, 4 pockets, button closures, long sleeves, straight hem', 'on'),
(7, 1, 1, '2023-12-22 22:29:29', 'V-MART JACKET', 'jacket-5.jpg', '', '', 1000, 'solid jacket, has a spread collar, 4 pockets, button closures, long sleeves, straight hem', 'on'),
(8, 1, 1, '2023-12-22 22:29:29', 'ALLEN SOLY JACKET', 'jacket-6.jpg', '', '', 800, 'solid jacket, has a spread collar, 4 pockets, button closures, long sleeves, straight hem', 'on'),
(9, 1, 1, '2023-12-22 22:29:29', 'DENIS LINGO SHIRT', 'shirt-1.jpg', '', '', 699, 'checks checked opaque casual shirt ,has a spread collar, button placket, 2 flap pocket, long regular sleeves, curved hem', 'on'),
(10, 2, 1, '2023-12-22 22:29:29', 'KETCH SHIRT', 'shirt-2.jpg', '', '', 499, 'checks checked opaque casual shirt ,has a spread collar, button placket, 2 flap pocket, long regular sleeves, curved hem', 'on'),
(11, 2, 3, '2023-12-22 22:29:29', 'PARAGON SHOES', 'shoe-1.jpg', '', '', 690, 'Synthetic Leather upper, Cushioned footbed', 'on'),
(12, 1, 3, '2023-12-22 22:29:29', 'MACTREE', 'shoe-2.jpg', '', '', 860, 'Synthetic Leather upper, Cushioned footbed', 'on'),
(13, 3, 3, '2023-12-22 22:29:29', 'HIGHLANDER', 'shoe-3.jpg', '', '', 499, 'Synthetic Leather upper, Cushioned footbed', 'on'),
(14, 3, 3, '2023-12-22 22:29:29', 'HIGHLANDER', 'shoe-4.jpg', '', '', 999, 'Synthetic Leather upper, Cushioned footbed', 'on'),
(15, 1, 2, '2023-12-22 22:29:29', 'H&M', 'shorts-1.jpg', '', '', 649, 'solid mid-rise regular shorts, has 2 pockets, drawstring closure', 'on'),
(16, 1, 2, '2023-12-22 22:29:29', 'HRX', 'shorts-2.jpg', '', '', 405, 'solid mid-rise regular shorts, has 2 pockets, drawstring closure', 'on'),
(17, 3, 4, '2023-12-22 22:29:29', 'ADIDAS', 'sports-1.jpg', '', '', 1319, 'Solid , Central lace-up, Cushioned footbed', 'on'),
(18, 3, 4, '2023-12-22 22:29:29', 'PUMA', 'sports-2.jpg', '', '', 2749, 'Solid , Central lace-up, Cushioned footbed', 'on'),
(19, 3, 4, '2023-12-22 22:29:29', 'SPARX', 'sports-3.jpg', '', '', 879, 'Solid , Central lace-up, Cushioned footbed', 'on'),
(20, 3, 4, '2023-12-22 22:29:29', 'RED TAPE', 'sports-4.jpg', '', '', 1200, 'Solid , Central lace-up, Cushioned footbed', 'on'),
(21, 3, 4, '2023-12-22 22:29:29', 'CAMPUS', 'sports-5.jpg', '', '', 1099, 'Solid , Central lace-up, Cushioned footbed', 'on'),
(22, 3, 4, '2023-12-22 22:29:29', 'HRX', 'sports-6.jpg', '', '', 1299, 'Solid , Central lace-up, Cushioned footbed', 'on');

--
-- Table structure for table `women`
--

CREATE TABLE women (
  product_id int(11) NOT NULL,
  cat_id int(11) DEFAULT NULL,
  brand_id int(11) DEFAULT NULL,
  date timestamp NULL DEFAULT NULL,
  product_title text NOT NULL,
  product_img1 text,
  product_img2 text,
  product_img3 text,
  price int(11) NOT NULL,
  product_desc text,
  status text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `women`
--

INSERT INTO `women` (product_id, cat_id, brand_id, date, product_title, product_img1, product_img2, product_img3, price, product_desc, status) VALUES
(23, 2, 5, '2023-12-22 22:29:29', 'ZUVINO', '23.jpg', '', '', 499, '95% Polyster+5% Spandex, Stretchable, Puff Sleeves, Collarless, Short Length', 'on'),
(24, 2, 5, '2023-12-22 22:29:29', 'RYTRAS', '24.jpg', '', '', 469, '100% rayon, Western, 3/4 Sleeves, Mandarin Neck, Crop', 'on'),
(25, 2, 5, '2023-12-22 22:29:29', 'JANASYA', '25.jpg', '', '', 439, 'Pure Cotton,Floral pattern ,Regular Fit,3/4 Sleeve, Mandarin Collar,Knee Length', 'on'),
(26, 2, 5, '2023-12-22 22:29:29', 'ISTYLE CAN', '26.jpg', '', '', 355, '90% Lycra +10% Polyster,Solid Pattern,regular Fit,Short Sleeve,High Neck,Western', 'on'),
(27, 2, 5, '2023-12-22 22:29:29', 'SWAYSH', '27.jpg', '', '', 999, '100% Georgette, Maxi Length,Solid Pattern, Regular Fit', 'on'),
(28, 2, 5, '2023-12-22 22:29:29', 'FIBREZA', '28.jpg', '', '', 799, '100% Georgette, Maxi Length, Party Wear, Short Sleeve, Solid Pattern, A-line Style', 'on'),
(29, 2, 6, '2023-12-22 22:29:29', 'SMARTY PANTS', '29.jpg', '', '', 755, '100% Cotton,Ankle Length, Classis Style, Pull On Closure', 'on'),
(30, 2, 6, '2023-12-22 22:29:29', 'MEHRANG', '30.jpg', '', '', 340, '100% Cotton Blend, Full Length, Casual Trousers Style, Elastic,Dry Clean Only', 'on'),
(31, 2, 6, '2023-12-22 22:29:29', 'GENERIC', '31.jpg', '', '', 1451, '100% Cotton, Pants Style, Elastic Closure, Relaxed Fit', 'on'),
(32, 2, 6, '2023-12-22 22:29:29', 'BLINKIN', '32.jpg', '', '', 449, '100% Polyster Blend,Long Length, Flared Pants,Pull on Closure', 'on'),
(33, 2, 6, '2023-12-22 22:29:29', 'SYMBOL STORE', '33.jpg', '', '', 727, '100% Cotton Blend, Ankle Length, 702 Pocket, Ziper', 'on'),
(34, 2, 7, '2023-12-22 22:29:29', 'DRUNKEN', '34.jpg', '', '', 1739, 'Ethylene Vinyl Acetate,Flip Flop Style,Slip on Closure,Flat Heel', 'on'),
(35, 2, 7, '2023-12-22 22:29:29', 'XE LOOKS', '35.jpg', '', '', 598, 'Faux Leather, Pull On Closure, Block Heel, Fashion Sandal Style', 'on'),
(36, 2, 7, '2023-12-22 22:29:29', 'SUKART', '36.jpg', '', '', 333, 'Rubber+Faux Leather, Slip On Closure, Flat Heel, Fashion Sandal Style', 'on'),
(37, 2, 7, '2023-12-22 22:29:29', 'VENDOZ', '37.jpg', '', '', 429, 'Synthetic Material, Hook & Loop Closure, Flat Heel, Fisherman Style, Single Strap', 'on'),
(38, 2, 7, '2023-12-22 22:29:29', 'XJARVIS', '38.jpg', '', '', 149, '72% Cotton, 20% Polyester, 5% Nylon, 3% Elastane, Ankle Length,  Do Not Bleach', 'on'),
(39, 2, 8, '2023-12-22 22:29:29', 'OYSTERS', '39.jpg', '', '', 499, 'NS LYCRA, Regular Shorts Style, Above Knee Length, Athletic Fit ', 'on'),
(40, 2, 8, '2023-12-22 22:29:29', 'PUMA', '40.jpg', '', '', 699, ' Main Material 1: 95% cotton, 5% elastane - single jersey, Short Length, Skinny Shorts   ', 'on'),
(41, 2, 8, '2023-12-22 22:29:29', 'PUMA SHOES', '41.jpg', '', '', 1569, 'Textile, Lace-Up Closure, Flat Heel, Rubber, Running Shoes ', 'on'),
(42, 2, 8, '2023-12-22 22:29:29', 'ASIAN', '42.jpg', '', '', 599, 'Canvas Material, Pull On Closure, Flat Heel, First Walker Shoe ', 'on'),
(43, 2, 8, '2023-12-22 22:29:29', 'NIKW', '43.jpg', '', '', 3499, 'Mesh Material, Lace-Up Closure, No Heel, Rubber Sole Material, Walking Shoe', 'on'),
(44, 2, 8, '2023-12-22 22:29:29', 'CROCS', '44.jpg', '', '', 3495, ' Croslite Material, Hook & Loop, No Heel, Clogs Style ', 'on');

--
-- Table structure for table `living`
--

CREATE TABLE living (
  product_id int(11) NOT NULL,
  cat_id int(11) DEFAULT NULL,
  brand_id int(11) DEFAULT NULL,
  date timestamp NULL DEFAULT NULL,
  product_title text NOT NULL,
  product_img1 text,
  product_img2 text,
  product_img3 text,
  price int(11) NOT NULL,
  product_desc text,
  status text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `living`
--

INSERT INTO `living` (product_id, cat_id, brand_id, date, product_title, product_img1, product_img2, product_img3, price, product_desc, status) VALUES
(101, 4, 5, '2023-12-22 22:29:29', 'HOME DECOR METAL WALLART', 'meatlwall.jpeg', '', '', 5499, 'Size of complete set-52x28x3 inches. Weight -5.00kg made in heavy sheet 23 gauge. Material- Iron alloy. Powder coated rust free item. Color-natural multicolor. Finish-Chrome. Design- Antique. Clean with Dry and Wet Cloth.', 'on'),
(102, 4, 5, '2023-12-22 22:29:29', 'METAL PLANTERS', '102.webp', '', '', 1469, 'Modern Simple Design - Elegant house floor planter stand reflects minimalist which inspired by classic mid-century style. ', 'on'),
(103, 4, 5, '2023-12-22 22:29:29', 'CUTE DEER SUCCLENT', '103.webp', '', '', 129, 'Ideal and Unique Gift: Adorable animal planter is good gift choice for kids, , friends, parents, clients, schoolmates or colleague for any occasion or festival.', 'on'),
(104, 4, 5, '2023-12-22 22:29:29', 'SLIPPER DDECORATIVE SHOWPIECE', '104.jpg', '', '', 794, 'A very nice product for home décor. Put it on any shelf or table.', 'on'),
(105, 4, 5, '2023-12-22 22:29:29', 'LED TREE LAMP', '105.jpg', '', '', 899, 'Bonsai tree lamp design with 36 Pearl LED lights,20in high, handmade, adjustable branches easily to bend it into your desired shape , making it an ideal natural tree.', 'on'),
(106, 4, 5, '2023-12-22 22:29:29', 'LILY FLOOR LAMP', '106.jpg', '', '', 11699, 'Layers of metal mesh appear suspended in mid-flutter, shaping our graceful lily lamp. ', 'on'),
(107, 4, 6, '2023-12-22 22:29:29', 'Crystal Glass Chandelier', '107.webp', '', '', 2000, 'Size - Base plate width - 22 cm, Height - 2 foot, No. of Lights - 1, Light Color - Yellow, Light type - LED', 'on'),
(108, 4, 6, '2023-12-22 22:29:29', 'CROSS CUT METAL FLOOR LAMP', '108.webp', '', '', 1799, '100% Cotton WHITE', 'on'),
(109, 4, 6, '2023-12-22 22:29:29', 'HANGING LED STREET LIGHT', '109.jpg', '', '', 451, 'CREATE A SUNNY AMBIANCE WITH YELLOW FAIRY LIGHTS: Yellow fairy lights are a customer favorite for a reason - they add warmth and happiness to any space. Use our USB-powered fairy string lights to create a cozy and welcoming atmosphere in your bedroom or living room.', 'on'),
(110, 4, 6, '2023-12-22 22:29:29', 'DOUBLE HEIGHT CHANDELIER', '110.webp', '', '', 86449, 'It attracts people.', 'on'),
(111, 4, 6, '2023-12-22 22:29:29', 'QUEEN SIZE BED', '111.webp', '', '', 14727, 'Celebrated for its soft lines and luxe materials, the Jacklin collection exemplifies modern designs.', 'on'),
(112, 4, 7, '2023-12-22 22:29:29', 'QUEEN SIZE STORAGE BED', '112.webp', '', '', 29739, 'Celebrated for its soft lines and luxe materials, the Jacklin collection exemplifies modern designs.', 'on'),
(113, 4, 7, '2023-12-22 22:29:29', 'MINI FRIDGE', '113.webp', '', '', 24598, 'INVERTER TECHNOLOGY for Longer Durability. Inbuilt Stabilizer operation. INTERIOR LIGHT Underneath. Virtual Steel Finish resist finger prints & smudges.', 'on'),
(114, 4, 7, '2023-12-22 22:29:29', 'MODERN SHAG RUG', '114.webp', '', '', 869, 'SUPER SOFT FEELING: Noahas shaggy velvet area rugs are elegant in texture and soft to the touch.', 'on'),
(115, 4, 7, '2023-12-22 22:29:29', 'SET OF 4 CARPETS', '115.jpg', '', '', 799, 'Soft, Comfy material', 'on'),
(116, 4, 7, '2023-12-22 22:29:29', 'COTTON PILLOWS', '116.webp', '', '', 699, 'Material: 100% Cotton', 'on'),
(117, 4, 8, '2023-12-22 22:29:29', 'PLUSH FLOWER PILLOW', '117.jpg', '', '', 399, 'This super soft flower shaped floor pillow mat is very fresh and cute. There are a total of 8 colors for you to choose from. There are sunflower cushions and daisy cushions in various colors. The colors are bright and it feels very exciting and comfortable.', 'on'),
(118, 4, 8, '2023-12-22 22:29:29', '100% COTTON TOWELS', '1118.webp', '', '', 699, 'Cotton Towels Very Comfortable to Use', 'on'),
(119, 4, 8, '2023-12-22 22:29:29', 'PLACID TOWELS', '119.jpg', '', '', 1269, 'Shop our soft cushy towel set made with 100% cotton terry with beautiful weaves. ', 'on'),
(120, 4, 8, '2023-12-22 22:29:29', 'BATHROOM ACCESSORIES PACK 2', '120.webp', '', '', 399, 'MADE IN INDIA: 100% Rustproof Food Garde Plastic Material', 'on'),
(121, 4, 8, '2023-12-22 22:29:29', '2 VELVET CHAIRS', '121.jpg', '', '', 13499, 'Try our product, 3 years warranty', 'on'),
(122, 4, 8, '2023-12-22 22:29:29', '2 LAYER KITCHEN RACK', '122.webp', '', '', 1495, 'Material Type: Constructed of durable stainless steel with a gleaming chrome finish, the stylish two-shelf shelving unit offers the best of both rugged reliability and modern appeal', 'on');

--
-- Table structure for table `kids`
--

CREATE TABLE kids (
  product_id int(11) NOT NULL,
  cat_id int(11) DEFAULT NULL,
  brand_id int(11) DEFAULT NULL,
  date timestamp NULL DEFAULT NULL,
  product_title text NOT NULL,
  product_img1 text,
  product_img2 text,
  product_img3 text,
  price int(11) NOT NULL,
  product_desc text,
  status text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kids`
--

INSERT INTO `kids` (product_id, cat_id, brand_id, date, product_title, product_img1, product_img2, product_img3, price, product_desc, status) VALUES
(45, 3, 9, '2023-12-22 22:29:29', 'ALLEN SOLLY KIDS', '45.jpg', '', '', 1194, '100% Polyster, Jacket Style, Regular,Standard Length,texturd Pattern', 'on'),
(46, 3, 9, '2023-12-22 22:29:29', 'BUMZEE KIDS', '46.jpg', '', '', 791, '100% Cotton, Regular Jacket, Standard Length, Solid Pattern', 'on'),
(47, 3, 9, '2023-12-22 22:29:29', 'PELICAN KIDS', '47.jpg', '', '', 349, 'Important Cotoon, Printed Pattern, Regular Fit, Long Sleeve, Standard Length', 'on'),
(48, 3, 9, '2023-12-22 22:29:29', 'HELLCAT KIDS', '48.jpg', '', '', 399, 'Cotton Blend, Standard Length, Half Sleeve, Printed Pattern, T-shirt', 'on'),
(49, 3, 9, '2023-12-22 22:29:29', 'ON TIME OCTUS ', '49.jpg', '', '', 425, 'Analouge Multi-Color, Light Cute,Multicolour Dial , Colored Strap', 'on'),
(50, 3, 10, '2023-12-22 22:29:29', 'GENERIC KIDS', '50.jpg', '', '', 699, 'Wool material, Standard Length, Hooded Neck, Cartoon Pattern', 'on'),
(51, 3, 10, '2023-12-22 22:29:29', 'FIXBIT KIDS', '51.jpg', '', '', 249, 'Touch Led Display, Silicone Strap, Removable Black Case', 'on'),
(52, 3, 10, '2023-12-22 22:29:29', 'FRANTIC KIDS', '52.jpg', '', '', 3199, 'washable felt velvet, Light weight , two adjustable shoulder straps ,top handle fit small children ', 'on'),
(53, 3, 10, '2023-12-22 22:29:29', 'BABYMOON', '53.jpg', '', '', 318, 'Item_weight:200g, SunGlasses, Age limit:2-6 years ', 'on'),
(54, 3, 9, '2023-12-22 22:29:29', 'MILTON ', '54.jpg', '', '', 125, 'Plastic Insulated Water Bottle with Straw for Kids, 490 ml, Cherry Pink, Sipper Bottle, Leak ProoF, Easy to Carry ', 'on'),
(55, 3, 9, '2023-12-22 22:29:29', 'FRANK ', '55.jpg', '', '', 399, 'Jigsaw Puzzle, Number Of pieces:250, Dimension:34.5L x 46W Centimeters', 'on'),
(57, 3, 10, '2023-12-22 22:29:29', 'TAGAS ', '57.jpg', '', '', 452, 'Mario Rib Material, Knee-Length, Checkered Pattern, Boat Neck, A-line Style', 'on'),
(56, 3, 10, '2023-12-22 22:29:29', 'A.T.U.N ', '56.jpg', '', '', 619, 'Nylon Material, Knee-Length, Long-Sleeve,Floral Pattern, Fit ANd Flare Style', 'on'),
(58, 3, 10, '2023-12-22 22:29:29', 'NIREN ', '58.jpg', '', '', 399, 'Modal Material,Knee-Length, Long Sleeve, All Over Print Pattern, A=Line Style', 'on'),
(59, 3, 10, '2023-12-22 22:29:29', 'WISH KARO ', '59.jpg', '', '', 700, 'Satin material, Knee-length, Sleeveless, Enbroidered Pattern, A-Line Style', 'on'),
(60, 3, 10, '2023-12-22 22:29:29', 'NAUGHTY NINOS ', '60.jpg', '', '', 999, 'Synthetic Material,Knee-Length, Cold Shoulder Sleeve, Solid Pattern, Pleated Style', 'on'),
(61, 3, 9, '2023-12-22 22:29:29', 'TRIBE ', '61.jpg', '', '', 3999, 'Kids Bike, Matte Black & Yellow,Frame-Size:12 ', 'on');

--
-- Table structure for table `beauty`
--

CREATE TABLE Beauty (
  product_id int(11) NOT NULL,
  cat_id int(11) DEFAULT NULL,
  brand_id int(11) DEFAULT NULL,
  date timestamp NULL DEFAULT NULL,
  product_title text NOT NULL,
  product_img1 text,
  product_img2 text,
  product_img3 text,
  price int(11) NOT NULL,
  product_desc text,
  status text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beauty`
--

INSERT INTO `beauty` (product_id, cat_id, brand_id, date, product_title, product_img1, product_img2, product_img3, price, product_desc, status) VALUES
(62, 6, 21, '2023-12-22 22:29:29', 'COLORBAR', '62.jpg', '', '', 169, 'Sponge Material, 145 x 16 x 16 Centimeters,Egg shape ', 'on'),
(63, 6, 21, '2023-12-22 22:29:29', 'SWISS BEAUTY', '63.jpg', '', '', 307, 'Mauve Blush, Matte Finish Type, Pigmented Smudge Proof', 'on'),
(64, 6, 21, '2023-12-22 22:29:29', 'MAYBELLINE', '64.jpg', '', '', 534, 'Witty Color,Liquid Form, High-Glossy Finish Type, WaterProof,Long Wearing ', 'on'),
(65, 6, 22, '2023-12-22 22:29:29', 'FACE SHOP', '65.jpg', '', '', 789, 'Paraben Free MAterial, Liquid Form, Rice Scent,Volume: 150ml ', 'on'),
(66, 6, 21, '2023-12-22 22:29:29', 'COLORBAR', '66.webp', '', '', 330, 'Poreless, Long Lasting MakeUp, Cool Ivory, Volume: 25ml ', 'on'),
(67, 6, 21, '2023-12-22 22:29:29', 'LAKME', '67.jpg', '', '', 580, 'Powder Foundation Compact, Ivory Cream, Matte Finish - Lightweight Face Makeup, 9 g ', 'on'),
(68, 6, 21, '2023-12-22 22:29:29', 'HUDA GIRL', '68.webp', '', '', 400, '	Rose Gold + New Nude Edition, Matte,Natural, Powder Form', 'on'),
(69, 6, 21, '2023-12-22 22:29:29', 'SUGAR', '69.webp', '', '', 199, 'Paraben Free Material, Black (Mini) Color,Volume: 10ml   ', 'on'),
(70, 6, 20, '2023-12-22 22:29:29', 'BELLA VITA', '70.webp', '', '', 565, 'Spray Form, Volume: 80ml, Floral Scent,Long Lasting ', 'on'),
(71, 6, 20, '2023-12-22 22:29:29', 'PARK AVENUE', '71.webp', '', '', 411, 'Spray Form, Volume: 100ml, Euphoria Scent,Long Lasting  ', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `men`
--
ALTER TABLE `men`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `women`
--
ALTER TABLE `women`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `kids`
--
ALTER TABLE `kids`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `living`
--
ALTER TABLE `living`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `electronics`
--
ALTER TABLE `electronics`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `cat_id` (`cat_id`);

  --
-- Indexes for table `beauty`
--
ALTER TABLE `beauty`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `cat_id` (`cat_id`);
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `men`
--
ALTER TABLE `men`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `women`
--
ALTER TABLE `women`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `kids`
--
ALTER TABLE `kids`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `living`
--
ALTER TABLE `living`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `electronics`
--
ALTER TABLE `electronics`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `beauty`
--
ALTER TABLE `beauty`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
