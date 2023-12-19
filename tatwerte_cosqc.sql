-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 10:27 AM
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
-- Database: `tatwerte_cosqc`
--

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(450) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(450) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(450) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(450) NOT NULL,
  `ProviderKey` varchar(450) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(450) NOT NULL,
  `RoleId` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(450) NOT NULL,
  `Role` int(11) DEFAULT NULL,
  `UserType` longtext NOT NULL,
  `FullName` longtext NOT NULL,
  `Address` longtext NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` char(19) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `Role`, `UserType`, `FullName`, `Address`, `IsDeleted`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('0d0dd847-a381-40e7-bc60-608047900e3d', 7, 'Client', 'علي محمد', 'Algeria', 0, 'Client-8c49623b-36c3-472e-bc23-eec2fea0239c', 'CLIENT-8C49623B-36C3-472E-BC23-EEC2FEA0239C', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEK303IDjSG0eSfL8b43ltnaiKNE5AwcebAo+faVb2m5bBbU/uLuk+sHNmLqTcPmwVQ==', 'J4SVI25PFGYPE44SJNY62ZXBRDA26IVJ', '043b1e95-456f-46e4-98a4-ccc80cec915b', '2190321939', 0, 0, NULL, 1, 0),
('113622c6-ecc8-484d-9714-3c87ab0708f5', 3, 'Employee', 'منفذ', 'بغداد', 0, 'EntryPoint', NULL, 'entry@mail.com', NULL, 0, 'AQAAAAIAAYagAAAAEEVm7d1hpxw3/4Twk5RCF+xhuuDjwbN+H0x9JweQdVOkxnxta+l1XODFY2wGs23tVA==', '45cc6f65-a6ae-4a1b-be42-bc636749025e', '43bdee8e-b531-4baf-bfeb-0b00ad410bea', '07800000001', 0, 0, NULL, 0, 0),
('120a5bbd-a31c-4a80-b972-1efaea6763c1', 7, 'Client', 'احمد وليد', 'Antigua and Barbuda - Antigua and Barbuda', 0, 'Client-a3b17eb4-4bf5-437d-ae13-db471758344b', 'CLIENT-A3B17EB4-4BF5-437D-AE13-DB471758344B', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEExmbC6trOH6CJub3VV4SAJo9e10hPLBPFpe1pOEZokV2D3Kk8CpRHwKjhyV4+zQAg==', '5KNEFILGUQJUWFQUTEJKQBW7ONQE7IC6', '58f894bc-0f9a-4695-8199-9716bb381423', '098213', 0, 0, NULL, 1, 0),
('1904dfb5-61f3-4025-ac19-7833802f31ba', 7, 'Client', 'احمد وليد', 'Antigua and Barbuda - Antigua and Barbuda', 0, 'Client-3a54dae3-18fe-402b-989f-c843248de29e', 'CLIENT-3A54DAE3-18FE-402B-989F-C843248DE29E', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEHya8s8ec0PYkqWfQu7aywA5UvV6eD4N8Gg2EUH1IIpNrhKzG7cwaWnOTofgX2ciTw==', 'KTWCHBK4RKIHAMRW7LXBCFOOJYDET6E7', '4f6ad62f-b31c-47c1-bdb0-c847a4ca5dad', '098217383', 0, 0, NULL, 1, 0),
('19fcfcb8-c34c-48f2-b60c-b642cad687cb', 7, 'Client', 'شركة الرصين', 'Iraq - شركة الرصين', 0, 'Client-eca602fa-1a24-4823-815a-307b432efab7', 'CLIENT-ECA602FA-1A24-4823-815A-307B432EFAB7', NULL, NULL, 0, 'AQAAAAIAAYagAAAAECII5sNz7L6EAKiOnL9Zi/q9NvqDMNAjDGtDVsw8WdijCHrJZzFmdvxZ0kvgb10p1w==', '6NZ4Q2MTGI5SJYLD6B3HVYWJ6S74LFYX', '9715b2ba-0c47-45fb-98e1-46892dc3ef8b', '7830200020', 0, 0, NULL, 1, 0),
('1afccf8c-3cbe-4b2f-85e5-7f6203d71e77', 7, 'Client', 'احمد وليد', 'Armenia - Armenia', 0, 'Client-7f05f4d0-6de4-4591-b1b1-99c812fc2134', 'CLIENT-7F05F4D0-6DE4-4591-B1B1-99C812FC2134', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEGHOlRvL/iegqB9im8iF4zZkhTfBnMOaw9q255FMgoz/SrmpKhH9291UU83HsrKv4w==', 'DDPTWH27BIGACLK4W2C4DIM5RAOXRR2I', '00cc5f2f-a4a6-42fb-a7fb-4dffc717e273', '0980', 0, 0, NULL, 1, 0),
('1e17e6e6-7845-4026-8fd2-67409e486c81', 7, 'Client', 'احمد وليد', 'Belize - Belize', 0, 'Client-fb963e09-b9c1-41d6-97df-fab6d9e48f11', 'CLIENT-FB963E09-B9C1-41D6-97DF-FAB6D9E48F11', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEMty8cNNIAyg8JNSGIpntilXHZiJMMHzJqKM8H4r+MTHnRzZ5DiZDXcRfrgscULM+A==', 'QM67BGRAKP6MXCUZHFMMMSBCLUFI54US', 'c8b56324-6117-47c9-a44b-3e4c4efcaa34', '234567890', 0, 0, NULL, 1, 0),
('287b8108-39c6-4ede-8a84-7a4207ec0ec5', 7, 'Client', 'تيست يتست', 'Andorra - Andorra', 0, 'Client-72221636-77a0-4f87-b65a-2efee4d96500', 'CLIENT-72221636-77A0-4F87-B65A-2EFEE4D96500', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEJ1xRE844l6oE26BiHHjQSiLc7VsbOg8222k4mYF0BYDbQmY/TwX4nOneIaS2TIgyQ==', '2FMZDMAS7GAVLUJEDO73JK4QN46XJNAF', 'a44ecfed-b0f1-49aa-94f3-50802dcec3f5', '078555656555656', 0, 0, NULL, 1, 0),
('29791f9a-a818-4f66-9e9d-a667e5280e2a', 7, 'Client', 'محمد علي كلاي', 'Algeria', 0, 'Client-c23ce073-6b6f-400e-bede-40a010c67a67', 'CLIENT-C23CE073-6B6F-400E-BEDE-40A010C67A67', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEMQCFwN0WlPuoU2DGAO1uY8SsFDfGELk5liuh9EIYCn0GVAWa5OmwPeRvW7UyV2NYQ==', 'XN2FD2R4TJ3OWQLDLUALQ6BDSBLLPDGY', '96424719-e8c7-4402-8186-482e9a252aef', '213123021', 0, 0, NULL, 1, 0),
('29a6d8e4-b0b9-4ee6-9aa6-0f9e4013c2f8', 7, 'Client', 'Joey.Osinski8', 'Syria - Syria', 0, 'Client-4e11d707-e637-4781-925b-5927fafc30fe', 'CLIENT-4E11D707-E637-4781-925B-5927FAFC30FE', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEACI9/IIHcD1SmauZ2Pf7D0ADGiT6yo3n6I071/XyUcE0fCmq84k+S+JMI82yrrBQQ==', 'LJTBMHIHR4J5ID3RBDAUKUR6G2ASLF7N', 'cb64c08f-9290-4459-8ee8-94e8fc6707bb', 'Totam mollitia quibusdam ipsa officiis reprehenderit ipsam.', 0, 0, NULL, 1, 0),
('2a35a948-be1e-43b5-b21a-63dc585f3aed', 7, 'Client', 'احمد وليد', 'Antigua and Barbuda - Antigua and Barbuda', 0, 'Client-3cb63a78-165e-4d9d-bd31-9a236370fe64', 'CLIENT-3CB63A78-165E-4D9D-BD31-9A236370FE64', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEKHLYeWq9p37T9pLs24QciFBJRgCUNV938wnNgnE89IFpVZZ6Wd45rkf5WSsyuLsDQ==', 'N3TOQN5KZHW2F2HMKCV3TNIJFA5YIXA4', 'a4bdc0ad-503c-4479-896b-0def9ba6afbb', '123345678', 0, 0, NULL, 1, 0),
('35f67910-90fb-4de6-a336-54f140cd7ac6', 7, 'Client', 'عثمان الغانمي', 'Iraq - Iraq', 0, 'Client-b023fec5-5322-4851-bbdb-a36eaa5d7e59', 'CLIENT-B023FEC5-5322-4851-BBDB-A36EAA5D7E59', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEOBeCMLvqJx+EGVlzJ2imA6qem74dLH7y3TK13qlqqgwV5uJ2g8ZgG+rLrEHwv8Vjw==', 'FVM6IOMMW62XEJLLOKG6XABN4U54EHSP', 'c8149489-cbbb-41bb-9168-ed040aa7be8b', '07855555555', 0, 0, NULL, 1, 0),
('391fc073-868d-458b-8684-d9f9c59ecd70', 7, 'Client', 'Sigmund.Reinger', 'Central African Republic - Central African Republic', 0, 'Client-1ca2db88-210b-411c-b667-58ac9b18696f', 'CLIENT-1CA2DB88-210B-411C-B667-58AC9B18696F', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEHzPFlNPLO5W/DbGitbqEd4vyTksqkkhAdOm2x7sYRrri8g4CwQi7cyEBR0UVCaAAA==', '45TNGDETYRK2EQ2JNJRVRSL3ZRCSKWHX', 'f90b314c-12aa-4e58-9136-c6ee584f2a42', '7495474198', 0, 0, NULL, 1, 0),
('40c31b4b-6917-45d9-84ec-1e5278c61edc', 7, 'Client', 'Ahmad.Littel', 'Palau - Palau', 0, 'Client-4ef492f8-960c-4b30-85f5-54127a34f80f', 'CLIENT-4EF492F8-960C-4B30-85F5-54127A34F80F', NULL, NULL, 0, 'AQAAAAIAAYagAAAAECmH35BJzE75v1uFUdHsQzXsUJxYXqkByqclR5dhbJP6Bt58xIvgSUF6eBTgHZsZ3w==', 'VGDPMG5DQ6XAMAJ3L76OX4FYRARJSVNB', '0e0c4029-2f0e-44ab-8200-19e084764cf5', '366', 0, 0, NULL, 1, 0),
('4ad698fb-01aa-4f9b-9cde-65cefbe0532f', 7, 'Client', 'weiofewj', 'Albania', 0, 'Client-2e3c4d7c-805d-4180-a951-1b351354a7a9', 'CLIENT-2E3C4D7C-805D-4180-A951-1B351354A7A9', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEIwPvzS9PdnlLhiajWsA5VkYMrXHYuSBzIPQL+obcH5YaPwEEM+1abC4sw7T20bp5w==', 'CME7LOQ6MJQ2NRZGYXYIT64KRSEYBQY3', '45f3e415-0f0e-4e16-96f8-d00eeba3e225', '987907', 0, 0, NULL, 1, 0),
('4b921650-c0f7-4dbb-8b2e-7d2242e319d9', 7, 'Client', 'احمد وليد', 'Indonesia - Indonesia', 0, 'Client-ac6210cf-cfd3-4444-b1e5-60c35a4870af', 'CLIENT-AC6210CF-CFD3-4444-B1E5-60C35A4870AF', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEElYqN5rJ9f4wM30AJG1QLo7z05UVcsJil5dD5ngZhAwZtUzzrGS2Ev49C7RcbJP2w==', '33QW3TFNZHCZSSJ42R573H253YIARHX2', '7b415e9d-15a3-468b-b599-96b09a23a3a8', '123123', 0, 0, NULL, 1, 0),
('4c2bea1b-595a-487e-85e7-36448e2be5bf', 7, 'Client', 'احمد وليد', 'Algeria', 0, 'Client-8bd921a6-ad2b-4982-b6fd-3e2c1be22bff', 'CLIENT-8BD921A6-AD2B-4982-B6FD-3E2C1BE22BFF', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEIjOWrfuTNRSoi8wx2ifkKCXP6DwHnSryQsiud8FG+cjJ8jSPXGmuOaaLKpM5AwVDA==', 'MPU224ZYRU4RH4NWXSX2UHCMQGCOKRQX', 'e0b17d89-c156-48a3-910d-9efdf34cd8b8', '21093819219', 0, 0, NULL, 1, 0),
('4c7019ac-5275-4484-bd99-e98670f2758d', 7, 'Client', 'احمد وليد', 'Antigua and Barbuda - Antigua and Barbuda', 0, 'Client-52c05df9-164e-466e-86a6-2f4d37789196', 'CLIENT-52C05DF9-164E-466E-86A6-2F4D37789196', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEMMmob9YpEvYrCmYfKaOL4CXeMbyXF1WV6FIeqPpa6UPb3bIiMpGJ01Mp+eo77lEvA==', 'WWQERJ3GNWHRV5MNRLVX4ROCDC7FQWXS', '6949a067-a250-4486-aefc-f0452a753725', '987657890', 0, 0, NULL, 1, 0),
('50e4b0fa-2228-46aa-890a-ca91eba65fcd', 7, 'Client', 'FAE Shaeld', 'Albania', 0, 'Client-34a7fcc5-67af-4ddc-8a6a-1a8fcfe0d96f', 'CLIENT-34A7FCC5-67AF-4DDC-8A6A-1A8FCFE0D96F', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEOfHILYD3dnSCZWK7aYM0jWqH4nA1nyBh3KRwrcyqaJK1BI4fB4Z2A69zB5BHBN+FA==', 'BEQKROXXZGPY3I5DQVFYHQES5GDK3BNW', 'eefdb38f-7922-4d75-9701-8b9b9baeb7ba', '230947438902', 0, 0, NULL, 1, 0),
('5fe6428c-0384-4ea5-8a17-d83cd4103bc3', 7, 'Client', 'ammarrrrs', 'Andorra - Andorra', 0, 'Client-db28444a-fda3-46fb-80f3-351140b14aae', 'CLIENT-DB28444A-FDA3-46FB-80F3-351140B14AAE', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEJgAGyvalEslNDzg3WazuKAdidCD9O1u9Q51JcWe5tvirUU/YinHsBh9QvyCdwF9RQ==', 'SVUDGWU4ECAPRVKM6XSM4WKX7VIJOD5P', 'ece7cf0e-bc61-48e5-bfcf-91c60766a9ab', '07830211130', 0, 0, NULL, 1, 0),
('60f0aa54-c651-44c7-8163-86d662e674d5', 6, 'Employee', 'centraldevi', 'Iraq', 0, 'centraldevice22', 'CENTRALDEVICE22', 'centraldevice@mail.com', 'CENTRALDEVICE@MAIL.COM', 0, 'AQAAAAIAAYagAAAAECJFkpjeVjIfVngRzzfdSpSqmcWbDEWbqHcHd2qA1o4RcEhM4smiefWYgQ7EasjIZQ==', 'UI7UH3OKRYZX6ZKGRICT5A4QSI5FAAN4', '904d9738-e113-4140-b76a-7a3de556ef2f', '201901923801923801923', 0, 0, '2023-12-12 15:59:14', 1, 0),
('6555caa9-b63a-4fab-9b5a-fbb1dab3aa28', 7, 'Client', 'Aniyah.Mertz', 'El Salvador - El Salvador', 0, 'Client-70aedfcf-680d-4018-9414-1c8a2d881746', 'CLIENT-70AEDFCF-680D-4018-9414-1C8A2D881746', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEC61sAs35Gr0mwtoc0JQNczUZd8n83/2FX3AxbT8pNOn5+O7CyCkth4lZ4phOTmUew==', 'TQGODXU5RCOQA3DUI5RBCURF3WY22BE6', '4077818c-5698-48e4-9da0-154d418e1a94', '1574640450', 0, 0, NULL, 1, 0),
('66fbd1bf-d1d3-48d7-86b3-ed7026e4dbac', 7, 'Client', 'احمد وليد', 'Andorra - Andorra', 0, 'Client-13e93e75-eea3-4416-89d0-371d3e699073', 'CLIENT-13E93E75-EEA3-4416-89D0-371D3E699073', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEHqfFcOF+baFYSDdehR0EG79Fmlr64q0bh1j7LeLF/qCSnjms2TgEwx55SOOE3e1zg==', 'YQZPBU3UYTIKSD4JUWOZ5X4UCQUS5EWP', 'eca232bd-eb18-49a8-817e-c83acf56b50d', '123123123213', 0, 0, NULL, 1, 0),
('694cdb52-39af-449d-9c60-8d653b6b8b07', 7, 'Client', 'علي عايد حسين', 'Iraq - Iraq', 0, 'Client-782dca78-d095-4183-b19b-92d9da6ac38f', 'CLIENT-782DCA78-D095-4183-B19B-92D9DA6AC38F', NULL, NULL, 0, 'AQAAAAIAAYagAAAAENYGBad7RJMdIUZKL0WPxaNqVo5RwQ7W7bOtimGd6+7rhtMo2hNgA8cTh1e2Bo1GXg==', 'UZYQMB2ZTCN2IP4T5E7TC67BG4CF56EZ', 'b0763611-d55f-4436-81ba-3150be492f66', '07802406090', 0, 0, NULL, 1, 0),
('6faae949-488d-4a97-9183-77ff8c5ff65b', 7, 'Client', 'تيست يتست', 'Bhutan - Bhutan', 0, 'Client-20a20f0c-3bf0-4f8a-914f-69a3588ef713', 'CLIENT-20A20F0C-3BF0-4F8A-914F-69A3588EF713', NULL, NULL, 0, 'AQAAAAIAAYagAAAAENBeoyDg0MmJ8WZIWgLqNYvO20FvltqkNZD1TDNKZbSNfpYhwOBGXoup4Vra17jHsw==', 'F66CYSYTN37WHLQWVTA5Q6WAT6YV7K65', '493b2247-036b-47b5-b1ee-ed46e1bdf1a8', '121221212', 0, 0, NULL, 1, 0),
('71e3f942-6eda-4207-bfd3-a5852d75b2a3', 7, 'Client', 'علي عايد حسين', 'Gambia - iraq', 0, 'Client-b3f9e5d7-869d-421d-b42d-a6633b5a78bd', 'CLIENT-B3F9E5D7-869D-421D-B42D-A6633B5A78BD', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEDVgISOgPnPCzNDoh916dpFnxue+Hglfs/x/C7cYxNCJrq6yadLxUoUmL9+w2oQsew==', 'V27VV6K5PHCKDRCI3A2BK7JZV2DBPWNR', '9dbed9d4-9d7a-4e63-a6e2-db79206fc589', '0783 020 0030', 0, 0, NULL, 1, 0),
('725e6165-ec46-484b-beba-17cf8a9250f0', 7, 'Client', 'Aholedif Shaeld', 'Albania', 0, 'Client-f2de61bf-ec54-4717-aefb-d50ae2e9718b', 'CLIENT-F2DE61BF-EC54-4717-AEFB-D50AE2E9718B', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEEVihr8l/ELAaHed83cQxfsiUnpvEhj+dRxUR9S1+DxqksnyeY81f0fZicVJsb5q/g==', 'GY7JVRN5DZD4SE2ZDGVAQCKQG3RJCYSX', '8fb68456-e707-4e10-9588-c2c8205dcc01', '20947438902', 0, 0, NULL, 1, 0),
('7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', 1, 'Employee', 'مكتب اصدار', 'الصين', 0, 'EntryPoint', 'ENTRYPOINT', 'office@mail.com', 'OFFICE@MAIL.COM', 0, 'AQAAAAIAAYagAAAAEEVm7d1hpxw3/4Twk5RCF+xhuuDjwbN+H0x9JweQdVOkxnxta+l1XODFY2wGs23tVA==', '2fb5e96e-a3af-45ea-82ce-4da4b86ce748', '73459382-9ca7-4eff-92d0-f9c42d54b089', '07800000002', 0, 0, NULL, 0, 0),
('8d8ea9d0-2e43-4f80-942e-eba1290823ad', 7, 'Client', '32 Shaeld', 'Albania', 0, 'Client-761e6772-5f22-4716-b6da-d3700afe744d', 'CLIENT-761E6772-5F22-4716-B6DA-D3700AFE744D', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEJ/vg1CWpVFSoGdrPWGANEOYj6WRlNYJXLenzE6bUiZ6btj4GbehxAXP9JQxKtGBlw==', 'Z4RFX34R6ZRGVF7EXCI3DBWBGZJSEPKA', '2d7ed395-8fc8-446f-a477-e12019f1196a', '2309474389023', 0, 0, NULL, 1, 0),
('91d13a8e-7b01-41f3-91d0-132b48de3c57', 7, 'Client', 'عمار رشاد جبار', 'Venezuela - Venezuela', 0, 'Client-2c054748-8e50-4df0-8fba-9fa250fafa9a', 'CLIENT-2C054748-8E50-4DF0-8FBA-9FA250FAFA9A', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEGBXlNDoISDZHInvbvDagykYY0KKuYfflKmM0nAQ14Jo4VAKyqLzSdXPS2crQpDKQg==', '5ZEVSU6EXNV4ENJGNYRVBHBKHSWD3OLH', '42eb19b9-5d59-437e-89a0-07143ad6d706', '07829872635', 0, 0, NULL, 1, 0),
('94307624-7870-49bc-920d-c4daafcf91fb', 7, 'Client', 'احمد وليد', 'Andorra - Andorra', 0, 'Client-e3d34fbe-2d24-4d62-bfc9-3de94eab426d', 'CLIENT-E3D34FBE-2D24-4D62-BFC9-3DE94EAB426D', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEAN0d74Gd8wJShtq+UalJ8R1Ir+9r+cvFTS+Dtn/KtxKGjKzcdORnmVt14MLSzT4Gw==', 'M6WEWRWWLUFOF3QLHKAD5LSP7QNACIWH', '71aefd8e-51cc-4643-a038-dddfe4f9a96c', '12339482049324', 0, 0, NULL, 1, 0),
('96b080c4-a23e-4e58-a356-a2b2f39bbaf3', 7, 'Client', 'Carmelo_Kovacek8', 'Ecuador - Ecuador', 0, 'Client-15be56d5-3f3b-4b58-a94a-1fcd412f284d', 'CLIENT-15BE56D5-3F3B-4B58-A94A-1FCD412F284D', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEF9RbdATse6SAx0inOwotld4MaXFhms+xeA2LDTTWb1piTrcehzswHpxnHM6yQR20g==', 'OJJHNHD33KPS4RY3ZGRJZVOG2YDVASLR', 'dd9ec2cb-e9a1-47cf-a1fe-2d9b38dc5dc6', '3508884437', 0, 0, NULL, 1, 0),
('a15f5dae-8862-408d-a693-13d49576dd4f', 7, 'Client', 'احمد وليد', 'Angola - Angola', 0, 'Client-03a51d66-ee65-41b4-bae9-5d8cefe53d03', 'CLIENT-03A51D66-EE65-41B4-BAE9-5D8CEFE53D03', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEN5WZLQON0+/k+xWjoUKdSl3vL4MW0cGKRJz78c6CJCfoizS0cgJCjc1ej83zOeNTg==', 'BLKZUNC4I773L5AKMRHUQSTPRTXJQ44U', '86c8af9b-1093-49eb-9922-c3c924399a5e', '123989089', 0, 0, NULL, 1, 0),
('acefaeb6-243c-4935-b931-b618a5b3834a', 7, 'Client', 'علي عايد حسين', 'Iraq - Iraq', 0, 'Client-2cb7bcdd-e96b-4eea-8611-7dcec817984d', 'CLIENT-2CB7BCDD-E96B-4EEA-8611-7DCEC817984D', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEAfXNwIeBoDvtt63Z4NQX+88G7iHeiDCkobjGupUZnp5+Joiqv1pkUdKXpb9Z/3p+w==', 'OZAFEZKTCVYR5GOPZYNFRYY32CW4MLMP', '2d88f30c-12b8-4aa9-94a7-6c181b5a9a2e', '07830222230', 0, 0, NULL, 1, 0),
('ada2b672-6c9e-40d2-bac2-566bab1795c3', 7, 'Client', 'تيست يتست', 'Iraq - 54454225554', 0, 'Client-fb2cb244-91f1-40ff-ae74-2e287f55468c', 'CLIENT-FB2CB244-91F1-40FF-AE74-2E287F55468C', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEKN5qKxKM4gmaBe3vSvyMIhm5vVxf4VHI9zTC4XEqZh63v8mmT8hjbSBl4362QoseA==', 'QUCBW2BPRYUT5SIGV75MW5NWMSLZIJEH', '394fb7ff-aaba-460f-9bad-45d320f9e704', '232323', 0, 0, NULL, 1, 0),
('adee98a7-90fb-4ae4-bc27-2f17f230624d', 7, 'Client', 'عمار رشاد', 'Algeria', 0, 'Client-3de23cce-94b8-44ea-b30d-95f9df185cf9', 'CLIENT-3DE23CCE-94B8-44EA-B30D-95F9DF185CF9', NULL, NULL, 0, 'AQAAAAIAAYagAAAAECufOO85Bjo/6QFAvnFVSKlKrEl2mFdRQSvCBVUQ81lA2yfkxh0HqYAVw+euNQOk1w==', 'PHDUEQRZXOHPV3T6H5TCLVTHOTKOAU54', '7ae75a45-0a22-4587-8552-f9360226555a', '2109381921921', 0, 0, NULL, 1, 0),
('b3e4f224-e6f0-4ddc-b144-bd2cbce9ef39', 7, 'Client', 'احمد وليد', 'Angola - Angola', 0, 'Client-39354819-e2f3-4591-95fb-f51c42ca6009', 'CLIENT-39354819-E2F3-4591-95FB-F51C42CA6009', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEIP+zRbIUSBqILDDdNVybF5cI/rTdzB77DwdpYmqUJ0IT1z1dlQYnhDvaIZx0uRocA==', '7DS3ML52LRDF4YDBYPYWHDDVTYAJYJTD', 'c8c6fba1-2630-46af-aad6-3990bbff44c2', '123213213213123213', 0, 0, NULL, 1, 0),
('beb1b23c-63dc-4fc8-b133-bd6e111ab079', 7, 'Client', 'حيدر جاسم حسين', 'Iraq - Iraq', 0, 'Client-b17917a8-a280-4bc2-a2a5-455b2eece138', 'CLIENT-B17917A8-A280-4BC2-A2A5-455B2EECE138', NULL, NULL, 0, 'AQAAAAIAAYagAAAAENVIKKQ2OYmzYNVAwYdT+XTrgkzMfghux5Fu1AW0xEfBis1SJL3izZQ/Owsto+osdQ==', '2RY57OEK2MK4WYQVSCEQPUGRKKRQUIMK', 'dcae7d7c-9011-4a9e-8085-151b9c8498bd', '0786 060 0060', 0, 0, NULL, 1, 0),
('c0211c26-aaa7-4437-96a3-3e4dcc72dfcc', 7, 'Client', 'Astrid50', 'Azerbaijan - Azerbaijan', 0, 'Client-453a0a87-f3b3-4ea1-9b0b-cb852c4ffcaa', 'CLIENT-453A0A87-F3B3-4EA1-9B0B-CB852C4FFCAA', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEGGxx/EyaWAUrMp/3ZV2eiqgWwX/D0mIdD3Sm9p7brVp0UZ7cO0nI1a6ro2tXLyl4w==', 'NTMW65KQVY75NJ3OACFKXSIJX5RG5OLD', '4e817dab-890f-4399-b152-4459d8d59471', '494', 0, 0, NULL, 1, 0),
('c57dbdf2-4ba8-40c1-ae00-49b03ea2e68f', 7, 'Client', '32 Shae3ld', 'Albania', 0, 'Client-ba3f35c5-230c-47b8-9cb5-38d37c8694da', 'CLIENT-BA3F35C5-230C-47B8-9CB5-38D37C8694DA', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEGYdMrRwiaE4R5mSPQNpF2lx6j5tzVEajL5MiuhwVppK7crSvjaXsNmpOxzUJFDzPw==', '7IGPRFRILQ22FDXBKWORFKCXY4O6W7X3', '7cd646d7-e7ea-4552-8acf-f8ee4a6c63e1', '23039474389023', 0, 0, NULL, 1, 0),
('c88abf74-d1c9-4a65-a490-483358c8aaa4', 7, 'Client', 'احمد وليد', 'Andorra - Andorra', 0, 'Client-62227a6e-88c8-44da-9e72-10d3e74e7b68', 'CLIENT-62227A6E-88C8-44DA-9E72-10D3E74E7B68', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEPRxsTZ7sqWZ3WCWICtt48Xrw/Xuukxpdlu8Q3OqlJxJx6HTgrruM/FY7+hsw/bmbQ==', 'ELNGRBKCANBQVDOT7MDGAI3LAV4VEWLL', 'b1e4acd7-3e8d-47a7-a5a8-b05452c5e433', '98404824', 0, 0, NULL, 1, 0),
('cb858a30-ea1b-4af5-b7fa-61766d568c73', 7, 'Client', 'تيست يتست', 'Bhutan - Bhutan', 0, 'Client-40697a3d-f507-4b03-a2e8-4701ff91f02d', 'CLIENT-40697A3D-F507-4B03-A2E8-4701FF91F02D', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEBjbb+K+IBIuC5mZIZMMx6PrwAO+Gxkr7rWbCXccY7fQt8kuDfVf/bzIhWAo9kzSkg==', 'UK6EI6273W7JSBTPBLROK2UZWYMYAIAB', 'aa05009d-4d19-4fcd-a48b-e3db71bac03e', '54454225554', 0, 0, NULL, 1, 0),
('ceb3e531-f96e-4de0-9568-2dbd2f0f2972', 2, 'Employee', 'مكتب الادارة', 'العراق', 0, 'Admin', NULL, 'admin@mail.com', NULL, 0, 'AQAAAAIAAYagAAAAEEVm7d1hpxw3/4Twk5RCF+xhuuDjwbN+H0x9JweQdVOkxnxta+l1XODFY2wGs23tVA==', 'b62b4901-c2d0-419d-b9ca-e058dbb4ec48', '1cf678d2-4356-4540-9772-0becb4ff4506', '07800000003', 0, 0, NULL, 0, 0),
('cebe5990-384b-4892-ab0e-e2feb4a98586', 5, 'Employee', 'المتابعة ', 'العراق', 0, 'Auditing', NULL, 'auditing@mail.com', NULL, 0, 'AQAAAAIAAYagAAAAEEVm7d1hpxw3/4Twk5RCF+xhuuDjwbN+H0x9JweQdVOkxnxta+l1XODFY2wGs23tVA==', '0531c7e7-3147-4df1-858d-60c72223c018', '1188c428-4de3-43b1-97b8-79126e17d821', '07800000004', 0, 0, NULL, 0, 0),
('d9b889d4-0ff5-4f59-92f7-3d7790f8dd57', 7, 'Client', 'عثمان الغانمي سيس', 'Iraq - Iraq', 0, 'Client-a6c99da6-ea92-446a-8abe-e54755ec9e97', 'CLIENT-A6C99DA6-EA92-446A-8ABE-E54755EC9E97', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEAffzK9j4YvXVbF7vr1LtN4WLnPSAI644weR0p6/mi1zNE9/p+LSK04aK/na8z4EQQ==', 'KQSMNH6BCH4X2VEIYSIRQKLMSDTLQLRP', '96d90e1e-44aa-4270-a665-2395b8e1e62c', '7850500052', 0, 0, NULL, 1, 0),
('da8e60b5-df75-4c90-89b0-ad0113c894e2', 7, 'Client', 'محمد علي صخام', 'Algeria', 0, 'Client-b20c20e0-6d6c-4b4c-aa1e-dbb8f75be122', 'CLIENT-B20C20E0-6D6C-4B4C-AA1E-DBB8F75BE122', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEHJNnM6tZKe3Y421K0nJB9moSG7/isHbMf4FVbMefxA9OXhBBkuvd3Y/Rpsf8jAVtA==', '35LMSU7AKSBNU2Q62WAVT3BKPQQGTYYZ', 'b94528c9-b1a9-4392-ae44-1a755cb7a020', '20342', 0, 0, NULL, 1, 0),
('ddc1447a-87f9-46b3-8600-0c0ac74fdd06', 7, 'Client', 'ammar rashad', 'iraq - iraq', 0, 'Client-bf7783c5-0246-49a7-9841-0b159c429205', 'CLIENT-BF7783C5-0246-49A7-9841-0B159C429205', NULL, NULL, 0, 'AQAAAAIAAYagAAAAELn5ZEJEoaxBLfbyc5ml64vNAN90V3HKbRR6e09HEH9qqLA9mHUPDyjPLu/9BxGUfw==', '3CZMK56DEAHKDS4ZY3YMW7X7RGQ3352E', '9038c118-d0a1-40d8-a323-b6b2d84e8f29', '07830200030', 0, 0, NULL, 1, 0),
('e4e2fbb4-7a96-450b-b8b7-52b2568b1166', 7, 'Client', '32 Shae3ld3', 'Albania', 0, 'Client-c5a273eb-f337-4c09-99ae-9005124aa49f', 'CLIENT-C5A273EB-F337-4C09-99AE-9005124AA49F', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEOcJ6a0hPQQMjb4HC6syRfkvvncM6yM8wIPdkLre0gGQYAjA5D4DLlapKBKWsGJZPQ==', '6CLPPWO5HHC2NHUIQBJEEG6UOW3BGJ74', '1da20b03-7fab-4956-bce8-4a02f96a6ab3', '2303ق9474389023', 0, 0, NULL, 1, 0),
('e8d4b8bc-178b-443b-aab0-0654ba975542', 7, 'Client', 'تيست يتست', 'Gabon - cscssccs', 0, 'Client-a5716b4f-0245-44a2-98f5-ddfff16688e4', 'CLIENT-A5716B4F-0245-44A2-98F5-DDFFF16688E4', NULL, NULL, 0, 'AQAAAAIAAYagAAAAELsZRFz5Rs7ratwAMS7iI6dmQZpoutzYwl7pr2TFO7hMPIsAdoCC6JBuSXoZdmIvug==', 'JAUZEJ46U2MNFA3BF6PUXXFUIIDZP6CT', 'ccbd87a6-8134-48c5-aa51-46b589c47b23', '21222121212', 0, 0, NULL, 1, 0),
('f1a5a857-9b9d-4693-bdd0-6e9786e6ee4d', 7, 'Client', 'joioijoijoijewofi', 'Albania', 0, 'Client-343a3558-ed3c-48cb-909e-531f44826d70', 'CLIENT-343A3558-ED3C-48CB-909E-531F44826D70', NULL, NULL, 0, 'AQAAAAIAAYagAAAAENsEeKG2hYRuYfEZtm3VqO2r0ezJHizncuuK6FGnRBA+64Rg09Kdo2zCJWmPKWemag==', '5BNZPTVCFDCAR6EWDYKHNWL3SK42UMAK', '7a12f515-c3a8-4b44-8c7c-484f5e079ba4', '2094743890', 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `certificatelaunchdocument`
--

CREATE TABLE `certificatelaunchdocument` (
  `Id` varchar(36) NOT NULL,
  `CertificateOfConformityId` varchar(36) NOT NULL,
  `DocumentNumber` longtext DEFAULT NULL,
  `DocumentDate` varchar(27) DEFAULT NULL,
  `AuthenticationOfCertificate` tinyint(1) NOT NULL,
  `MatchingBetweenCertificateAndDocuments` tinyint(1) NOT NULL,
  `IntegrityOfSeals` tinyint(1) NOT NULL,
  `ShipmentConditionCheck` tinyint(1) NOT NULL,
  `TrakingNo` longtext NOT NULL,
  `CertificateLaunchDocumentStatus` int(11) NOT NULL,
  `StatusNote` longtext DEFAULT NULL,
  `IsAuditApproved` tinyint(1) NOT NULL,
  `AuditUserId` varchar(450) DEFAULT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` longtext DEFAULT NULL,
  `InsertByUserId` varchar(450) DEFAULT NULL,
  `UpdateBy` longtext DEFAULT NULL,
  `UpdateByUserId` varchar(450) DEFAULT NULL,
  `Notes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `certificatelaunchdocument`
--

INSERT INTO `certificatelaunchdocument` (`Id`, `CertificateOfConformityId`, `DocumentNumber`, `DocumentDate`, `AuthenticationOfCertificate`, `MatchingBetweenCertificateAndDocuments`, `IntegrityOfSeals`, `ShipmentConditionCheck`, `TrakingNo`, `CertificateLaunchDocumentStatus`, `StatusNote`, `IsAuditApproved`, `AuditUserId`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `InsertByUserId`, `UpdateBy`, `UpdateByUserId`, `Notes`) VALUES
('0EE15FBB-3986-484C-A12E-BA8ABC4A94AD', '54448CB9-5124-4C3D-9F74-0820D2243C04', 'B000002-002', '2023-11-29 11:40:24.9845741', 1, 1, 1, 1, 'LDoc-553329112023', 1, 'انتظار تدقيق المتابعة', 1, 'cebe5990-384b-4892-ab0e-e2feb4a98586', '2023-11-29 17:21:31.1775439', '2023-11-29 11:40:24.9885157', 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, 'cebe5990-384b-4892-ab0e-e2feb4a98586', NULL, 'aaa'),
('237034CF-1BA2-426F-9829-B6F05BD378CA', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', 'B000003-002', '2023-12-12 10:38:25.2037871', 1, 1, 1, 1, 'LDoc-578912122023', 1, 'انتظار تدقيق المتابعة', 1, 'cebe5990-384b-4892-ab0e-e2feb4a98586', '2023-12-12 10:34:20.1265431', '2023-12-12 10:38:25.2063098', 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, 'cebe5990-384b-4892-ab0e-e2feb4a98586', NULL, 'الحاويات مبيها شي'),
('47FA818F-20C9-46C1-B987-31940D44AFBF', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', 'B000003-001', '2023-12-12 10:38:16.3179168', 1, 1, 1, 1, 'LDoc-635812122023', 1, 'انتظار تدقيق المتابعة', 1, 'cebe5990-384b-4892-ab0e-e2feb4a98586', '2023-12-12 10:35:27.4250361', '2023-12-12 10:38:16.3277348', 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, 'cebe5990-384b-4892-ab0e-e2feb4a98586', NULL, '23156'),
('5D545BCC-71DD-43ED-A215-DEDC45CAC8FD', '54448CB9-5124-4C3D-9F74-0820D2243C04', 'B000002-001', '2023-11-29 11:40:16.0406414', 1, 1, 1, 1, 'LDoc-726829112023', 1, 'انتظار تدقيق المتابعة', 1, 'cebe5990-384b-4892-ab0e-e2feb4a98586', '2023-11-29 17:34:39.6040754', '2023-11-29 11:40:16.2419406', 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, 'cebe5990-384b-4892-ab0e-e2feb4a98586', NULL, 'ddddd'),
('61306706-2940-443E-AA48-CE5BCE52F8DA', '54448CB9-5124-4C3D-9F74-0820D2243C04', NULL, NULL, 1, 1, 1, 1, 'LDoc-532729112023', 0, 'انتظار تدقيق المتابعة', 0, NULL, '2023-11-29 16:59:00.1796025', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL, NULL, 'تيست'),
('75798F6E-7D3C-40CC-9815-DC7AEAFF3A39', '54448CB9-5124-4C3D-9F74-0820D2243C04', NULL, NULL, 1, 1, 1, 1, 'LDoc-239329112023', 0, 'انتظار تدقيق المتابعة', 0, NULL, '2023-11-29 17:09:48.7729021', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL, NULL, 'text'),
('7FD45E91-1644-4A73-BFF8-9BC652FFCD26', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', 'B000001-001', '2023-11-28 14:04:37.3376519', 1, 1, 1, 1, 'LDoc-884728112023', 1, 'انتظار تدقيق المتابعة', 1, 'cebe5990-384b-4892-ab0e-e2feb4a98586', '2023-11-28 17:19:38.9929149', '2023-11-28 14:04:37.5385589', 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, 'cebe5990-384b-4892-ab0e-e2feb4a98586', NULL, 'internalAdmin@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `certificatelaunchdocumentcargos`
--

CREATE TABLE `certificatelaunchdocumentcargos` (
  `Id` varchar(36) NOT NULL,
  `CertificateLaunchDocumentId` varchar(36) NOT NULL,
  `CertificateOfConformityCargoId` varchar(36) NOT NULL,
  `QuantityOrUnit` int(11) DEFAULT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` longtext DEFAULT NULL,
  `InsertByUserId` varchar(450) DEFAULT NULL,
  `UpdateBy` longtext DEFAULT NULL,
  `UpdateByUserId` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `certificatelaunchdocumentcargos`
--

INSERT INTO `certificatelaunchdocumentcargos` (`Id`, `CertificateLaunchDocumentId`, `CertificateOfConformityCargoId`, `QuantityOrUnit`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `InsertByUserId`, `UpdateBy`, `UpdateByUserId`) VALUES
('475C0172-8310-4328-82AA-9FE58BE5EEF4', '7FD45E91-1644-4A73-BFF8-9BC652FFCD26', 'BB7BA84A-0E9C-4C45-8A7D-393B6AE93241', 100, '2023-11-28 17:19:38.9929166', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL, NULL),
('50D934D8-BCC8-4995-BE53-26AF5D6BAD95', '61306706-2940-443E-AA48-CE5BCE52F8DA', 'CE2FF280-B9E1-4915-A1A8-A4B2031CDBB4', 100, '2023-11-29 16:59:00.1796041', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL, NULL),
('57195498-DBE7-418A-BE97-B0D57A3CD7FE', '5D545BCC-71DD-43ED-A215-DEDC45CAC8FD', 'CE2FF280-B9E1-4915-A1A8-A4B2031CDBB4', 11, '2023-11-29 17:34:39.6040763', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL, NULL),
('8CDE18E0-75AD-4F84-A637-451917309BDD', '75798F6E-7D3C-40CC-9815-DC7AEAFF3A39', 'CE2FF280-B9E1-4915-A1A8-A4B2031CDBB4', 10, '2023-11-29 17:09:48.7729032', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL, NULL),
('AECAA7E1-A3EF-4CBB-A3BD-B03B7E395C94', '0EE15FBB-3986-484C-A12E-BA8ABC4A94AD', 'CE2FF280-B9E1-4915-A1A8-A4B2031CDBB4', 11, '2023-11-29 17:21:31.1775454', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL, NULL),
('D9250D02-9583-485C-8E76-94BB00363A77', '47FA818F-20C9-46C1-B987-31940D44AFBF', '0CC67FF2-9D00-40BC-8569-A754416CFE1E', 1, '2023-12-12 10:35:27.4250378', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL, NULL),
('ED08F245-AFCD-4161-A983-ADC19CBF4FF3', '237034CF-1BA2-426F-9829-B6F05BD378CA', '5300160F-0FF4-43A7-B1F5-2C465CBBACAE', 200, '2023-12-12 10:34:20.1265451', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL, NULL),
('F51147BA-B2F1-416B-8348-F36359A55B28', '237034CF-1BA2-426F-9829-B6F05BD378CA', '0CC67FF2-9D00-40BC-8569-A754416CFE1E', 5, '2023-12-12 10:34:20.1265447', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificateofconformity`
--

CREATE TABLE `certificateofconformity` (
  `Id` varchar(36) NOT NULL,
  `CocNumber` longtext DEFAULT NULL,
  `IssueDate` varchar(27) NOT NULL,
  `ExpiryDate` varchar(27) NOT NULL,
  `AssessmentDate` varchar(27) NOT NULL,
  `RegistrationNumber` longtext DEFAULT NULL,
  `ReferenceNumber` longtext DEFAULT NULL,
  `ExporterName` longtext DEFAULT NULL,
  `ExporterCity` longtext DEFAULT NULL,
  `ExporterAddress` longtext DEFAULT NULL,
  `ContractAgreementAttachedId` varchar(36) DEFAULT NULL,
  `CertificateOfOriginAttachedId` varchar(36) NOT NULL,
  `InvoiceAttachedId` varchar(36) NOT NULL,
  `PackingListAttachedId` varchar(36) NOT NULL,
  `ExporterCountry` longtext DEFAULT NULL,
  `InvoiceNumber` longtext DEFAULT NULL,
  `InvoiceDate` varchar(27) NOT NULL,
  `InvoiceValue` decimal(18,2) NOT NULL,
  `InvoiceValueInUsd` decimal(18,2) NOT NULL,
  `TrakingNo` longtext NOT NULL,
  `InvoiceMark` longtext DEFAULT NULL,
  `ShippingMethod` int(11) DEFAULT NULL,
  `ShippingCountry` longtext DEFAULT NULL,
  `EntryPointId` varchar(36) DEFAULT NULL,
  `PackagingDetails` longtext DEFAULT NULL,
  `IsAdminApproved` tinyint(1) NOT NULL,
  `AdminUserId` varchar(450) DEFAULT NULL,
  `EntryPointUserId` varchar(450) DEFAULT NULL,
  `IsEntryPointFollowed` tinyint(1) NOT NULL,
  `NumberOfPackages` int(11) NOT NULL,
  `CargoType` int(11) NOT NULL,
  `IsOfficePaid` tinyint(1) NOT NULL,
  `DocumentNumber` longtext DEFAULT NULL,
  `DocumentDate` varchar(27) DEFAULT NULL,
  `OfficeAmount` decimal(18,2) NOT NULL,
  `IsEntryPointPaid` tinyint(1) NOT NULL,
  `EntryPointPaidAmount` decimal(18,2) NOT NULL,
  `Notes` longtext DEFAULT NULL,
  `CertificateStatus` int(11) NOT NULL,
  `StatusNotes` longtext DEFAULT NULL,
  `ClientUserID` varchar(450) DEFAULT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` varchar(450) DEFAULT NULL,
  `UpdateBy` varchar(450) DEFAULT NULL,
  `InternalAdminUserId` varchar(450) DEFAULT NULL,
  `IsInternalAdminApproved` tinyint(1) NOT NULL,
  `DeclaredValue` longtext DEFAULT NULL,
  `SubmissionDate` varchar(27) NOT NULL DEFAULT '0001-01-01T00:00:00.0000000',
  `IsReCertificateOfConformity` tinyint(1) NOT NULL,
  `OfficeId` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `certificateofconformity`
--

INSERT INTO `certificateofconformity` (`Id`, `CocNumber`, `IssueDate`, `ExpiryDate`, `AssessmentDate`, `RegistrationNumber`, `ReferenceNumber`, `ExporterName`, `ExporterCity`, `ExporterAddress`, `ContractAgreementAttachedId`, `CertificateOfOriginAttachedId`, `InvoiceAttachedId`, `PackingListAttachedId`, `ExporterCountry`, `InvoiceNumber`, `InvoiceDate`, `InvoiceValue`, `InvoiceValueInUsd`, `TrakingNo`, `InvoiceMark`, `ShippingMethod`, `ShippingCountry`, `EntryPointId`, `PackagingDetails`, `IsAdminApproved`, `AdminUserId`, `EntryPointUserId`, `IsEntryPointFollowed`, `NumberOfPackages`, `CargoType`, `IsOfficePaid`, `DocumentNumber`, `DocumentDate`, `OfficeAmount`, `IsEntryPointPaid`, `EntryPointPaidAmount`, `Notes`, `CertificateStatus`, `StatusNotes`, `ClientUserID`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `UpdateBy`, `InternalAdminUserId`, `IsInternalAdminApproved`, `DeclaredValue`, `SubmissionDate`, `IsReCertificateOfConformity`, `OfficeId`) VALUES
('00BAAD6F-B4AE-4EE7-849D-F497FE980389', 'B000001-01', '2023-12-01 14:21:20.1678595', '2023-11-27 00:00:00.0000000', '2023-11-27 00:00:00.0000000', '32323', '2332323', 'شركة البهجاء', NULL, 'الصين', NULL, '0674FC05-6470-413E-8CBB-4449B2A3505E', 'BC89B2E8-3BA7-40BB-8547-EF4B3F87B1BF', '33D24EA0-830E-4706-B28D-0FFBBFA45558', 'China', '32323233', '2023-11-27 00:00:00.0000000', 23333.00, 2333.00, 'Doc-536701122023', 'USD', 1, 'Congo', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', 'يحتوى على مجموعة من الاشياء', 0, NULL, NULL, 0, 2222, 2, 0, '232323', '2023-11-27 00:00:00.0000000', 320.00, 0, 0.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 0, 'تم اضافه هذا الشهادة اعادة اصادر من الشهادة رقم B000001', 'acefaeb6-243c-4935-b931-b618a5b3834a', '2023-12-01 14:21:20.2100604', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, 0, '232', '0001-01-01 00:00:00.0000000', 1, NULL),
('12E11956-CCA2-4A04-A8FC-F5CE7B332D6D', NULL, '0001-01-01 00:00:00.0000000', '2023-11-27 00:00:00.0000000', '2023-11-28 00:00:00.0000000', '43434', '34434344', 'شركة الرصين', NULL, 'شركة الرصين', '3AFF0226-4B5D-40A1-9463-79CD19320E0C', '6AF1E546-0D6D-4F8F-9CF2-357FDA9FEC30', '5FA5254B-932E-4F14-BB51-0FA0DFDD3A7D', 'F3D15DFE-9004-4025-8C77-8AA3EC03DB72', 'Yemen', '3434', '2023-11-15 00:00:00.0000000', 43434.00, 343433434.00, 'Doc-796301122023', 'USD', 2, 'Antigua and Barbuda', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', '34343', 0, NULL, NULL, 0, 42625, 3, 0, '4343', '2023-11-28 00:00:00.0000000', 516850.15, 0, 0.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء  يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 0, 'تم اضافة الشهادة كمسودة ', '91d13a8e-7b01-41f3-91d0-132b48de3c57', '2023-12-01 12:59:40.2352798', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, 0, '4343', '2023-11-28 00:00:00.0000000', 0, NULL),
('19EDACDE-26B4-47EE-8B31-C4FC328B6513', '-01', '2023-12-01 14:19:51.4607830', '2023-12-12 00:00:00.0000000', '2023-12-08 00:00:00.0000000', '2323423', '2324424', 'شركة جينج', NULL, '42. street', '4F7595C8-FCC2-46FC-B9DF-E22D531D3F29', '5633EE32-90C1-40FB-89E6-CE67526E1728', '79B35E7C-D995-4A9D-A156-E143C19613C7', '82408ABE-73F6-49C6-8780-6EFB0F38390C', 'Eritrea', '24242', '2023-12-01 00:00:00.0000000', 242.00, 2323.00, 'Doc-814201122023', 'GBP', 2, 'Benin', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', '32323', 0, NULL, NULL, 0, 232, 3, 0, '3232', '2023-12-02 00:00:00.0000000', 320.00, 0, 0.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء  يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 0, 'تم اضافه هذا الشهادة اعادة اصادر من الشهادة رقم ', 'd9b889d4-0ff5-4f59-92f7-3d7790f8dd57', '2023-12-01 14:19:51.4616171', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, 0, '232', '2023-12-01 00:00:00.0000000', 1, NULL),
('28B74E04-DC22-4F39-86F4-B3163867F457', NULL, '0001-01-01 00:00:00.0000000', '2023-12-12 00:00:00.0000000', '2023-12-08 00:00:00.0000000', '2323423', '2324424', 'شركة جينج', NULL, '42. street', '4F7595C8-FCC2-46FC-B9DF-E22D531D3F29', '5633EE32-90C1-40FB-89E6-CE67526E1728', '79B35E7C-D995-4A9D-A156-E143C19613C7', '82408ABE-73F6-49C6-8780-6EFB0F38390C', 'Eritrea', '24242', '2023-12-01 00:00:00.0000000', 242.00, 2323.00, 'Doc-657801122023', 'GBP', 2, 'Benin', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', '32323', 0, NULL, NULL, 0, 232, 3, 0, '3232', '2023-12-02 00:00:00.0000000', 320.00, 0, 250.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء  يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 0, 'تم اضافة الشهادة كمسودة ', 'd9b889d4-0ff5-4f59-92f7-3d7790f8dd57', '2023-12-01 14:07:59.4487616', '2023-12-01 14:08:38.7070695', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, 0, '232', '2023-12-01 00:00:00.0000000', 0, NULL),
('33D28048-D09F-4856-8026-7670AB0CFE95', '-01', '2023-12-01 13:40:37.7421142', '2023-11-27 00:00:00.0000000', '2023-11-28 00:00:00.0000000', '43434', '34434344', 'شركة الرصين', NULL, 'شركة الرصين', '3AFF0226-4B5D-40A1-9463-79CD19320E0C', '6AF1E546-0D6D-4F8F-9CF2-357FDA9FEC30', '5FA5254B-932E-4F14-BB51-0FA0DFDD3A7D', 'F3D15DFE-9004-4025-8C77-8AA3EC03DB72', 'Yemen', '3434', '2023-11-15 00:00:00.0000000', 43434.00, 343433434.00, 'Doc-263201122023', 'USD', 2, 'Antigua and Barbuda', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', '34343', 0, NULL, NULL, 0, 42625, 3, 0, '4343', '2023-11-28 00:00:00.0000000', 516850.15, 0, 0.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء  يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 0, 'تم اضافه هذا الشهادة اعادة اصادر من الشهادة رقم ', '91d13a8e-7b01-41f3-91d0-132b48de3c57', '2023-12-01 13:40:37.7823113', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, 0, '4343', '2023-11-28 00:00:00.0000000', 0, NULL),
('3CF1231E-D800-4089-9278-A0DE3358D040', NULL, '0001-01-01 00:00:00.0000000', '2023-11-27 00:00:00.0000000', '2023-11-28 00:00:00.0000000', '43434', '34434344', 'شركة الرصين', NULL, 'شركة الرصين', '3AFF0226-4B5D-40A1-9463-79CD19320E0C', '6AF1E546-0D6D-4F8F-9CF2-357FDA9FEC30', '5FA5254B-932E-4F14-BB51-0FA0DFDD3A7D', 'F3D15DFE-9004-4025-8C77-8AA3EC03DB72', 'Yemen', '3434', '2023-11-15 00:00:00.0000000', 43434.00, 343433434.00, 'Doc-927001122023', 'USD', 2, 'Antigua and Barbuda', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', '34343', 0, NULL, NULL, 0, 42625, 3, 0, '4343', '2023-11-28 00:00:00.0000000', 516850.15, 0, 0.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء  يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 0, 'تم اضافة الشهادة كمسودة ', '91d13a8e-7b01-41f3-91d0-132b48de3c57', '2023-12-01 13:02:09.5816098', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, 0, '4343', '2023-11-28 00:00:00.0000000', 0, NULL),
('45FE378B-FA2F-415A-AF40-9C6667B15C4A', NULL, '0001-01-01 00:00:00.0000000', '2023-02-11 00:00:00.0000000', '2023-06-06 00:00:00.0000000', '506', '565', 'Alberta_Quitzon14', NULL, '164 Rolfson Meadow', '4E6994E0-CF73-47CE-AD51-0A434B7E2DA1', '161B567B-45B5-4F8C-9A5C-3120031EA95F', 'D87FD485-F57F-4735-91F3-39AE8F73436D', 'F7751A98-F1EE-44C0-8C03-E98BFD790B2C', 'Poland', '660', '2023-05-30 00:00:00.0000000', 185.00, 539.00, 'Doc-280712122023', 'USD', 2, 'Algeria', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', 'Nobis sit repudiandae quae.', 0, NULL, NULL, 0, 174, 1, 0, '77', '2023-10-16 00:00:00.0000000', 320.00, 0, 250.00, '566', 0, 'تم اضافة الشهادة كمسودة ', 'ff7c6d68-54eb-4678-b696-840aab7514fa', '2023-12-12 12:53:53.7002179', '2023-12-12 12:57:36.7984346', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, 0, 'Laboriosam eligendi libero cumque inventore.', '2023-06-28 00:00:00.0000000', 0, NULL),
('4B4E6F1D-6A16-4E49-A2C0-28477E93E312', 'B000002-01', '2023-12-01 13:34:40.2909105', '2023-11-27 00:00:00.0000000', '2023-11-28 00:00:00.0000000', '43434', '34434344', 'شركة الرصين', NULL, 'شركة الرصين', '3AFF0226-4B5D-40A1-9463-79CD19320E0C', '6AF1E546-0D6D-4F8F-9CF2-357FDA9FEC30', '5FA5254B-932E-4F14-BB51-0FA0DFDD3A7D', 'F3D15DFE-9004-4025-8C77-8AA3EC03DB72', 'Yemen', '3434', '2023-11-15 00:00:00.0000000', 43434.00, 343433434.00, 'Doc-623801122023', 'USD', 2, 'Antigua and Barbuda', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', '34343', 0, NULL, NULL, 0, 42625, 3, 0, '4343', '2023-11-28 00:00:00.0000000', 516850.15, 0, 250.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء  يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 0, 'تم اضافه هذا الشهادة اعادة اصادر من الشهادة رقم B000002', '91d13a8e-7b01-41f3-91d0-132b48de3c57', '2023-12-01 13:34:50.1440880', '2023-12-01 13:35:08.0007484', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, 0, '4343', '2023-11-28 00:00:00.0000000', 0, NULL),
('54448CB9-5124-4C3D-9F74-0820D2243C04', 'B000002', '2023-11-28 18:07:54.6824996', '2023-11-27 00:00:00.0000000', '2023-11-28 00:00:00.0000000', '43434', '34434344', 'شركة الرصين', NULL, 'شركة الرصين', '3AFF0226-4B5D-40A1-9463-79CD19320E0C', '6AF1E546-0D6D-4F8F-9CF2-357FDA9FEC30', '5FA5254B-932E-4F14-BB51-0FA0DFDD3A7D', 'F3D15DFE-9004-4025-8C77-8AA3EC03DB72', 'Yemen', '3434', '2023-11-15 00:00:00.0000000', 43434.00, 343433434.00, 'Doc-520628112023', 'USD', 2, 'Antigua and Barbuda', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', '34343', 1, 'ceb3e531-f96e-4de0-9568-2dbd2f0f2972', '113622c6-ecc8-484d-9714-3c87ab0708f5', 1, 42625, 3, 0, '4343', '2023-11-28 00:00:00.0000000', 516850.15, 0, 250.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء  يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 5, 'تم اضافة وثيقة عدم اطلاق المرقمة : B000002-969842', '91d13a8e-7b01-41f3-91d0-132b48de3c57', '2023-11-28 17:55:24.4275111', '2023-11-29 18:35:24.7939155', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', '113622c6-ecc8-484d-9714-3c87ab0708f5', 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', 1, '4343', '2023-11-28 00:00:00.0000000', 0, NULL),
('6549C694-189F-4C4E-A71A-67F6152E0EE1', '-02', '2023-12-01 14:27:13.1745980', '2023-12-12 00:00:00.0000000', '2023-12-08 00:00:00.0000000', '2323423', '2324424', 'شركة جينج', NULL, '42. street', '4F7595C8-FCC2-46FC-B9DF-E22D531D3F29', '5633EE32-90C1-40FB-89E6-CE67526E1728', '79B35E7C-D995-4A9D-A156-E143C19613C7', '82408ABE-73F6-49C6-8780-6EFB0F38390C', 'Eritrea', '24242', '2023-12-01 00:00:00.0000000', 242.00, 2323.00, 'Doc-391001122023', 'GBP', 2, 'Benin', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', '32323', 0, NULL, NULL, 0, 232, 3, 0, '3232', '2023-12-02 00:00:00.0000000', 320.00, 0, 0.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء  يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 0, 'تم اضافه هذا الشهادة اعادة اصادر من الشهادة رقم ', 'd9b889d4-0ff5-4f59-92f7-3d7790f8dd57', '2023-12-01 14:27:13.1749816', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, 0, '232', '2023-12-01 00:00:00.0000000', 1, NULL),
('6788D1DC-0CB0-4FBF-BFDE-EE23C012C53A', 'B000002-02', '2023-12-01 13:41:45.0971410', '2023-11-27 00:00:00.0000000', '2023-11-28 00:00:00.0000000', '43434', '34434344', 'شركة الرصين', NULL, 'شركة الرصين', '3AFF0226-4B5D-40A1-9463-79CD19320E0C', '6AF1E546-0D6D-4F8F-9CF2-357FDA9FEC30', '5FA5254B-932E-4F14-BB51-0FA0DFDD3A7D', 'F3D15DFE-9004-4025-8C77-8AA3EC03DB72', 'Yemen', '3434', '2023-11-15 00:00:00.0000000', 43434.00, 343433434.00, 'Doc-699401122023', 'USD', 2, 'Antigua and Barbuda', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', '34343', 0, NULL, NULL, 0, 42625, 3, 0, '4343', '2023-11-28 00:00:00.0000000', 516850.15, 0, 0.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء  يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 0, 'تم اضافه هذا الشهادة اعادة اصادر من الشهادة رقم B000002', '91d13a8e-7b01-41f3-91d0-132b48de3c57', '2023-12-01 13:41:45.0986577', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, 0, '4343', '2023-11-28 00:00:00.0000000', 0, NULL),
('70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', 'B000003', '2023-12-12 10:22:56.7318588', '2024-10-03 00:00:00.0000000', '2024-10-03 00:00:00.0000000', '59', '16', 'Yasmin_Kilback76', NULL, '750 Vinnie Skyway', '2D1EB9AA-A24B-4F44-8132-2DEE61F346CB', 'CCA8F873-310B-462F-841B-EB307875BDD6', 'FB0EE616-2BF1-4DE9-A638-BC9FFD8CCE79', '10A4F3E8-B81B-47B1-8B9F-B7CB58F3F7CF', 'Spain', '474', '2024-07-11 00:00:00.0000000', 222.00, 417.00, 'Doc-534912122023', 'AED', 1, 'Burundi', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', 'Perspiciatis cumque enim dicta magnam minus nemo sunt.', 1, 'ceb3e531-f96e-4de0-9568-2dbd2f0f2972', '113622c6-ecc8-484d-9714-3c87ab0708f5', 1, 505, 1, 0, '463', '2023-01-26 00:00:00.0000000', 320.00, 1, 12200.00, '611', 5, 'تم اضافة وثيقة اطلاق جديدة وانتظار قسم المتابعة: ', '96b080c4-a23e-4e58-a356-a2b2f39bbaf3', '2023-12-12 10:06:56.3790110', '2023-12-12 10:35:27.4250382', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', '113622c6-ecc8-484d-9714-3c87ab0708f5', 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', 1, 'Blanditiis pariatur aperiam corrupti.', '2024-09-16 00:00:00.0000000', 0, NULL),
('73C4D117-7154-4BDE-851D-80E319DE0705', 'B000002-03', '2023-12-01 14:21:50.1120580', '2023-11-27 00:00:00.0000000', '2023-11-28 00:00:00.0000000', '43434', '34434344', 'شركة الرصين', NULL, 'شركة الرصين', '3AFF0226-4B5D-40A1-9463-79CD19320E0C', '6AF1E546-0D6D-4F8F-9CF2-357FDA9FEC30', '5FA5254B-932E-4F14-BB51-0FA0DFDD3A7D', 'F3D15DFE-9004-4025-8C77-8AA3EC03DB72', 'Yemen', '3434', '2023-11-15 00:00:00.0000000', 43434.00, 343433434.00, 'Doc-122401122023', 'USD', 2, 'Antigua and Barbuda', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', '34343', 0, NULL, NULL, 0, 42625, 3, 0, '4343', '2023-11-28 00:00:00.0000000', 516850.15, 0, 0.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء  يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 0, 'تم اضافه هذا الشهادة اعادة اصادر من الشهادة رقم B000002', '91d13a8e-7b01-41f3-91d0-132b48de3c57', '2023-12-01 14:21:50.1128389', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, 0, '4343', '2023-11-28 00:00:00.0000000', 1, NULL),
('7610010E-FE47-45A1-9D0D-877066D2C9E1', NULL, '0001-01-01 00:00:00.0000000', '2023-12-04 00:00:00.0000000', '2023-12-11 00:00:00.0000000', '32232', '2332323', 'شركة تطوير', NULL, '323232', '1DB37429-23C7-4ADF-B000-933425B01790', 'D4AE350B-9220-47ED-B8EE-D63984999D10', '76A58EB0-24FF-4A40-B752-F45449B5D38B', '7BB6BD93-9C47-4E46-A9CC-751C5B50E2D2', 'Algeria', '433443', '2023-12-13 00:00:00.0000000', 1221.00, 1221.00, 'Doc-318003122023', 'USD', 2, 'Albania', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', 'يحتوى على مجموعة من الاشياء', 0, NULL, NULL, 0, 212, 3, 0, '122', '2023-12-10 00:00:00.0000000', 320.00, 0, 250.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء  يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 0, 'تم اضافة الشهادة كمسودة ', 'beb1b23c-63dc-4fc8-b133-bd6e111ab079', '2023-12-03 23:27:57.6656396', '2023-12-03 23:28:13.9071995', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, 0, '1222', '2023-12-11 00:00:00.0000000', 0, NULL),
('9EC8479D-E96C-48F7-9052-5FA693E20929', NULL, '0001-01-01 00:00:00.0000000', '2023-10-26 00:00:00.0000000', '2023-01-23 00:00:00.0000000', '284', '451', 'Lincoln_Corkery', NULL, '49075 Darrick Parkway', '91669F69-8B7D-49BD-9002-8B0E497DC048', 'E87E4E92-39CE-4284-B8B7-7F951E3C30F0', '6FDFAFFA-F845-45AD-85BC-A83B5BA9AE66', 'EFFB8DF9-FB85-404B-9A1D-843603C877A8', 'Belgium', '523', '2023-03-24 00:00:00.0000000', 150.00, 213123.00, 'Doc-582403122023', 'JPY', 2, 'San Marino', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', 'Libero inventore suscipit id.', 0, NULL, NULL, 0, 408, 3, 0, '647', '2023-01-17 00:00:00.0000000', 839.37, 0, 0.00, '273', 0, 'تم اضافة الشهادة كمسودة ', '391fc073-868d-458b-8684-d9f9c59ecd70', '2023-12-03 16:05:09.6817238', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, 0, '32213213', '2023-09-07 00:00:00.0000000', 0, NULL),
('BD533C08-CBC9-4A03-A7CE-A15D56784230', NULL, '0001-01-01 00:00:00.0000000', '2023-11-27 00:00:00.0000000', '2023-11-28 00:00:00.0000000', '43434', '34434344', 'شركة الرصين', NULL, 'شركة الرصين', '3AFF0226-4B5D-40A1-9463-79CD19320E0C', '6AF1E546-0D6D-4F8F-9CF2-357FDA9FEC30', '5FA5254B-932E-4F14-BB51-0FA0DFDD3A7D', 'F3D15DFE-9004-4025-8C77-8AA3EC03DB72', 'Yemen', '3434', '2023-11-15 00:00:00.0000000', 43434.00, 343433434.00, 'Doc-910829112023', 'USD', 2, 'Antigua and Barbuda', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', '34343', 0, NULL, NULL, 0, 42625, 3, 0, '4343', '2023-11-28 00:00:00.0000000', 516850.15, 0, 0.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء  يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 0, 'تم اضافة الشهادة كمسودة ', '91d13a8e-7b01-41f3-91d0-132b48de3c57', '2023-11-29 20:12:08.4502618', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, 0, '4343', '2023-11-28 00:00:00.0000000', 0, NULL),
('D3654863-D8B7-425D-A80A-6EA4FC7981A7', NULL, '0001-01-01 00:00:00.0000000', '2024-07-28 00:00:00.0000000', '2024-09-20 00:00:00.0000000', '258', '624', 'Lolita.Abbott52', NULL, '175 Corwin Skyway', '816D5EF1-5FF8-40BA-888E-85D675E82845', 'FDD31EDE-5F7F-4F7B-9C12-78C9771AB4F7', '2EC91682-069B-42FE-8B56-C3D796F7B0A4', '9F799DD9-3052-4487-9AA3-6AF484095175', 'Nigeria', '372', '2024-06-05 00:00:00.0000000', 467.00, 514.00, 'Doc-258013122023', 'USD', 3, 'Iraq', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', 'Fugiat reprehenderit eligendi dolorum.', 0, NULL, NULL, 0, 201, 2, 0, '128', '2023-04-05 00:00:00.0000000', 320.00, 0, 35300.00, '392', 0, 'تم اضافة الشهادة كمسودة ', '6555caa9-b63a-4fab-9b5a-fbb1dab3aa28', '2023-12-13 07:35:48.1898015', '2023-12-13 07:36:22.2718239', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, 0, 'Laudantium officiis quidem nesciunt accusamus repellat nesciunt libero.', '2023-06-29 00:00:00.0000000', 0, NULL),
('DD140C60-0BB5-408E-B74D-8E1EEE3B184A', 'B000001', '2023-11-27 22:27:26.6752971', '2023-11-27 00:00:00.0000000', '2023-11-27 00:00:00.0000000', '32323', '2332323', 'شركة البهجاء', NULL, 'الصين', NULL, '0674FC05-6470-413E-8CBB-4449B2A3505E', 'BC89B2E8-3BA7-40BB-8547-EF4B3F87B1BF', '33D24EA0-830E-4706-B28D-0FFBBFA45558', 'China', '32323233', '2023-11-27 00:00:00.0000000', 23333.00, 2333.00, 'Doc-993627112023', 'USD', 1, 'Congo', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', 'يحتوى على مجموعة من الاشياء', 1, 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', '113622c6-ecc8-484d-9714-3c87ab0708f5', 1, 2222, 2, 1, '232323', '2023-11-27 00:00:00.0000000', 320.00, 1, 66650.00, 'يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء يحتوى على مجموعة من الاشياء ', 5, 'تم اضافة وثيقة اطلاق جديدة وانتظار قسم المتابعة: ', 'acefaeb6-243c-4935-b931-b618a5b3834a', '2023-11-27 20:32:25.0359158', '2023-11-28 17:19:38.9929171', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', '113622c6-ecc8-484d-9714-3c87ab0708f5', 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', 1, NULL, '0001-01-01 00:00:00.0000000', 0, NULL),
('FA8AA6AC-C2B7-4948-9706-C0175A8E164A', 'B000001', '2023-11-28 17:16:24.7047690', '2023-01-31 00:00:00.0000000', '2024-10-26 00:00:00.0000000', '408', '157', 'Gilda98', NULL, '2218 Martina Hills', '3BB23788-024A-4C6E-8122-9E81AFD851C5', '802D7873-E4EF-4375-B94C-45735F82B82C', '2AF6975F-8035-4A75-9C0B-119537798371', 'C5403DBC-330C-45F1-A433-6C2F08E88973', 'Monaco', '310', '2023-01-08 00:00:00.0000000', 55.00, 213.00, 'Doc-670627112023', 'USD', 3, 'Argentina', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', 'Delectus possimus odio eligendi voluptatem quaerat beatae minima quae.', 1, 'ceb3e531-f96e-4de0-9568-2dbd2f0f2972', NULL, 0, 28, 2, 0, '364', '2023-06-11 00:00:00.0000000', 320.00, 0, 49500.00, '586', 5, 'لاتوجد ملاحظات', '40c31b4b-6917-45d9-84ec-1e5278c61edc', '2023-11-27 14:38:05.2261167', '2023-11-28 17:16:25.4912190', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', 1, NULL, '0001-01-01 00:00:00.0000000', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificateofconformitycargos`
--

CREATE TABLE `certificateofconformitycargos` (
  `Id` varchar(36) NOT NULL,
  `NameAndNumber` longtext NOT NULL,
  `CargoValue` decimal(18,2) NOT NULL,
  `CargoValueInUsd` decimal(18,2) NOT NULL,
  `Description` longtext NOT NULL,
  `CertificateOfConformityId` varchar(36) NOT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` longtext DEFAULT NULL,
  `InsertByUserId` varchar(450) DEFAULT NULL,
  `UpdateBy` longtext DEFAULT NULL,
  `UpdateByUserId` varchar(450) DEFAULT NULL,
  `CargoCount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `certificateofconformitycargos`
--

INSERT INTO `certificateofconformitycargos` (`Id`, `NameAndNumber`, `CargoValue`, `CargoValueInUsd`, `Description`, `CertificateOfConformityId`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `InsertByUserId`, `UpdateBy`, `UpdateByUserId`, `CargoCount`) VALUES
('0CC67FF2-9D00-40BC-8569-A754416CFE1E', '5435', 546.00, 456.00, 'حاويات العاب', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', '2023-12-12 10:08:43.5068310', '2023-12-12 10:35:27.4210994', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, 4),
('1F03C35A-87B3-44C4-8A01-A7E4A9EF9B9C', 'sass', 223.00, 23232.00, '3233', '4B4E6F1D-6A16-4E49-A2C0-28477E93E312', '2023-12-01 13:35:07.7806923', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, 1),
('2782596B-E8C1-4F22-A0A6-BAD6411E5C2C', '2121', 12122.00, 12212.00, '1212121212', '7610010E-FE47-45A1-9D0D-877066D2C9E1', '2023-12-03 23:28:13.6779136', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, 1),
('5300160F-0FF4-43A7-B1F5-2C465CBBACAE', 'حاويات4ق', 243.00, 214.00, 'حاويات اجهزة', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', '2023-12-12 10:08:40.4397322', '2023-12-12 10:34:20.0857310', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, 34),
('5DBF8C52-CF49-4E1D-87A6-657AF190764B', 'حاوية العاب', 10.00, 500.00, 'حاويات العاب الكترونية', '45FE378B-FA2F-415A-AF40-9C6667B15C4A', '2023-12-12 12:57:36.7896331', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, 5),
('73A351C9-2D62-46B7-BF33-A02DB971E6AF', '2323', 3232.00, 2323.00, '3232', '28B74E04-DC22-4F39-86F4-B3163867F457', '2023-12-01 14:08:38.4954132', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, 23232),
('8306ACCB-235F-43F8-B571-BDEE9A2555A9', '656', 417.00, 104.00, 'Deleniti perferendis totam iusto tempore ipsam quos recusandae soluta eius.', 'D3654863-D8B7-425D-A80A-6EA4FC7981A7', '2023-12-13 07:36:20.0050745', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, 196),
('9D0493DD-D1C9-43B4-819F-29FA800297C9', '372', 187.00, 89.00, '89', 'FA8AA6AC-C2B7-4948-9706-C0175A8E164A', '2023-11-27 14:40:23.0941820', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, 990),
('BB7BA84A-0E9C-4C45-8A7D-393B6AE93241', 'assas', 32.00, 2323.00, '3232323', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', '2023-11-28 17:14:40.3424605', '2023-11-28 17:19:37.9009156', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, 1223),
('C4336980-6090-4FAF-93B0-9E85114B35ED', '323233', 2000.00, 2000.00, 'تيست تيست تيست', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', '2023-11-27 20:33:41.7525278', '2023-11-28 00:13:16.7827261', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, -9990),
('CE2FF280-B9E1-4915-A1A8-A4B2031CDBB4', '343434', 4343.00, 43434.00, '32233', '54448CB9-5124-4C3D-9F74-0820D2243C04', '2023-11-28 17:56:04.3008798', '2023-11-29 18:35:23.8739794', 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, 43434),
('FE0D0033-AB30-40FA-946F-C9E4DC4EF371', '178', 357.00, 273.00, 'Ipsa voluptates modi unde magni dolorum dolor.', 'D3654863-D8B7-425D-A80A-6EA4FC7981A7', '2023-12-13 07:36:22.2708672', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, 510);

-- --------------------------------------------------------

--
-- Table structure for table `certificateofconformityitems`
--

CREATE TABLE `certificateofconformityitems` (
  `Id` varchar(36) NOT NULL,
  `DeclaredQuantityOrUnit` int(11) NOT NULL,
  `ItemPhoto` longtext DEFAULT NULL,
  `MeasruingUnit` int(11) NOT NULL,
  `GoodValue` decimal(18,2) NOT NULL,
  `OriginAsMarkedOnGoods` longtext NOT NULL,
  `Description` longtext NOT NULL,
  `Brand` longtext NOT NULL,
  `BrandPhoto` longtext DEFAULT NULL,
  `Model` longtext NOT NULL,
  `IqStandardNoOrTR` longtext NOT NULL,
  `CertificateOfConformityId` varchar(36) NOT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` longtext DEFAULT NULL,
  `InsertByUserId` varchar(450) DEFAULT NULL,
  `UpdateBy` longtext DEFAULT NULL,
  `UpdateByUserId` varchar(450) DEFAULT NULL,
  `ModelPhoto` longtext DEFAULT NULL,
  `ExpiryDate` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `certificateofconformityitems`
--

INSERT INTO `certificateofconformityitems` (`Id`, `DeclaredQuantityOrUnit`, `ItemPhoto`, `MeasruingUnit`, `GoodValue`, `OriginAsMarkedOnGoods`, `Description`, `Brand`, `BrandPhoto`, `Model`, `IqStandardNoOrTR`, `CertificateOfConformityId`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `InsertByUserId`, `UpdateBy`, `UpdateByUserId`, `ModelPhoto`, `ExpiryDate`) VALUES
('1316805E-668C-411A-9CD0-A6371F6BE61F', 500, NULL, 8, 180.00, 'Deleniti rerum explicabo atque debitis accusantium ullam atque unde.', 'Fugiat id distinctio sit aperiam non tempore quibusdam.', 'Vero cupiditate praesentium cumque a pariatur.', NULL, 'Dolorem molestiae delectus quibusdam iusto.', '238', 'FA8AA6AC-C2B7-4948-9706-C0175A8E164A', '2023-11-27 14:39:47.1533692', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, NULL, '2023-02-18 00:00:00.0000000'),
('34233478-6AAB-45D2-9FA6-13B60F27CCCC', 232, NULL, 18, 508.00, 'Sapiente aliquid sint fugiat placeat.', 'Accusantium voluptas quis.', 'Et asperiores corporis.', NULL, 'Quos culpa nihil odit exercitationem modi impedit perspiciatis.', '525', 'FA8AA6AC-C2B7-4948-9706-C0175A8E164A', '2023-11-27 14:40:04.2674751', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, NULL, '2023-04-02 00:00:00.0000000'),
('37164210-EE75-43FB-A326-579265127193', 323, '2895eaaf-7332-426b-87ce-d0beef41c672.jpeg', 1, 232.00, '232', '323', '222', '9cbd236d-0207-48d1-8cde-72327bb762a1.jpeg', '232', '232', '4B4E6F1D-6A16-4E49-A2C0-28477E93E312', '2023-12-01 13:35:37.7902254', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, 'dd2e4699-5da0-4f1b-8f13-6851b12ea8a5.jpeg', '2023-12-01 00:00:00.0000000'),
('3E5B0014-3E76-498D-9EBA-3CA4057B9A89', 222, NULL, 1, 2222.00, '22222', 'تيست تيست تيست تيست تيست تيست', 'تيست تيست تيست', NULL, 'تيست تيست تيست', '22222222', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', '2023-11-27 20:34:10.0345230', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, NULL, '2023-11-27 00:00:00.0000000'),
('3F2C231C-7738-4B73-904D-39E735241F5D', 585, NULL, 16, 448.00, 'Asperiores inventore vel dolorem voluptate veniam quaerat quam.', 'Numquam praesentium explicabo.', 'Doloremque hic culpa blanditiis omnis delectus ab.', NULL, 'Officia assumenda optio delectus.', '39', 'FA8AA6AC-C2B7-4948-9706-C0175A8E164A', '2023-11-27 14:39:55.4230502', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, NULL, '2023-02-22 00:00:00.0000000'),
('4EB458A3-2F3B-4682-B716-7274FD7728A1', 323, '1108b06c-fa10-45a1-bea2-9922c492e04f.jpeg', 15, 232.00, '323332', '2323', '323', '09f49452-0479-4da0-8939-97b1cc0f8d15.jpeg', '23323', '232', '28B74E04-DC22-4F39-86F4-B3163867F457', '2023-12-01 14:08:58.5252270', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, '5aa1d9c6-259c-4696-8ab3-b2d5584fc069.jpeg', '0001-01-01 00:00:00.0000000'),
('62A04CF2-9C5E-4A13-AFE1-93A1A502DBA2', 2121, '80ce9ed4-a4d4-461b-abcf-752bab5c656e.png', 4, 121212.00, '1221', '1221212', '12121', '8ad9a419-da6e-45bb-b7ea-0dd198cfc0d5.png', '12121', '12122', '7610010E-FE47-45A1-9D0D-877066D2C9E1', '2023-12-03 23:28:59.7301010', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, '1db1d3eb-570d-446f-8b9b-d2a6316c584d.png', '0001-01-01 00:00:00.0000000'),
('68816C49-D640-408A-9CDA-4DE0A8653D08', 23323, '918abede-299c-4a72-b66a-a2d8b326985e.png', 1, 3232.00, '23232', '323233', '32323232', 'f8032d0a-4c45-4aa4-8990-852a18ed939c.png', '2332323', '23333', '54448CB9-5124-4C3D-9F74-0820D2243C04', '2023-11-28 17:56:07.0425315', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, 'a22719c8-3f5c-4a73-9676-ebac480d5efe.png', '2023-11-28 00:00:00.0000000'),
('6AD89CEC-5EC4-4FAD-B8B1-84510AB1E54E', 380, '47182ef5-7ec0-4e7d-8bf7-a2bd0e5d690b.jpg', 10, 375.00, 'Voluptates commodi doloribus laborum consequatur.', 'Voluptatibus at excepturi doloribus velit eum veniam perferendis molestias laboriosam.', 'Numquam laborum repellat nobis.', '1727ff47-e2b1-466a-9f98-e0728f07a3b2.png', 'Excepturi expedita voluptatem eius.', '293', 'FA8AA6AC-C2B7-4948-9706-C0175A8E164A', '2023-11-27 14:39:21.4388019', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL, '4cf95ae8-6b67-40ce-8374-7ccdfee2ad2c.png', '2023-06-03 00:00:00.0000000');

-- --------------------------------------------------------

--
-- Table structure for table `certificateofconformitylog`
--

CREATE TABLE `certificateofconformitylog` (
  `Id` varchar(36) NOT NULL,
  `CertificateOfConformityId` varchar(36) NOT NULL,
  `Action` longtext DEFAULT NULL,
  `Type` longtext DEFAULT NULL,
  `Note` longtext DEFAULT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` varchar(450) DEFAULT NULL,
  `UpdateBy` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `certificateofconformitylog`
--

INSERT INTO `certificateofconformitylog` (`Id`, `CertificateOfConformityId`, `Action`, `Type`, `Note`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `UpdateBy`) VALUES
('054DD438-2792-40D9-B425-0F0A8B620AE0', '00BAAD6F-B4AE-4EE7-849D-F497FE980389', 'اضافة', NULL, 'تم اضافه هذه الشهادة اعادة اصادر من الشهادة رقم B000001', '2023-12-01 14:21:20.7802617', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('082352AF-EF5D-473B-9D1F-113D79437F3D', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', 'اضافة', NULL, 'تم اضافة الشهادة كمسودة ', '2023-12-12 10:06:56.4081311', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('0E7BBC1F-41CF-4A16-B2F0-63B7D245BF95', 'FA8AA6AC-C2B7-4948-9706-C0175A8E164A', ' الى تغير حالة: انتظار المعالجة', NULL, 'نخه', '2023-11-27 14:40:34.2114118', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('194DD92C-F3E3-4F09-827C-7140E6E8830F', '73C4D117-7154-4BDE-851D-80E319DE0705', 'اضافة', NULL, 'تم اضافه هذه الشهادة اعادة اصادر من الشهادة رقم B000002', '2023-12-01 14:21:50.5395605', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('1DD69314-5217-4B9F-B8B0-5540A0BF132E', '4B4E6F1D-6A16-4E49-A2C0-28477E93E312', 'اضافة', NULL, 'تم اضافه هذه الشهادة اعادة اصادر من الشهادة رقم B000002', '2023-12-01 13:34:53.3593370', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('2213C7F1-BB2A-4399-AF12-3F920B54A4B3', 'D3654863-D8B7-425D-A80A-6EA4FC7981A7', 'اضافة', NULL, 'تم اضافة الشهادة كمسودة ', '2023-12-13 07:35:48.2244692', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('2375499E-E536-4D6E-965A-92204FDF40B3', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', 'اضافة وثيقة انطلاق', NULL, 'تم اضافة وثيقة اطلاق جديد وانتظار قسم المتابعة للتدقيق', '2023-12-12 10:35:27.4230583', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL),
('2DD785AB-0861-4E44-90ED-63F720D4D994', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', ' الى تغير حالة: تمت موافقة الادارة واضافة رقم Coc :B000003', NULL, 'lkjklj', '2023-12-12 10:22:56.7325272', NULL, 0, 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', NULL),
('3EAF93E1-F7DE-46DA-9172-5406CDDB8852', '54448CB9-5124-4C3D-9F74-0820D2243C04', 'تم الموافقة على وثيقة الاطلاق - : رقم الوثيقة  B000002-002', NULL, '21we', '2023-11-29 11:40:24.9863382', NULL, 0, 'cebe5990-384b-4892-ab0e-e2feb4a98586', NULL),
('3EEEEC7B-D5FE-47FC-B657-0E1828589CD2', 'FA8AA6AC-C2B7-4948-9706-C0175A8E164A', ' الى تغير حالة: تمت موافقة الادارة واضافة رقم Coc :B000001', NULL, 'لاتوجد ملاحظات', '2023-11-28 17:16:24.7085008', NULL, 0, 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', NULL),
('40AD34F3-3318-4E79-8232-CC8EE2F4A203', 'FA8AA6AC-C2B7-4948-9706-C0175A8E164A', 'اضافة', NULL, 'تم اضافة الشهادة كمسودة ', '2023-11-27 14:38:05.2550392', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('50B705B2-0F54-48FF-B5D1-5B8C02802338', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', 'اضافة', NULL, 'تم اضافة الشهادة كمسودة ', '2023-11-27 20:32:25.2720328', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('53B6A5C0-C3D9-475D-BB3E-1658B067D511', 'FA8AA6AC-C2B7-4948-9706-C0175A8E164A', ' الى تغير حالة: تمت موافقة الادارة ', NULL, 'لاتوجد ملاحظات', '2023-11-28 17:16:25.6887871', NULL, 0, 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', NULL),
('547E8308-89E6-44B1-952D-5EC751B3F57A', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', ' الى تغير حالة: تمت موافقة الادارة ', NULL, 'لاتوجد ملاحظات', '2023-11-27 22:23:57.7648836', NULL, 0, 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', NULL),
('625C9381-3BFB-4F93-8449-9B177DF7EA87', '54448CB9-5124-4C3D-9F74-0820D2243C04', 'اضافة وثيقة انطلاق', NULL, 'تم اضافة وثيقة اطلاق جديد وانتظار قسم المتابعة للتدقيق', '2023-11-29 17:21:30.3058786', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL),
('7376B4DC-EDBE-4A7F-9931-067F5BE42C21', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', ' الى تغير حالة: انتظار المعالجة', NULL, 'ث32234', '2023-11-27 12:50:34.4034323', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('7908082F-F533-49A8-B4A8-036615B94D67', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', 'اضافة وثيقة انطلاق', NULL, 'تم اضافة وثيقة اطلاق جديد وانتظار قسم المتابعة للتدقيق', '2023-12-12 10:34:20.0867771', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL),
('7A9F6F58-2130-42DD-BF9C-056C8EB8208D', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', 'تم الموافقة على وثيقة الاطلاق - : رقم الوثيقة  B000003-002', NULL, 'rbfdbgtdrgrdg', '2023-12-12 10:38:25.2048979', NULL, 0, 'cebe5990-384b-4892-ab0e-e2feb4a98586', NULL),
('7B7144FD-BAFC-41F2-BFF9-C87C480FD021', '54448CB9-5124-4C3D-9F74-0820D2243C04', 'تم الموافقة على وثيقة الاطلاق - : رقم الوثيقة  B000002-001', NULL, '21', '2023-11-29 11:40:16.1257421', NULL, 0, 'cebe5990-384b-4892-ab0e-e2feb4a98586', NULL),
('7D5D748C-0011-423B-9EFF-2BFBFE834114', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', 'تم الموافقة على وثيقة الاطلاق - : رقم الوثيقة  B000003-001', NULL, 'rgtdrgrdg', '2023-12-12 10:38:16.3213680', NULL, 0, 'cebe5990-384b-4892-ab0e-e2feb4a98586', NULL),
('7FAE4B3C-4198-4F68-B9FF-C3D24F71B15B', 'BD533C08-CBC9-4A03-A7CE-A15D56784230', 'اضافة', NULL, 'تم اضافة الشهادة كمسودة ', '2023-11-29 20:12:10.6998172', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('8895F5F7-C44D-473B-A485-B77C8672360F', 'FA8AA6AC-C2B7-4948-9706-C0175A8E164A', ' الى تغير حالة: تمت موافقة الادارة ', NULL, 'لاتوجد ملاحظات', '2023-11-28 17:15:25.0267250', NULL, 0, 'ceb3e531-f96e-4de0-9568-2dbd2f0f2972', NULL),
('8B1D2532-0241-49A7-A273-5A614B4224E6', '54448CB9-5124-4C3D-9F74-0820D2243C04', ' الى تغير حالة: تمت موافقة الادارة ', NULL, 'لاتوجد ملاحظات', '2023-11-28 17:59:51.4410355', NULL, 0, 'ceb3e531-f96e-4de0-9568-2dbd2f0f2972', NULL),
('8EFA948F-2492-4855-85EA-2FA4993CE0A3', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', 'اضافة وثيقة عدم اطلاق', NULL, 'تم اضافة وثيقة عدم اطلاق المرقمة : B000001-926648', '2023-11-28 00:13:17.0489190', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL),
('9007BAF8-6991-42D3-BEF6-86775D6A73CF', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', ' الى تغير حالة: تمت موافقة الادارة ', NULL, 'opiupoiop', '2023-12-12 10:21:06.1788309', NULL, 0, 'ceb3e531-f96e-4de0-9568-2dbd2f0f2972', NULL),
('9221CE16-CB6E-4F2F-BD40-A7B3718D367D', '54448CB9-5124-4C3D-9F74-0820D2243C04', ' الى تغير حالة: تمت موافقة الادارة ', NULL, 'لاتوجد ملاحظات', '2023-11-28 18:07:55.9524020', NULL, 0, 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', NULL),
('97DCC60E-2C96-4719-ABBE-14D9204D50D4', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', ' الى تغير حالة: تمت موافقة الادارة ', NULL, '3213213', '2023-11-27 12:51:05.4846328', NULL, 0, 'ceb3e531-f96e-4de0-9568-2dbd2f0f2972', NULL),
('9A1FECD8-4428-4E85-A616-9B143FDD8CF2', '54448CB9-5124-4C3D-9F74-0820D2243C04', ' الى تغير حالة: انتظار المعالجة', NULL, 'aaaa', '2023-11-28 17:57:36.0840113', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('A8A20F2A-6FB5-42BC-8BC5-24318F9E2FC2', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', ' الى تغير حالة: تمت موافقة الادارة ', NULL, 'لاتوجد ملاحظات', '2023-11-27 22:27:37.5591783', NULL, 0, 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', NULL),
('A9D513C1-C38A-40E7-A8E6-587134E8A740', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', ' الى تغير حالة: تمت موافقة الادارة ', NULL, 'lkjklj', '2023-12-12 10:22:56.7438954', NULL, 0, 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', NULL),
('AA5AABAA-F563-43EF-A7FA-992A344947C5', '12E11956-CCA2-4A04-A8FC-F5CE7B332D6D', 'اضافة', NULL, 'تم اضافة الشهادة كمسودة ', '2023-12-01 12:59:40.5511942', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('AD7FA978-BA4F-47FA-9C9C-3A78213C4AE2', '45FE378B-FA2F-415A-AF40-9C6667B15C4A', 'اضافة', NULL, 'تم اضافة الشهادة كمسودة ', '2023-12-12 12:53:53.7297172', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('ADA9B381-6DEC-4F65-8937-9B2C6A184451', '6549C694-189F-4C4E-A71A-67F6152E0EE1', 'اضافة', NULL, 'تم اضافه هذه الشهادة اعادة اصادر من الشهادة رقم ', '2023-12-01 14:27:13.6056945', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('B6F3C338-D98D-414C-ACE9-622BD34B89A1', '28B74E04-DC22-4F39-86F4-B3163867F457', 'اضافة', NULL, 'تم اضافة الشهادة كمسودة ', '2023-12-01 14:08:00.5054428', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('C1A91449-460E-4B5E-B28F-9A64E2BDA75C', '3CF1231E-D800-4089-9278-A0DE3358D040', 'اضافة', NULL, 'تم اضافة الشهادة كمسودة ', '2023-12-01 13:02:10.1138418', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('C6C6F4E5-5BFC-45AF-936F-C3E6E37F76A0', 'FA8AA6AC-C2B7-4948-9706-C0175A8E164A', ' الى تغير حالة: تمت موافقة الادارة ', NULL, 'خه', '2023-11-27 14:40:52.3887647', NULL, 0, 'ceb3e531-f96e-4de0-9568-2dbd2f0f2972', NULL),
('CD84832F-7C6C-4B09-BEA6-28ED69F0F07E', '54448CB9-5124-4C3D-9F74-0820D2243C04', ' الى تغير حالة: تمت موافقة الادارة واضافة رقم Coc :B000002', NULL, 'لاتوجد ملاحظات', '2023-11-28 18:07:54.7459831', NULL, 0, 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', NULL),
('D3278248-312B-4D32-928A-2CDE2D5B9409', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', 'عملية الدفع', NULL, 'تم عملية دفع مبلغ مكتب الاصدار المبلغ هو : 320.00', '2023-11-27 22:43:39.9321361', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('D5C1E789-1E18-4E55-AF35-3A35F609B674', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', 'تم الموافقة على وثيقة الاطلاق - : رقم الوثيقة  B000001-001', NULL, 'تم التددقيق', '2023-11-28 14:04:37.4209580', NULL, 0, 'cebe5990-384b-4892-ab0e-e2feb4a98586', NULL),
('D5C239D9-B524-44ED-A89F-574198DFF6E0', '54448CB9-5124-4C3D-9F74-0820D2243C04', 'اضافة وثيقة انطلاق', NULL, 'تم اضافة وثيقة اطلاق جديد وانتظار قسم المتابعة للتدقيق', '2023-11-29 16:58:59.2035852', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL),
('D70CA208-D195-41BB-AD6C-A39D5A5870BD', '54448CB9-5124-4C3D-9F74-0820D2243C04', 'اضافة وثيقة انطلاق', NULL, 'تم اضافة وثيقة اطلاق جديد وانتظار قسم المتابعة للتدقيق', '2023-11-29 17:34:38.3876409', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL),
('D87CAD1F-8ACE-43B4-8A3C-1BC254551F5D', '54448CB9-5124-4C3D-9F74-0820D2243C04', 'اضافة وثيقة عدم اطلاق', NULL, 'تم اضافة وثيقة عدم اطلاق المرقمة : B000002-969842', '2023-11-29 18:35:24.7939146', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL),
('D884C31B-6F74-4FA6-918D-A1A593AD813B', '54448CB9-5124-4C3D-9F74-0820D2243C04', 'اضافة', NULL, 'تم اضافة الشهادة كمسودة ', '2023-11-28 17:55:24.6578019', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('E26FF594-D2CE-4F1F-84ED-7257EA593CA2', '19EDACDE-26B4-47EE-8B31-C4FC328B6513', 'اضافة', NULL, 'تم اضافه هذه الشهادة اعادة اصادر من الشهادة رقم ', '2023-12-01 14:19:51.9409173', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('EF88AD3E-262F-410F-9DE3-7759A5354D96', '6788D1DC-0CB0-4FBF-BFDE-EE23C012C53A', 'اضافة', NULL, 'تم اضافه هذه الشهادة اعادة اصادر من الشهادة رقم B000002', '2023-12-01 13:41:45.5877162', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('F349FFC2-5EC7-4198-92A2-68B982B85DE7', '9EC8479D-E96C-48F7-9052-5FA693E20929', 'اضافة', NULL, 'تم اضافة الشهادة كمسودة ', '2023-12-03 16:05:09.7245072', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('FCED1E2C-8954-4B7E-9801-56138928CE56', '54448CB9-5124-4C3D-9F74-0820D2243C04', 'اضافة وثيقة عدم اطلاق', NULL, 'تم اضافة وثيقة عدم اطلاق المرقمة : B000002-865027', '2023-11-29 17:40:46.8905036', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL),
('FE0CD55C-EA95-4CBB-AEC5-55C5B3F966BE', '7610010E-FE47-45A1-9D0D-877066D2C9E1', 'اضافة', NULL, 'تم اضافة الشهادة كمسودة ', '2023-12-03 23:27:58.2759788', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('FEBFB5D7-9EE6-45CD-BCED-9B0E1C866320', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', ' الى تغير حالة: تمت موافقة الادارة واضافة رقم Coc :B000001', NULL, 'لاتوجد ملاحظات', '2023-11-27 22:27:28.1162216', NULL, 0, 'f6ce5a8a-9985-410c-bfed-cccf2c94dbca', NULL),
('FED295C2-42DB-499A-ADFB-B09AE82B8F02', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', 'عملية الدفع', NULL, 'تم عملية دفع مبلغ المنافذ المبلغ هو : 500.00', '2023-11-27 23:10:13.2486738', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificateofinspectionitem`
--

CREATE TABLE `certificateofinspectionitem` (
  `Id` varchar(36) NOT NULL,
  `DescritptionOfGoods` longtext DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `MeasruingUnitType` int(11) NOT NULL,
  `CertificateOfInspectionId` varchar(36) NOT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` longtext DEFAULT NULL,
  `InsertByUserId` varchar(450) DEFAULT NULL,
  `UpdateBy` longtext DEFAULT NULL,
  `UpdateByUserId` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificateofinspections`
--

CREATE TABLE `certificateofinspections` (
  `Id` varchar(36) NOT NULL,
  `CertificateNo` longtext DEFAULT NULL,
  `Exporter` longtext DEFAULT NULL,
  `Applicant` longtext DEFAULT NULL,
  `ReferenceDocument` longtext DEFAULT NULL,
  `InvoiceDate` varchar(27) NOT NULL,
  `DateOfInspection` varchar(27) DEFAULT NULL,
  `InvoiceNo` longtext DEFAULT NULL,
  `EntryPointOfLoadingId` varchar(36) DEFAULT NULL,
  `EntryPointOfDischargeId` varchar(36) DEFAULT NULL,
  `EntryPointOfDischargeId1` varchar(36) DEFAULT NULL,
  `Commodity` longtext DEFAULT NULL,
  `PlaceOfInspection` longtext DEFAULT NULL,
  `CountryOfOriginOfGoods` longtext DEFAULT NULL,
  `DescriptionOfGoods` longtext DEFAULT NULL,
  `Inspection` longtext DEFAULT NULL,
  `Conclusion` longtext DEFAULT NULL,
  `Remark` longtext DEFAULT NULL,
  `Consignee` longtext DEFAULT NULL,
  `NotifyParty` longtext DEFAULT NULL,
  `Price` decimal(18,2) DEFAULT NULL,
  `IsPaid` tinyint(1) NOT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` varchar(450) DEFAULT NULL,
  `UpdateBy` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientusers`
--

CREATE TABLE `clientusers` (
  `Id` varchar(450) NOT NULL,
  `InsertBy` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clientusers`
--

INSERT INTO `clientusers` (`Id`, `InsertBy`) VALUES
('0d0dd847-a381-40e7-bc60-608047900e3d', '7a370b48-04c9-4e5b-82ed-62897b60c268'),
('120a5bbd-a31c-4a80-b972-1efaea6763c1', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('1904dfb5-61f3-4025-ac19-7833802f31ba', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('19fcfcb8-c34c-48f2-b60c-b642cad687cb', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('1afccf8c-3cbe-4b2f-85e5-7f6203d71e77', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('1e17e6e6-7845-4026-8fd2-67409e486c81', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('287b8108-39c6-4ede-8a84-7a4207ec0ec5', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('29791f9a-a818-4f66-9e9d-a667e5280e2a', '7a370b48-04c9-4e5b-82ed-62897b60c268'),
('29a6d8e4-b0b9-4ee6-9aa6-0f9e4013c2f8', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('2a35a948-be1e-43b5-b21a-63dc585f3aed', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('35f67910-90fb-4de6-a336-54f140cd7ac6', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('391fc073-868d-458b-8684-d9f9c59ecd70', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('40c31b4b-6917-45d9-84ec-1e5278c61edc', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('4ad698fb-01aa-4f9b-9cde-65cefbe0532f', '7a370b48-04c9-4e5b-82ed-62897b60c268'),
('4b921650-c0f7-4dbb-8b2e-7d2242e319d9', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('4c2bea1b-595a-487e-85e7-36448e2be5bf', '7a370b48-04c9-4e5b-82ed-62897b60c268'),
('4c7019ac-5275-4484-bd99-e98670f2758d', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('50e4b0fa-2228-46aa-890a-ca91eba65fcd', '7a370b48-04c9-4e5b-82ed-62897b60c268'),
('5fe6428c-0384-4ea5-8a17-d83cd4103bc3', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('6555caa9-b63a-4fab-9b5a-fbb1dab3aa28', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('66fbd1bf-d1d3-48d7-86b3-ed7026e4dbac', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('694cdb52-39af-449d-9c60-8d653b6b8b07', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('6faae949-488d-4a97-9183-77ff8c5ff65b', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('71e3f942-6eda-4207-bfd3-a5852d75b2a3', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('725e6165-ec46-484b-beba-17cf8a9250f0', '7a370b48-04c9-4e5b-82ed-62897b60c268'),
('8d8ea9d0-2e43-4f80-942e-eba1290823ad', '7a370b48-04c9-4e5b-82ed-62897b60c268'),
('91d13a8e-7b01-41f3-91d0-132b48de3c57', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('94307624-7870-49bc-920d-c4daafcf91fb', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('96b080c4-a23e-4e58-a356-a2b2f39bbaf3', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('a15f5dae-8862-408d-a693-13d49576dd4f', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('acefaeb6-243c-4935-b931-b618a5b3834a', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('ada2b672-6c9e-40d2-bac2-566bab1795c3', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('adee98a7-90fb-4ae4-bc27-2f17f230624d', '7a370b48-04c9-4e5b-82ed-62897b60c268'),
('b3e4f224-e6f0-4ddc-b144-bd2cbce9ef39', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('beb1b23c-63dc-4fc8-b133-bd6e111ab079', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('c0211c26-aaa7-4437-96a3-3e4dcc72dfcc', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('c57dbdf2-4ba8-40c1-ae00-49b03ea2e68f', '7a370b48-04c9-4e5b-82ed-62897b60c268'),
('c88abf74-d1c9-4a65-a490-483358c8aaa4', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('cb858a30-ea1b-4af5-b7fa-61766d568c73', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('d9b889d4-0ff5-4f59-92f7-3d7790f8dd57', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('da8e60b5-df75-4c90-89b0-ad0113c894e2', '7a370b48-04c9-4e5b-82ed-62897b60c268'),
('ddc1447a-87f9-46b3-8600-0c0ac74fdd06', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('e4e2fbb4-7a96-450b-b8b7-52b2568b1166', '7a370b48-04c9-4e5b-82ed-62897b60c268'),
('e8d4b8bc-178b-443b-aab0-0654ba975542', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('f1a5a857-9b9d-4693-bdd0-6e9786e6ee4d', '7a370b48-04c9-4e5b-82ed-62897b60c268'),
('fb30eaf8-13ad-44d1-9ade-9a03b21902a9', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec'),
('fd1e8816-e12a-4d0e-9d50-950281fb5bba', '7a370b48-04c9-4e5b-82ed-62897b60c268'),
('ff7c6d68-54eb-4678-b696-840aab7514fa', '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec');

-- --------------------------------------------------------

--
-- Table structure for table `docattachments`
--

CREATE TABLE `docattachments` (
  `Id` varchar(36) NOT NULL,
  `FileName` longtext DEFAULT NULL,
  `FileExtension` longtext DEFAULT NULL,
  `FileDescription` longtext DEFAULT NULL,
  `FileSize` longtext DEFAULT NULL,
  `DocId` varchar(36) DEFAULT NULL,
  `NonConformityReportId` varchar(36) DEFAULT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` varchar(450) DEFAULT NULL,
  `UpdateBy` longtext DEFAULT NULL,
  `UpdateByUserId` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `docattachments`
--

INSERT INTO `docattachments` (`Id`, `FileName`, `FileExtension`, `FileDescription`, `FileSize`, `DocId`, `NonConformityReportId`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `UpdateBy`, `UpdateByUserId`) VALUES
('0181863C-BB12-4F32-8D72-1AEADA8AB220', 'f2c8f0e1-edb9-4755-8c89-a8e7e8fa1aef.png', '.png', '}ertificate Of Origin Attached', '179865', NULL, NULL, '2023-11-24 02:16:28.1358208', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('0674FC05-6470-413E-8CBB-4449B2A3505E', '66ac7e0b-b393-469a-ba7c-885f6326592f.png', '.png', 'ertificate Of Origin Attached', '103394', NULL, NULL, '2023-11-27 20:30:21.1206605', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('0BFBD1B6-5EBE-4628-AF08-0792EEDC237F', '2d91f5e2-9d3f-4283-a3c5-9917ac97493b.jpg', '.jpg', 'contract Agreement Attached', '12779332', NULL, NULL, '2023-11-26 16:12:23.2424057', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('0F09C02A-BC38-4D3C-9F0E-3D3CC0C3591E', '0cfd47dd-d9a6-4bb1-a0a7-b8efd5444871.gif', '.gif', 'test', '1850', 'A8919357-9C47-4F9A-89B0-C51ACAA1AF72', NULL, '2023-11-26 17:26:36.3085081', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('135037FD-9692-47D0-AE6A-24A672A2E3DC', '744eb570-f264-4069-b4eb-4fdda2bc0854.jpg', '.jpg', 'contract Agreement Attached', '94635', NULL, NULL, '2023-11-24 11:29:33.2160850', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('15044AD3-F23C-4CC0-ADB0-30C5DC935D12', 'e5978b94-60b3-4a24-97f0-494a8a4b8b5f.png', '.png', 'contract Agreement Attached', '103394', NULL, NULL, '2023-11-27 16:46:37.2200402', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('157A1941-4E8E-48FB-9F69-1C3D33FA066B', '88a94cd7-a223-4300-812c-3303ec693afb.jpg', '.jpg', 'invoice Attached', '7282731', NULL, NULL, '2023-11-26 16:11:16.5227823', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('161B567B-45B5-4F8C-9A5C-3120031EA95F', '13e2bb71-43ba-46b4-b155-0f0f49b42ecd.jpg', '.jpg', 'ertificate Of Origin Attached', '560007', NULL, NULL, '2023-12-12 12:48:58.2520597', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('23A17BA6-A764-4259-BFB2-3E321EEDB7CC', '13ce75c7-d566-412c-b5a4-72741caf85b0.png', '.png', 'invoice Attached', '103394', NULL, NULL, '2023-11-24 06:47:58.9763128', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('23BE1C60-8464-412D-A92B-1122F389B75B', 'c637658c-eb7f-4910-8f47-cdc1c3df08d1.jpg', '.jpg', 'Certificate with stamp from branch', '846309', '5D545BCC-71DD-43ED-A215-DEDC45CAC8FD', NULL, '2023-12-01 14:36:45.8052896', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL),
('2579C346-5D4D-42FA-AF57-3B3055BAC632', '65406de4-49e8-49dd-b516-3508fe781d3a.png', '.png', 'invoice Attached', '103394', NULL, NULL, '2023-11-24 05:58:19.2747510', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('2AF6975F-8035-4A75-9C0B-119537798371', '75b59cbf-1713-45fc-a593-3d2a9b04009d.jpg', '.jpg', 'invoice Attached', '127565', NULL, NULL, '2023-11-27 14:36:40.9546831', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('2C89D0A0-5277-45E8-8E67-175B02DDF268', '78877b76-3101-4690-9431-d85bc909a604.jpg', '.jpg', 'invoice Attached', '214513', NULL, NULL, '2023-11-24 13:08:21.1909459', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('2D1EB9AA-A24B-4F44-8132-2DEE61F346CB', '7b40a6fb-ee1f-4768-ae56-0f7e7425b6f7.txt', '.txt', 'contract Agreement Attached', '508', NULL, NULL, '2023-12-12 10:05:16.1559822', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('31226BF0-1797-4E29-9420-38DE3C246D18', 'f09fffda-6e64-40e2-817f-7ddc39d745dc.gif', '.gif', 'ertificate Of Origin Attached', '1850', NULL, NULL, '2023-11-26 16:57:49.6986483', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('315AEE6F-FA8B-416E-889A-10321C4874B6', 'ea927871-e2a0-493f-81f7-eec22dfb7c40.jpg', '.jpg', 'contract Agreement Attached', '94635', NULL, NULL, '2023-11-24 12:59:06.3723545', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('33D24EA0-830E-4706-B28D-0FFBBFA45558', '901eaa81-d237-4e3b-b8cb-a7deb6873365.png', '.png', 'Packing List Attached', '103394', NULL, NULL, '2023-11-27 20:31:08.9814163', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('3B9A1473-D17D-4EB6-8EA4-33FD5E8BFFA5', '3cc6f6d4-55cf-466f-9a40-5fea82be6d2d.png', '.png', 'Certificate with stamp from branch', '183009', '54448CB9-5124-4C3D-9F74-0820D2243C04', NULL, '2023-11-28 17:56:50.5715513', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('4BB727E5-B717-4D3B-A4D6-2F9C01472B24', '3f47ffdd-1ee9-4acc-94d9-1be5a824af4a.jpg', '.jpg', 'contract Agreement Attached', '127565', NULL, NULL, '2023-11-24 11:32:38.1272729', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('4D947295-12AB-40CC-80CE-0436CE20034D', '02731287-5828-465c-89c3-b886f6235543.png', '.png', 'ertificate Of Origin Attached', '7488492', NULL, NULL, '2023-11-25 16:13:49.0090074', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('4E6994E0-CF73-47CE-AD51-0A434B7E2DA1', '7cc1d6e1-b2b7-4f4d-9769-40889126c84f.jpg', '.jpg', 'contract Agreement Attached', '560007', NULL, NULL, '2023-12-12 12:47:52.8914699', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('4FBC8580-66ED-41FD-AC28-277535DFBDE2', 'b4fdde47-d3dd-4eae-bbc6-3eedb6f6aac9.jpg', '.jpg', '6876', '560007', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', NULL, '2023-12-12 10:16:04.9551659', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('5702D676-3A8F-4A10-8B84-20C3199DF01B', '4c82bcfb-2d97-489a-b0fc-b53c9c83d298.jpg', '.jpg', 'Signed Certificate COC/NCR from coc center', '193400', '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', NULL, '2023-12-12 10:16:11.5899785', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('5FA5254B-932E-4F14-BB51-0FA0DFDD3A7D', '9d618999-f672-4f22-8c40-ae4adcda5e2b.png', '.png', 'invoice Attached', '216143', NULL, NULL, '2023-11-28 17:54:56.6133100', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('601CC599-173E-451E-9B1A-2ED08F14885C', 'e59eac53-e8e4-47dc-90bf-1eaeab9562f3.jpg', '.jpg', 'contract Agreement Attached', '214513', NULL, NULL, '2023-11-26 07:09:43.2899680', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('6A1CBC5E-BC51-4C51-88BD-073CE2AB6EB2', '17aef037-e835-44dd-90e8-597ac1cb2c8c.jpeg', '.jpeg', 'Certificate with stamp from branch', '202704', '15F2D36E-1A58-4C2B-BF3B-3CC2B3CCB310', NULL, '2023-11-26 07:33:31.0661259', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL),
('6AF1E546-0D6D-4F8F-9CF2-357FDA9FEC30', 'c54bae65-e1e9-49e8-92ea-0a8bd162608e.png', '.png', 'ertificate Of Origin Attached', '84409', NULL, NULL, '2023-11-28 17:54:28.7907592', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('707E8FBE-36CF-40AA-B203-0AEEA4059708', 'f3de2af4-3d6c-4f78-bdf0-a1e06261999b.png', '.png', 'Signed Certificate COC/NCR from coc center', '84409', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', NULL, '2023-11-27 22:28:52.8343208', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('73FD2EF3-B17F-48C2-A505-3FFD674EAE38', 'cda77f4f-b71b-4949-8a5b-79bdb75725ff.png', '.png', 'Commercial Invoice', '68929', 'A1573A27-544A-4E42-B99C-2F5E09BEBB4A', NULL, '2023-11-29 13:43:02.1505370', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('749D5832-976A-400B-A77B-3FCBD2D5E204', 'dedd6d42-dd3e-4b5d-9227-ee4161bac167.png', '.png', 'contract Agreement Attached', '103394', NULL, NULL, '2023-11-24 12:28:52.1372181', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('75B3F2F1-E287-4262-8B88-2E9CDFFDA099', '9efe67a2-e5ab-43f1-bd0e-f3e8cbe0cc6d.jpg', '.jpg', 'Packing List', '174955', '188DC0C1-E916-4A8F-A4E0-1A311E740386', NULL, '2023-11-27 19:02:19.7782628', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('7D1B86EE-BA6D-4650-AE35-381B88277E46', '4594f5cc-fe3d-4e89-b896-58a82548c252.jpeg', '.jpeg', 'contract Agreement Attached', '8418', NULL, NULL, '2023-11-26 16:12:47.3189923', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('9B614D44-74FE-46A0-995B-386DBEB44EEA', 'e3fa1ac9-fcce-4746-b9a9-0a0162876f29.png', '.png', 'Commercial Invoice', '103394', 'A4A1D924-0A10-4100-BDCD-7FA50E05B500', NULL, '2023-11-24 13:08:20.8952319', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('A5F5F97C-AD69-47BE-B254-34B53055888E', '20bee139-058b-46ac-8ca8-7f203f071177.gif', '.gif', 'Packing List Attached', '1850', NULL, NULL, '2023-11-26 16:59:42.6699514', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('A81C48ED-C81A-4805-B88D-16161AF08B2D', '37e986a6-a6ae-421b-8577-f18033b86d64.png', '.png', 'contract Agreement Attached', '103394', NULL, NULL, '2023-11-24 05:52:51.9010652', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('B221636A-1307-43D8-B3A9-3FE6F499AA1B', 'cb807b9d-b0d4-4387-918b-715554625e12.png', '.png', 'ertificate Of Origin Attached', '103394', NULL, NULL, '2023-11-24 05:55:06.0225352', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('BCC75090-C106-4959-B223-119F5882D006', '2030e3f5-28aa-4aa5-9360-9d4d15c535a7.png', '.png', 'contract Agreement Attached', '91670', NULL, NULL, '2023-11-24 06:44:28.9194107', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('CC87413D-5EEC-426C-8A64-2FD86C0EF073', 'f2ab1fd8-0ca4-4e4b-b19d-f6d2f832990e.png', '.png', 'invoice Attached', '103394', NULL, NULL, '2023-11-24 06:45:20.9071767', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('D87FD485-F57F-4735-91F3-39AE8F73436D', '14da003d-56dc-4b5a-9362-68129bc75c5a.jpg', '.jpg', 'invoice Attached', '560007', NULL, NULL, '2023-12-12 12:50:43.6158365', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('DE5EDB3F-2F55-4A9D-82DD-2AC35161482B', '53ab9b20-3ba6-4915-b0ff-3cca0a5108e2.png', '.png', 'Packing List Attached', '103394', NULL, NULL, '2023-11-24 06:45:37.9329808', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('E0197131-8BA0-41C8-9C00-199C9B368618', '74bdd07d-30ad-470e-8a64-b9f3f5d80fcb.png', '.png', 'ertificate Of Origin Attached', '103394', NULL, NULL, '2023-11-24 12:29:04.0032918', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('E29BCFD7-AD5C-4F61-BCE3-2AFEC57D2AF4', 'fe572db0-49a9-4344-a48f-e15a12d74de2.png', '.png', 'Packing List Attached', '103394', NULL, NULL, '2023-11-24 06:41:11.6004378', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('E3A20D38-3EB0-4AEF-BA05-11201AF38F44', '083c8327-e655-4ea0-ad5d-4f522c88c0d5.png', '.png', 'ertificate Of Origin Attached', '179865', NULL, NULL, '2023-11-24 11:30:58.8237112', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('E4866561-DB1D-4808-ABA3-1160512B6921', 'b9d16d47-c9fd-478b-b7bb-511f3a4853d2.jpg', '.jpg', 'contract Agreement Attached', '174955', NULL, NULL, '2023-11-27 15:09:04.8520645', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('E7E8991B-DEBB-4794-9D63-3E1BC326E0D4', 'ef134905-7895-420e-9eb7-cc32418d6b8f.gif', '.gif', 'invoice Attached', '1850', NULL, NULL, '2023-11-26 17:07:32.7643985', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('EB7FA78A-47D7-4B82-BD9F-39DDD596912E', 'dc722ea7-7b83-4e67-90ad-591cb782f0c5.jpg', '.jpg', 'contract Agreement Attached', '174955', NULL, NULL, '2023-11-27 15:11:55.9276544', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('EF0DA4AE-143C-4DE2-9E39-14CFC4B52F00', '2109f448-dc65-456f-8c09-f6cb08bdf746.jpeg', '.jpeg', 'Packing List Attached', '202704', NULL, NULL, '2023-11-24 11:31:06.9608686', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('F748AB72-1ACA-403C-9184-0BBAF2FCF9EE', 'f23a6aba-86dc-40a7-9a7d-bbedee8f84ef.jpg', '.jpg', 'invoice Attached', '127565', NULL, NULL, '2023-11-24 11:29:50.3422527', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('FC7736C7-453C-48DC-AAC5-403AE20D46BE', '1d45f415-a48a-4b00-878c-c51f2431b148.png', '.png', 'Packing List Attached', '91670', NULL, NULL, '2023-11-24 05:58:21.9142264', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('FE22702A-49ED-4F64-BDF6-135D0E30889D', '6c41f7b3-395d-4ba9-8f23-3f4de3ec009b.png', '.png', 'contract Agreement Attached', '676785', NULL, NULL, '2023-12-04 10:35:59.5127024', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employeeusers`
--

CREATE TABLE `employeeusers` (
  `Id` varchar(450) NOT NULL,
  `JobTitle` longtext NOT NULL,
  `EntryPointId` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employeeusers`
--

INSERT INTO `employeeusers` (`Id`, `JobTitle`, `EntryPointId`) VALUES
('113622c6-ecc8-484d-9714-3c87ab0708f5', 'ادارة منفذ البصرة', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9'),
('60f0aa54-c651-44c7-8163-86d662e674d5', 'centraldevic', NULL),
('7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', 'مكتب اصدار', NULL),
('ceb3e531-f96e-4de0-9568-2dbd2f0f2972', 'مكتب الادارة', NULL),
('cebe5990-384b-4892-ab0e-e2feb4a98586', 'متابعة منفذ البصرة', 'A86B2CAA-BDA4-4309-B039-9F7FE807E1A9'),
('f6ce5a8a-9985-410c-bfed-cccf2c94dbca', 'مكتب ادارة داخلي', NULL),
('f84c0c80-a0c0-46cb-8411-e8c70145e826', 'ادارة النظام', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `entrypoints`
--

CREATE TABLE `entrypoints` (
  `Id` varchar(36) NOT NULL,
  `Name` longtext DEFAULT NULL,
  `Note` longtext DEFAULT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` longtext DEFAULT NULL,
  `InsertByUserId` varchar(450) DEFAULT NULL,
  `UpdateBy` longtext DEFAULT NULL,
  `UpdateByUserId` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `entrypoints`
--

INSERT INTO `entrypoints` (`Id`, `Name`, `Note`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `InsertByUserId`, `UpdateBy`, `UpdateByUserId`) VALUES
('A86B2CAA-BDA4-4309-B039-9F7FE807E1A9', 'منفذ البصرة', 'منفذ البصرة', '2023-11-23 01:17:57.6824302', '2023-11-23 01:17:57.6824319', 0, 'f84c0c80-a0c0-46cb-8411-e8c70145e826', NULL, 'f84c0c80-a0c0-46cb-8411-e8c70145e826', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `Id` varchar(36) NOT NULL,
  `CompanyFee` decimal(18,2) NOT NULL,
  `CosqcFee` decimal(18,2) NOT NULL,
  `SystemFee` decimal(18,2) NOT NULL,
  `TatweerFee` decimal(18,2) NOT NULL,
  `ServiceFee` decimal(18,2) NOT NULL,
  `CertificateOfConformityId` varchar(36) NOT NULL,
  `PaymentFor` int(11) NOT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` varchar(450) DEFAULT NULL,
  `UpdateBy` longtext DEFAULT NULL,
  `UpdateByUserId` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`Id`, `CompanyFee`, `CosqcFee`, `SystemFee`, `TatweerFee`, `ServiceFee`, `CertificateOfConformityId`, `PaymentFor`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `UpdateBy`, `UpdateByUserId`) VALUES
('C9557BA5-C9B6-4886-AB07-70B54FA9688D', 100.00, 160.00, 210.00, 5.00, 25.00, 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', 2, '2023-11-27 23:10:12.3866330', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('F805C54F-69AF-4F2D-861D-12F2E8AE242C', 64.00, 102.40, 134.40, 3.20, 16.00, 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', 1, '2023-11-27 22:43:33.3402277', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL),
('FA3087AB-D67F-4C0D-9D5A-451137CA4A07', 2440.00, 3904.00, 5124.00, 122.00, 610.00, '70400F6F-E9F4-4A6B-9169-0BDE2C6FDB53', 2, '2023-12-12 10:27:16.8928201', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nonconformityreportitems`
--

CREATE TABLE `nonconformityreportitems` (
  `Id` varchar(36) NOT NULL,
  `DeclaredQuantityOrUnit` int(11) NOT NULL,
  `MeasruingUnit` int(11) NOT NULL,
  `OriginAsMarkedOnGoods` longtext NOT NULL,
  `Description` longtext NOT NULL,
  `Brand` longtext NOT NULL,
  `Model` longtext NOT NULL,
  `IqStandardNoOrTR` longtext NOT NULL,
  `NonConformityReportId` varchar(36) NOT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` varchar(450) DEFAULT NULL,
  `UpdateBy` longtext DEFAULT NULL,
  `UpdateByUserId` varchar(450) DEFAULT NULL,
  `ExpiryDate` varchar(27) NOT NULL DEFAULT '0001-01-01T00:00:00.0000000',
  `BrandPhoto` longtext DEFAULT NULL,
  `GoodValue` decimal(18,2) NOT NULL DEFAULT 0.00,
  `ItemPhoto` longtext DEFAULT NULL,
  `ModelPhoto` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nonconformityreportitems`
--

INSERT INTO `nonconformityreportitems` (`Id`, `DeclaredQuantityOrUnit`, `MeasruingUnit`, `OriginAsMarkedOnGoods`, `Description`, `Brand`, `Model`, `IqStandardNoOrTR`, `NonConformityReportId`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `UpdateBy`, `UpdateByUserId`, `ExpiryDate`, `BrandPhoto`, `GoodValue`, `ItemPhoto`, `ModelPhoto`) VALUES
('2A1D8374-FAFB-4428-8957-585976318BCF', 3443, 1, '3223223', '34343443', '344433', '3233223', '433344334', '635210C1-0CBC-46DF-B6F9-D0F1F617C279', '2023-11-29 14:17:10.4788660', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, '2023-11-29 00:00:00.0000000', '704f1bb2-15a8-4c9e-81b7-b34a8af89c40.png', 3433.00, '9689bd08-ae30-45de-a086-38671b3dab68.png', '727cf7eb-d74a-4df8-814a-dd33cf20d43a.png'),
('581A0043-FDAE-42CE-A805-69BCC1E57C4B', 23, 4, '3232333', 'testy', 'testy', 'testy', '22233', 'FC244A3A-E6F2-4D4A-9E5D-8925462F05E0', '2023-11-29 16:12:30.9802131', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, '2023-11-29 00:00:00.0000000', '96789a72-3183-4e0b-83cb-4f02d6963782.png', 3232.00, '27606a60-8be5-4dc5-a6aa-ac9349b6066c.png', '1d6f3b93-552d-4782-8857-7f7936ab5efe.png'),
('7E3E9F38-E188-4177-991E-CB1BBA96FAEC', 32233, 1, '32323232', 'dwdw', 'dwddd', 'dwdwd', '3233', 'A9AAA9E9-5ED7-46D6-9873-097B2DD55991', '2023-11-29 16:18:22.4224951', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, '2023-11-29 00:00:00.0000000', NULL, 323.00, NULL, NULL),
('FB2168C6-A4AE-47A3-BEDD-4FE004C48762', 32, 19, '323', 'dwd', 'scsscs', 'dwdw', '32323', 'A1573A27-544A-4E42-B99C-2F5E09BEBB4A', '2023-11-25 14:50:59.8405561', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, '2023-11-23 00:00:00.0000000', 'ab0dab6b-ebd1-4a32-82e5-a8248fcf3367.png', 3232.00, '248f8d35-176e-420e-943f-c1dd4d1416aa.png', '024062e3-91aa-49ee-a967-ba161eaa615a.png');

-- --------------------------------------------------------

--
-- Table structure for table `nonconformityreports`
--

CREATE TABLE `nonconformityreports` (
  `Id` varchar(36) NOT NULL,
  `NcrNumber` longtext DEFAULT NULL,
  `IssueDate` varchar(27) NOT NULL,
  `ReferenceNumber` longtext DEFAULT NULL,
  `ExporterName` longtext DEFAULT NULL,
  `ExporterAddress` longtext DEFAULT NULL,
  `ExporterCountry` longtext DEFAULT NULL,
  `InvoiceNumber` longtext DEFAULT NULL,
  `InvoiceDate` varchar(27) NOT NULL,
  `InvoiceValue` decimal(18,2) NOT NULL,
  `InvoiceValueInUsd` decimal(18,2) NOT NULL,
  `InvoiceMark` longtext DEFAULT NULL,
  `Notes` longtext DEFAULT NULL,
  `ClientUserID` varchar(450) DEFAULT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` varchar(450) DEFAULT NULL,
  `UpdateBy` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nonconformityreports`
--

INSERT INTO `nonconformityreports` (`Id`, `NcrNumber`, `IssueDate`, `ReferenceNumber`, `ExporterName`, `ExporterAddress`, `ExporterCountry`, `InvoiceNumber`, `InvoiceDate`, `InvoiceValue`, `InvoiceValueInUsd`, `InvoiceMark`, `Notes`, `ClientUserID`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `UpdateBy`) VALUES
('635210C1-0CBC-46DF-B6F9-D0F1F617C279', 'B000001', '2023-11-29 14:17:07.6964304', '3434443', 'ammar', 'ammar', 'Afghanistan', '343443', '2023-11-29 00:00:00.0000000', 0.00, 32323.00, 'GBP', 'dsdfdfdfddffd', 'ddc1447a-87f9-46b3-8600-0c0ac74fdd06', '2023-11-29 14:17:10.1300129', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('A1573A27-544A-4E42-B99C-2F5E09BEBB4A', 'B000001', '2023-11-25 14:50:57.3473588', '23232', 'تيست', 'تيست', 'Albania', '32323', '2023-12-02 00:00:00.0000000', 0.00, 2222.00, 'USD', '2e2e2e2e', 'cb858a30-ea1b-4af5-b7fa-61766d568c73', '2023-11-25 14:50:59.4849019', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('A9AAA9E9-5ED7-46D6-9873-097B2DD55991', 'B000002', '2023-11-29 16:18:20.2318631', '3223323', 'شركة الرصين', 'شركة الرصين', 'Afghanistan', '323332', '2023-11-29 00:00:00.0000000', 32222.00, 332323.00, 'EUR', 'ddwddwdwddwdwdwdw', '19fcfcb8-c34c-48f2-b60c-b642cad687cb', '2023-11-29 16:18:22.0813102', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL),
('FC244A3A-E6F2-4D4A-9E5D-8925462F05E0', 'B000001', '2023-11-29 16:12:28.7481373', '233232', 'شركة البهجاء', 'iraq', 'Algeria', '232323', '2023-11-16 00:00:00.0000000', 323232.00, 23232.00, 'EUR', 'type=\"number\"type=\"number\"type=\"number\"', '71e3f942-6eda-4207-bfd3-a5852d75b2a3', '2023-11-29 16:12:30.5825278', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nonreleasedocument`
--

CREATE TABLE `nonreleasedocument` (
  `Id` varchar(36) NOT NULL,
  `CertificateOfConformityId` varchar(36) NOT NULL,
  `DocumentNumber` longtext DEFAULT NULL,
  `DocumentDate` varchar(27) DEFAULT NULL,
  `Reason` longtext DEFAULT NULL,
  `CertificateOfConformityId1` varchar(36) DEFAULT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` varchar(450) DEFAULT NULL,
  `UpdateBy` longtext DEFAULT NULL,
  `UpdateByUserId` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nonreleasedocument`
--

INSERT INTO `nonreleasedocument` (`Id`, `CertificateOfConformityId`, `DocumentNumber`, `DocumentDate`, `Reason`, `CertificateOfConformityId1`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `UpdateBy`, `UpdateByUserId`) VALUES
('0A4FCBC4-7960-4A6F-8FF5-BB21B0D17528', '54448CB9-5124-4C3D-9F74-0820D2243C04', 'B000002-818402', '2023-11-29 17:35:17.4357006', 'sdds', NULL, '2023-11-29 17:35:20.8669157', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL),
('684C69D4-657E-4708-A18C-EFF1A4A34F54', '54448CB9-5124-4C3D-9F74-0820D2243C04', 'B000002-865027', '2023-11-29 17:40:44.6325043', 'dwdw', NULL, '2023-11-29 17:40:48.5278199', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL),
('962B30D7-2A33-479B-97C9-3068F57E2401', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', 'B000001-926648', '2023-11-28 00:13:16.5306887', 'cscsc', NULL, '2023-11-28 00:13:17.6791221', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL),
('E04BD0B3-3923-4660-AFAB-1FA5CBD5C1B0', '54448CB9-5124-4C3D-9F74-0820D2243C04', 'B000002-969842', '2023-11-29 18:35:23.5792426', 'kkk', NULL, '2023-11-29 18:35:26.1159368', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nonreleasedocumentcargos`
--

CREATE TABLE `nonreleasedocumentcargos` (
  `Id` varchar(36) NOT NULL,
  `NonReleaseDocumentId` varchar(36) NOT NULL,
  `CertificateOfConformityCargoId` varchar(36) NOT NULL,
  `QuantityOrUnit` int(11) DEFAULT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` varchar(450) DEFAULT NULL,
  `UpdateBy` longtext DEFAULT NULL,
  `UpdateByUserId` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nonreleasedocumentcargos`
--

INSERT INTO `nonreleasedocumentcargos` (`Id`, `NonReleaseDocumentId`, `CertificateOfConformityCargoId`, `QuantityOrUnit`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `UpdateBy`, `UpdateByUserId`) VALUES
('018BAA83-D923-4E1A-80C0-71BE28CC5DA3', 'E04BD0B3-3923-4660-AFAB-1FA5CBD5C1B0', 'CE2FF280-B9E1-4915-A1A8-A4B2031CDBB4', 554, '2023-11-29 18:35:26.1159377', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL),
('031EF0E7-2BF5-461A-8DFD-28176EE4EBB1', '962B30D7-2A33-479B-97C9-3068F57E2401', 'C4336980-6090-4FAF-93B0-9E85114B35ED', 10000, '2023-11-28 00:13:17.6791257', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL),
('65B54BC0-656E-4A0A-8929-4EFE2E313001', '684C69D4-657E-4708-A18C-EFF1A4A34F54', 'CE2FF280-B9E1-4915-A1A8-A4B2031CDBB4', 112, '2023-11-29 17:40:48.5278207', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL),
('D778D64F-DD3B-4853-AB08-AA452C51D0CA', '0A4FCBC4-7960-4A6F-8FF5-BB21B0D17528', 'CE2FF280-B9E1-4915-A1A8-A4B2031CDBB4', 11, '2023-11-29 17:35:20.8669171', NULL, 0, '113622c6-ecc8-484d-9714-3c87ab0708f5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reissuingcertificateofconformity`
--

CREATE TABLE `reissuingcertificateofconformity` (
  `Id` varchar(36) NOT NULL,
  `CertificateOfConformityId` varchar(36) NOT NULL,
  `ReissuingCertificateOfConformityId` varchar(36) NOT NULL,
  `ReissuingCocNumber` longtext NOT NULL,
  `ReissuingReasonDescription` longtext NOT NULL,
  `InsertDate` varchar(27) NOT NULL,
  `UpdateDate` varchar(27) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `InsertBy` longtext DEFAULT NULL,
  `InsertByUserId` varchar(450) DEFAULT NULL,
  `UpdateBy` longtext DEFAULT NULL,
  `UpdateByUserId` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reissuingcertificateofconformity`
--

INSERT INTO `reissuingcertificateofconformity` (`Id`, `CertificateOfConformityId`, `ReissuingCertificateOfConformityId`, `ReissuingCocNumber`, `ReissuingReasonDescription`, `InsertDate`, `UpdateDate`, `IsDeleted`, `InsertBy`, `InsertByUserId`, `UpdateBy`, `UpdateByUserId`) VALUES
('174451F0-082B-4CDF-B4E9-CC3CD24EC9D8', '54448CB9-5124-4C3D-9F74-0820D2243C04', '4B4E6F1D-6A16-4E49-A2C0-28477E93E312', 'B000002-01', 'اعادة اصدار للاضافة وتعديل البيانات', '2023-12-01 13:34:51.2812501', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL),
('195E14F8-8D1C-4E37-864F-127937B5B2CC', '54448CB9-5124-4C3D-9F74-0820D2243C04', '6788D1DC-0CB0-4FBF-BFDE-EE23C012C53A', 'B000002-02', '5656', '2023-12-01 13:41:45.3522920', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL),
('2C58DEC9-A6CB-435A-B52C-0A6770B5B910', '54448CB9-5124-4C3D-9F74-0820D2243C04', '73C4D117-7154-4BDE-851D-80E319DE0705', 'B000002-03', 'kkkk', '2023-12-01 14:21:50.3391685', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL),
('9A8FD623-7B61-4E73-8755-F727C4BA8621', 'BD533C08-CBC9-4A03-A7CE-A15D56784230', '33D28048-D09F-4856-8026-7670AB0CFE95', '-01', 'dwedee', '2023-12-01 13:40:38.1288174', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL),
('B8C157B9-7AD9-4644-BAFE-74F07BFCDC09', '28B74E04-DC22-4F39-86F4-B3163867F457', '6549C694-189F-4C4E-A71A-67F6152E0EE1', '-02', 'wddwdd', '2023-12-01 14:27:13.4081818', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL),
('E3BD8DBA-3DAF-4145-A669-FA9FD38ECB2E', 'DD140C60-0BB5-408E-B74D-8E1EEE3B184A', '00BAAD6F-B4AE-4EE7-849D-F497FE980389', 'B000001-01', 'zxxzxxzz', '2023-12-01 14:21:20.5307066', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL),
('E95CF6FA-E7F9-4873-BF5F-CAD7EA4E1A02', '28B74E04-DC22-4F39-86F4-B3163867F457', '19EDACDE-26B4-47EE-8B31-C4FC328B6513', '-01', 'ddfdfdffd', '2023-12-01 14:19:51.7111666', NULL, 0, '7ed10a51-65fe-4d3e-a7c7-b17f3612f5ec', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20231121174442_NewDataBase', '7.0.13'),
('20231121220311_NewEditInItems', '7.0.13'),
('20231121220656_AddUsers', '7.0.13'),
('20231122221759_ChangeItemToGargo', '7.0.13'),
('20231124192619_NonExpirDate', '7.0.13'),
('20231124214305_NonConfirmEdit', '7.0.13'),
('20231124231829_Test', '7.0.13'),
('20231127124426_AddInternelAdmin', '7.0.13'),
('20231127134545_Test1', '7.0.13'),
('20231127172829_NullableContractAgreementAttachedId', '7.0.13'),
('20231127182814_TestUser', '7.0.13'),
('20231128135850_EditCertificateOfConformity', '7.0.13'),
('20231128145113_ExpiryDateEdit', '7.0.13'),
('20231201103347_ReissuingCertificateOfConformityNewTable', '7.0.13'),
('20231201110157_ExpiryDateAdd', '7.0.13'),
('20231202150316_CertificateOfConformityCargoEdit', '7.0.13'),
('20231202151822_ChangeItemToCargo', '7.0.13'),
('20231203153107_NewUser', '7.0.13'),
('20231213145921_AddOfficeId', '7.0.13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `certificatelaunchdocument`
--
ALTER TABLE `certificatelaunchdocument`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_CertificateLaunchDocument_AuditUserId` (`AuditUserId`),
  ADD KEY `IX_CertificateLaunchDocument_CertificateOfConformityId` (`CertificateOfConformityId`),
  ADD KEY `IX_CertificateLaunchDocument_InsertByUserId` (`InsertByUserId`),
  ADD KEY `IX_CertificateLaunchDocument_UpdateByUserId` (`UpdateByUserId`);

--
-- Indexes for table `certificatelaunchdocumentcargos`
--
ALTER TABLE `certificatelaunchdocumentcargos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_CertificateLaunchDocumentCargos_CertificateLaunchDocumentId` (`CertificateLaunchDocumentId`),
  ADD KEY `IX_CertificateLaunchDocumentCargos_CertificateOfConformityCargo` (`CertificateOfConformityCargoId`),
  ADD KEY `IX_CertificateLaunchDocumentCargos_InsertByUserId` (`InsertByUserId`),
  ADD KEY `IX_CertificateLaunchDocumentCargos_UpdateByUserId` (`UpdateByUserId`);

--
-- Indexes for table `certificateofconformity`
--
ALTER TABLE `certificateofconformity`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_CertificateOfConformity_AdminUserId` (`AdminUserId`),
  ADD KEY `IX_CertificateOfConformity_CertificateOfOriginAttachedId` (`CertificateOfOriginAttachedId`),
  ADD KEY `IX_CertificateOfConformity_ClientUserID` (`ClientUserID`),
  ADD KEY `IX_CertificateOfConformity_ContractAgreementAttachedId` (`ContractAgreementAttachedId`),
  ADD KEY `IX_CertificateOfConformity_EntryPointId` (`EntryPointId`),
  ADD KEY `IX_CertificateOfConformity_EntryPointUserId` (`EntryPointUserId`),
  ADD KEY `IX_CertificateOfConformity_InsertBy` (`InsertBy`),
  ADD KEY `IX_CertificateOfConformity_InternalAdminUserId` (`InternalAdminUserId`),
  ADD KEY `IX_CertificateOfConformity_InvoiceAttachedId` (`InvoiceAttachedId`),
  ADD KEY `IX_CertificateOfConformity_PackingListAttachedId` (`PackingListAttachedId`),
  ADD KEY `IX_CertificateOfConformity_UpdateBy` (`UpdateBy`);

--
-- Indexes for table `certificateofconformitycargos`
--
ALTER TABLE `certificateofconformitycargos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_CertificateOfConformityCargos_CertificateOfConformityId` (`CertificateOfConformityId`),
  ADD KEY `IX_CertificateOfConformityCargos_InsertByUserId` (`InsertByUserId`),
  ADD KEY `IX_CertificateOfConformityCargos_UpdateByUserId` (`UpdateByUserId`);

--
-- Indexes for table `certificateofconformityitems`
--
ALTER TABLE `certificateofconformityitems`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_CertificateOfConformityItems_CertificateOfConformityId` (`CertificateOfConformityId`),
  ADD KEY `IX_CertificateOfConformityItems_InsertByUserId` (`InsertByUserId`),
  ADD KEY `IX_CertificateOfConformityItems_UpdateByUserId` (`UpdateByUserId`);

--
-- Indexes for table `certificateofconformitylog`
--
ALTER TABLE `certificateofconformitylog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_CertificateOfConformityLog_CertificateOfConformityId` (`CertificateOfConformityId`),
  ADD KEY `IX_CertificateOfConformityLog_InsertBy` (`InsertBy`),
  ADD KEY `IX_CertificateOfConformityLog_UpdateBy` (`UpdateBy`);

--
-- Indexes for table `certificateofinspectionitem`
--
ALTER TABLE `certificateofinspectionitem`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_CertificateOfInspectionItem_CertificateOfInspectionId` (`CertificateOfInspectionId`),
  ADD KEY `IX_CertificateOfInspectionItem_InsertByUserId` (`InsertByUserId`),
  ADD KEY `IX_CertificateOfInspectionItem_UpdateByUserId` (`UpdateByUserId`);

--
-- Indexes for table `certificateofinspections`
--
ALTER TABLE `certificateofinspections`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_CertificateOfInspections_EntryPointOfDischargeId` (`EntryPointOfDischargeId`),
  ADD KEY `IX_CertificateOfInspections_EntryPointOfDischargeId1` (`EntryPointOfDischargeId1`),
  ADD KEY `IX_CertificateOfInspections_InsertBy` (`InsertBy`),
  ADD KEY `IX_CertificateOfInspections_UpdateBy` (`UpdateBy`);

--
-- Indexes for table `clientusers`
--
ALTER TABLE `clientusers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `docattachments`
--
ALTER TABLE `docattachments`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_DocAttachments_InsertBy` (`InsertBy`),
  ADD KEY `IX_DocAttachments_NonConformityReportId` (`NonConformityReportId`),
  ADD KEY `IX_DocAttachments_UpdateByUserId` (`UpdateByUserId`);

--
-- Indexes for table `employeeusers`
--
ALTER TABLE `employeeusers`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_EmployeeUsers_EntryPointId` (`EntryPointId`);

--
-- Indexes for table `entrypoints`
--
ALTER TABLE `entrypoints`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_EntryPoints_InsertByUserId` (`InsertByUserId`),
  ADD KEY `IX_EntryPoints_UpdateByUserId` (`UpdateByUserId`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Fees_CertificateOfConformityId` (`CertificateOfConformityId`),
  ADD KEY `IX_Fees_InsertBy` (`InsertBy`),
  ADD KEY `IX_Fees_UpdateByUserId` (`UpdateByUserId`);

--
-- Indexes for table `nonconformityreportitems`
--
ALTER TABLE `nonconformityreportitems`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_NonConformityReportItems_InsertBy` (`InsertBy`),
  ADD KEY `IX_NonConformityReportItems_NonConformityReportId` (`NonConformityReportId`),
  ADD KEY `IX_NonConformityReportItems_UpdateByUserId` (`UpdateByUserId`);

--
-- Indexes for table `nonconformityreports`
--
ALTER TABLE `nonconformityreports`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_NonConformityReports_ClientUserID` (`ClientUserID`),
  ADD KEY `IX_NonConformityReports_InsertBy` (`InsertBy`),
  ADD KEY `IX_NonConformityReports_UpdateBy` (`UpdateBy`);

--
-- Indexes for table `nonreleasedocument`
--
ALTER TABLE `nonreleasedocument`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_NonReleaseDocument_CertificateOfConformityId` (`CertificateOfConformityId`),
  ADD KEY `IX_NonReleaseDocument_CertificateOfConformityId1` (`CertificateOfConformityId1`),
  ADD KEY `IX_NonReleaseDocument_InsertBy` (`InsertBy`),
  ADD KEY `IX_NonReleaseDocument_UpdateByUserId` (`UpdateByUserId`);

--
-- Indexes for table `nonreleasedocumentcargos`
--
ALTER TABLE `nonreleasedocumentcargos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_NonReleaseDocumentCargos_CertificateOfConformityCargoId` (`CertificateOfConformityCargoId`),
  ADD KEY `IX_NonReleaseDocumentCargos_InsertBy` (`InsertBy`),
  ADD KEY `IX_NonReleaseDocumentCargos_NonReleaseDocumentId` (`NonReleaseDocumentId`),
  ADD KEY `IX_NonReleaseDocumentCargos_UpdateByUserId` (`UpdateByUserId`);

--
-- Indexes for table `reissuingcertificateofconformity`
--
ALTER TABLE `reissuingcertificateofconformity`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_ReissuingCertificateOfConformity_InsertByUserId` (`InsertByUserId`),
  ADD KEY `IX_ReissuingCertificateOfConformity_UpdateByUserId` (`UpdateByUserId`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
