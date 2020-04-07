-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2020 at 08:06 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unv_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`) VALUES
(1, 'Albania, Romania'),
(2, 'Brazil, Panama'),
(3, 'Comoros'),
(4, 'Costa Rica'),
(6, 'Egypt, Morocco'),
(7, 'Ghana, Uganda, Sudan'),
(8, 'Honduras'),
(9, 'Jordan'),
(27, 'Jordan PPFA'),
(10, 'Madagascar'),
(11, 'Malaysia'),
(12, 'Maldives '),
(14, 'Mauritius'),
(15, 'Mongolia'),
(16, 'Montenegro'),
(17, 'Myanmar'),
(19, 'Niger'),
(21, 'Palestine '),
(22, 'Serbia'),
(23, 'South Sudan, Egypt'),
(24, 'Swaziland '),
(25, 'Tonga, uganda, Tanzania, Kenya '),
(26, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` int(11) NOT NULL,
  `office_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `office_name`) VALUES
(7, 'Asia Pacific Office'),
(5, 'CTCN'),
(2, 'Economy Division'),
(3, 'Ecosystems'),
(1, 'Europe Office'),
(4, 'Latin America Office'),
(9, 'Policy & Programme Division'),
(6, 'West Asia Office');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `office_id` int(11) NOT NULL,
  `readiness_id` int(11) NOT NULL,
  `readiness_category_id` int(20) NOT NULL,
  `project_ref` varchar(11) DEFAULT NULL,
  `grant_amount` double(10,2) NOT NULL,
  `duration` int(11) NOT NULL,
  `date_from_gcf` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `first_disbursement_amount` double(10,2) NOT NULL,
  `status` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `country_id`, `office_id`, `readiness_id`, `readiness_category_id`, `project_ref`, `grant_amount`, `duration`, `date_from_gcf`, `start_date`, `end_date`, `first_disbursement_amount`, `status`) VALUES
(70, 1, 1, 1, 1, 'ALB-RS-001', 300000.00, 12, '2016-11-15', '2016-08-30', '2017-08-30', 147500.00, 'completed'),
(71, 2, 2, 2, 1, 'BRA-RS-001', 700000.00, 18, '2018-06-20', '2018-06-20', '2019-12-19', 197450.00, 'under imple'),
(72, 3, 3, 1, 1, 'COM-RS-001', 426080.00, 24, '2018-11-01', '2018-11-01', '2020-10-21', 115117.00, 'under imple'),
(73, 4, 4, 3, 2, 'CRI-RS-002', 2861917.00, 36, '2018-10-23', '2018-10-23', '2021-10-23', 350575.33, 'under imple'),
(74, 6, 3, 1, 1, 'EGY-RS-001', 300000.00, 18, '2017-05-02', '2017-04-24', '2018-10-23', 122456.00, 'under imple'),
(75, 7, 5, 2, 1, 'GHA-RS-001', 300150.00, 24, '2017-05-15', '2017-05-15', '2019-05-10', 300150.00, 'completion '),
(76, 8, 4, 4, 1, 'HND-RS-002', 764960.00, 18, '2018-01-18', '2018-01-18', '2019-07-19', 243515.00, 'under imple'),
(77, 9, 6, 1, 1, 'JOR-RS-001', 300000.00, 18, '2017-06-15', '2017-06-15', '2018-12-14', 150000.00, 'under imple'),
(78, 10, 3, 1, 1, 'MDG-RS-001', 300000.00, 12, '2018-07-20', '2018-07-20', '2019-07-19', 177588.00, 'under imple'),
(79, 11, 7, 4, 1, 'MLY-RS-002', 819230.00, 24, '2018-11-12', '2018-11-12', '2020-11-13', 465695.33, 'under imple'),
(80, 12, 7, 1, 1, 'MDV-RS-001', 300000.00, 12, '2017-06-16', '2017-06-16', '2018-06-13', 198545.00, 'under imple'),
(81, 14, 5, 2, 1, 'MUS-RS-002', 324764.00, 15, '2018-01-22', '2018-01-22', '2019-04-19', 324764.00, 'under imple'),
(82, 15, 7, 2, 1, 'MNG-RS-003', 368000.00, 12, '2018-02-01', '2018-02-01', '2019-02-01', 250000.00, 'under imple'),
(83, 16, 1, 1, 1, 'MNE-RS-001', 300000.00, 12, '2016-11-15', '2016-08-30', '2017-08-30', 145300.00, 'under imple'),
(84, 17, 7, 1, 1, 'MMR-RS-002', 300000.00, 18, '2017-11-10', '2017-11-10', '2019-05-11', 115840.00, 'under imple'),
(85, 17, 5, 2, 1, 'MMR-RS-001', 336520.00, 12, '2017-07-26', '2017-07-26', '2018-07-26', 336520.00, 'under imple'),
(86, 19, 3, 1, 1, 'NER-RS-002', 300000.00, 18, '2018-06-20', '2018-06-20', '2019-12-19', 138100.00, 'requesting '),
(87, 21, 5, 2, 1, 'PSE-RS-002', 254100.00, 12, '2017-10-18', '2017-10-18', '2018-10-18', 254100.00, 'under imple'),
(88, 22, 1, 1, 1, 'SRB-RS-001', 300000.00, 12, '2018-01-12', '2018-01-12', '2019-01-12', 130000.00, 'under imple'),
(89, 23, 9, 1, 1, 'SSD-RS-001', 300000.00, 18, '2018-06-20', '2018-06-20', '2019-12-19', 153178.00, 'under imple'),
(90, 24, 3, 1, 1, 'SWZ-RS-002', 299032.00, 24, '2018-03-12', '2018-03-12', '2020-03-13', 83046.00, 'under imple'),
(91, 25, 5, 2, 1, 'TON-RS-002', 200000.00, 6, '2017-04-20', '2017-04-20', '2017-10-09', 200000.00, 'under imple'),
(92, 26, 3, 1, 1, 'ZWE-RS-001', 300000.00, 24, '2018-03-05', '2018-03-05', '2020-03-04', 121354.00, 'under imple'),
(93, 27, 3, 5, 1, 'S1-32GCL-00', 2886275.00, 12, '2018-03-05', '2018-08-28', '2019-12-28', 278946.28, 'under imple');

-- --------------------------------------------------------

--
-- Table structure for table `project_titles`
--

CREATE TABLE `project_titles` (
  `id` int(20) NOT NULL,
  `project_id` int(20) NOT NULL,
  `title` varchar(100) COLLATE utf8_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- Dumping data for table `project_titles`
--

INSERT INTO `project_titles` (`id`, `project_id`, `title`) VALUES
(50, 70, 'Readiness support to Albania'),
(51, 71, 'Technology Needs Assessment for the Implementation of Climate Action Plans'),
(52, 72, '1. Establishing and strengthening National Designated Authorities or Focal Points'),
(53, 72, '\n2. Developing strategic frameworks for engagement with the GCF, including the preparation of countr'),
(54, 73, 'Building sub-national capacities for the implementation of the National Adaptation Plan in Costa Ric'),
(55, 74, 'Supporting Egypt’s engagement with the Green Climate Fund: Logical framework support'),
(56, 75, 'Drought Early Warning and Forecasting System: Improving resiliency of crops to drought through stren'),
(57, 76, 'Supporting strategic planning to engage with the GCF and comply with the national commitments under '),
(58, 77, 'Strengthening NDA of Jordan to deliver on GCF Investment Framework'),
(59, 78, 'Building Capacity in Madagascar to engage with the GCF'),
(60, 79, 'Accessing REDD+ result-based payments in Malaysia'),
(61, 80, 'Establishing and strengthening National Designated Authority (NDA), and developing strategic framewo'),
(62, 81, 'Climate Change Vulnerability and Adaptation Study for Port of Port Louis'),
(63, 82, 'Scaling-up of Implementation of Low-Carbon District Heating Systems in Mongolia'),
(64, 83, '1. Establishing and strengthening National Designated Authorities or Focal Points'),
(65, 83, '\n2. Developing strategic frameworks for engagement with the GCF, including the preparation of countr'),
(66, 84, 'Establishing and Strengthening National Designated Authority (NDA), and Developing Strategic Framewo'),
(67, 85, 'Strengthened drought and flood management through improved science‐based information availability an'),
(68, 86, 'Building Niger’s engagement with the GCF: Establishment and strengthening of the NDA, and elaboratio'),
(69, 87, 'Technology Road Map for the Implementation of Climate Action Plans in Palestine.'),
(70, 88, 'Developing the capacities of the Republic of Serbia for an effective engagement with the Green Clima'),
(71, 89, 'Republic of South Sudan Green Climate Fund’s Readiness and Preparatory Support Project '),
(72, 90, 'Green Climate Fund Readiness Support for Swaziland'),
(73, 91, 'To develop an energy efficiency master plan for the Kingdom of Tonga and East Africa'),
(74, 92, '1. Establishing and strengthening National Designated Authorities or Focal Points'),
(75, 92, '\n2. Developing strategic frameworks for engagement with the GCF, including the preparation of countr'),
(76, 93, 'Jordan Integrated Landscape Management Initiative (JILMI)');

-- --------------------------------------------------------

--
-- Table structure for table `readiness`
--

CREATE TABLE `readiness` (
  `id` int(11) NOT NULL,
  `readiness_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `readiness`
--

INSERT INTO `readiness` (`id`, `readiness_type`) VALUES
(5, ''),
(1, 'Capacity Building'),
(2, 'FI/TNA/other'),
(3, 'NAP'),
(4, 'REDD+');

-- --------------------------------------------------------

--
-- Table structure for table `readiness_categories`
--

CREATE TABLE `readiness_categories` (
  `id` int(20) NOT NULL,
  `category` varchar(20) COLLATE utf8_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- Dumping data for table `readiness_categories`
--

INSERT INTO `readiness_categories` (`id`, `category`) VALUES
(2, 'National Adaptation '),
(1, 'Readiness');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_name` (`country_name`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `region_name` (`office_name`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_ref` (`project_ref`),
  ADD KEY `office_id` (`office_id`),
  ADD KEY `project_ibfk_1` (`readiness_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `projects_ibfk_1` (`readiness_category_id`);

--
-- Indexes for table `project_titles`
--
ALTER TABLE `project_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `readiness`
--
ALTER TABLE `readiness`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `readiness_type` (`readiness_type`);

--
-- Indexes for table `readiness_categories`
--
ALTER TABLE `readiness_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `project_titles`
--
ALTER TABLE `project_titles`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `readiness`
--
ALTER TABLE `readiness`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `readiness_categories`
--
ALTER TABLE `readiness_categories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`readiness_category_id`) REFERENCES `readiness_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
