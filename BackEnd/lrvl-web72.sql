-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.3.22-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para lrvl-web72
CREATE DATABASE IF NOT EXISTS `lrvl-web72` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lrvl-web72`;

-- Volcando estructura para tabla lrvl-web72.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_managements` int(10) unsigned DEFAULT NULL,
  `id_projects` int(10) unsigned DEFAULT NULL,
  `nb_department` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_acronym` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_activerecord` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `departments_nb_department_unique` (`nb_department`),
  UNIQUE KEY `departments_nb_acronym_unique` (`nb_acronym`),
  KEY `fk_reference_4` (`id_managements`),
  KEY `fk_reference_dep_802` (`id_projects`),
  CONSTRAINT `fk_reference_4` FOREIGN KEY (`id_managements`) REFERENCES `managements` (`id`),
  CONSTRAINT `fk_reference_dep_802` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.departments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.dictionary_words
CREATE TABLE IF NOT EXISTS `dictionary_words` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nb_variable` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_languages` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reference_49` (`id_languages`),
  CONSTRAINT `fk_reference_49` FOREIGN KEY (`id_languages`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.dictionary_words: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `dictionary_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `dictionary_words` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.in_activerecord
CREATE TABLE IF NOT EXISTS `in_activerecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `in_activerecord` int(11) DEFAULT NULL COMMENT '1 o 0',
  `nb_activerecord` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SI o NO',
  PRIMARY KEY (`id`),
  UNIQUE KEY `in_activerecord_in_activerecord_unique` (`in_activerecord`),
  UNIQUE KEY `in_activerecord_nb_activerecord_unique` (`nb_activerecord`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.in_activerecord: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `in_activerecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `in_activerecord` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.languages
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nb_languages` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_acronym` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_activerecord` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_nb_languages_unique` (`nb_languages`),
  UNIQUE KEY `languages_nb_acronym_unique` (`nb_acronym`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.languages: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.managements
CREATE TABLE IF NOT EXISTS `managements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` int(10) unsigned DEFAULT NULL,
  `nb_management` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_acronym` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_activerecord` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `managements_nb_management_unique` (`nb_management`),
  UNIQUE KEY `managements_nb_acronym_unique` (`nb_acronym`),
  KEY `fk_reference_man_802` (`id_projects`),
  CONSTRAINT `fk_reference_man_802` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.managements: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `managements` DISABLE KEYS */;
/*!40000 ALTER TABLE `managements` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.migrations: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_01_15_000000_create_tables_initiales', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.parameters_generals
CREATE TABLE IF NOT EXISTS `parameters_generals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` int(10) unsigned DEFAULT NULL,
  `id_projects_modules` int(10) unsigned NOT NULL,
  `id_projects_sections` int(10) unsigned DEFAULT NULL,
  `nb_parameter` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tx_value` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_activerecord` int(11) NOT NULL DEFAULT 1,
  `tx_description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reference_pg_802` (`id_projects`),
  KEY `fk_reference_pg_14` (`id_projects_modules`),
  KEY `fk_reference_pg_140` (`id_projects_sections`),
  CONSTRAINT `fk_reference_pg_14` FOREIGN KEY (`id_projects_modules`) REFERENCES `projects_modules` (`id`),
  CONSTRAINT `fk_reference_pg_140` FOREIGN KEY (`id_projects_sections`) REFERENCES `projects_sections` (`id`),
  CONSTRAINT `fk_reference_pg_802` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.parameters_generals: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `parameters_generals` DISABLE KEYS */;
/*!40000 ALTER TABLE `parameters_generals` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.parameters_generals_users
CREATE TABLE IF NOT EXISTS `parameters_generals_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` int(10) unsigned DEFAULT NULL,
  `id_projects_modules` int(10) unsigned NOT NULL,
  `id_projects_sections` int(10) unsigned DEFAULT NULL,
  `nb_parameter` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tx_value` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tx_description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.parameters_generals_users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `parameters_generals_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `parameters_generals_users` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.parameters_users
CREATE TABLE IF NOT EXISTS `parameters_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` int(10) unsigned DEFAULT NULL,
  `id_projects_modules` int(10) unsigned NOT NULL,
  `id_projects_sections` int(10) unsigned DEFAULT NULL,
  `nb_parameter` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tx_value` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_users` int(10) unsigned NOT NULL,
  `tx_description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reference_36` (`id_users`),
  KEY `fk_reference_pu_802` (`id_projects`),
  KEY `fk_reference_pu_14` (`id_projects_modules`),
  KEY `fk_reference_pu_140` (`id_projects_sections`),
  CONSTRAINT `fk_reference_36` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_reference_pu_14` FOREIGN KEY (`id_projects_modules`) REFERENCES `projects_modules` (`id`),
  CONSTRAINT `fk_reference_pu_140` FOREIGN KEY (`id_projects_sections`) REFERENCES `projects_sections` (`id`),
  CONSTRAINT `fk_reference_pu_802` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.parameters_users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `parameters_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `parameters_users` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.products: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `created_at`, `updated_at`, `title`, `description`, `price`, `availability`) VALUES
	(1, '2020-05-05 19:59:09', '2020-05-05 19:59:10', 'titulo', 'descipcion', 12, 1),
	(2, '2020-05-05 19:59:31', '2020-05-05 19:59:32', 'titulo 2', 'descp 2', 1, 2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.profiles
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nb_profile` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tx_description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_activerecord` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profiles_nb_profile_unique` (`nb_profile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.profiles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.profiles_departments
CREATE TABLE IF NOT EXISTS `profiles_departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_profiles` int(10) unsigned DEFAULT NULL,
  `id_departments` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reference_5` (`id_departments`),
  KEY `fk_reference_7` (`id_profiles`),
  CONSTRAINT `fk_reference_5` FOREIGN KEY (`id_departments`) REFERENCES `departments` (`id`),
  CONSTRAINT `fk_reference_7` FOREIGN KEY (`id_profiles`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.profiles_departments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `profiles_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_departments` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.profiles_projects_descriptions
CREATE TABLE IF NOT EXISTS `profiles_projects_descriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_profiles` int(10) unsigned DEFAULT NULL,
  `id_descriptions_objects` int(10) unsigned DEFAULT NULL,
  `in_activerecord` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `fk_reference_21` (`id_profiles`),
  KEY `fk_reference_20` (`id_descriptions_objects`),
  CONSTRAINT `fk_reference_20` FOREIGN KEY (`id_descriptions_objects`) REFERENCES `projects_descriptions` (`id`),
  CONSTRAINT `fk_reference_21` FOREIGN KEY (`id_profiles`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.profiles_projects_descriptions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `profiles_projects_descriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_projects_descriptions` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.projects
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nb_project` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_acronym` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_activo` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projects_nb_project_unique` (`nb_project`),
  UNIQUE KEY `projects_nb_acronym_unique` (`nb_acronym`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.projects: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` (`id`, `created_at`, `updated_at`, `nb_project`, `nb_description`, `nb_acronym`, `in_activo`) VALUES
	(1, NULL, NULL, 'Generador de Aplicaciones', 'Generador de APP WEB', 'SuiteGenApp', 0),
	(2, NULL, NULL, 'Sistemas de Consultas Medicas', 'Consultas Medicas', 'SuiteAdminMedico', 0),
	(3, NULL, NULL, 'Sistema Administrativo', 'Suite Admnistrativo', 'SuiteAdministrativo', 1),
	(4, NULL, NULL, 'Sistemas Control de oras', 'oras', 'oras', 0);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.projects_databases
CREATE TABLE IF NOT EXISTS `projects_databases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` int(10) unsigned DEFAULT NULL,
  `id_projects_modules` int(10) unsigned DEFAULT NULL,
  `id_projects_sections` int(10) unsigned DEFAULT NULL,
  `nb_databases` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_acronym` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reference_202` (`id_projects`),
  KEY `fk_reference_db_202` (`id_projects_modules`),
  KEY `fk_reference_db_140` (`id_projects_sections`),
  CONSTRAINT `fk_reference_202` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id`),
  CONSTRAINT `fk_reference_db_140` FOREIGN KEY (`id_projects_sections`) REFERENCES `projects_sections` (`id`),
  CONSTRAINT `fk_reference_db_202` FOREIGN KEY (`id_projects_modules`) REFERENCES `projects_modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.projects_databases: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `projects_databases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_databases` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.projects_db_cruds
CREATE TABLE IF NOT EXISTS `projects_db_cruds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects_databases` int(10) unsigned DEFAULT NULL,
  `id_projects` int(10) unsigned DEFAULT NULL,
  `nb_cruds` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_owner` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_tabla` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_campo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_type_of_fields` int(10) unsigned DEFAULT NULL,
  `tx_tipo_de_llenado` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Se llena con un - crud, dynamiclist - sql ',
  PRIMARY KEY (`id`),
  KEY `fk_reference_250` (`id_projects`),
  KEY `fk_reference_251` (`id_projects_databases`),
  KEY `fk_reference_crud_251` (`id_type_of_fields`),
  CONSTRAINT `fk_reference_250` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id`),
  CONSTRAINT `fk_reference_251` FOREIGN KEY (`id_projects_databases`) REFERENCES `projects_databases` (`id`),
  CONSTRAINT `fk_reference_crud_251` FOREIGN KEY (`id_type_of_fields`) REFERENCES `type_of_fields` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.projects_db_cruds: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `projects_db_cruds` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_db_cruds` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.projects_db_dynamic_lists
CREATE TABLE IF NOT EXISTS `projects_db_dynamic_lists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects_databases` int(10) unsigned DEFAULT NULL,
  `id_projects` int(10) unsigned DEFAULT NULL,
  `nb_lists` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `co_lists` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_descripcion` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reference_355` (`id_projects`),
  KEY `fk_reference_356` (`id_projects_databases`),
  CONSTRAINT `fk_reference_355` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id`),
  CONSTRAINT `fk_reference_356` FOREIGN KEY (`id_projects_databases`) REFERENCES `projects_databases` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.projects_db_dynamic_lists: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `projects_db_dynamic_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_db_dynamic_lists` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.projects_db_querys
CREATE TABLE IF NOT EXISTS `projects_db_querys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects_databases` int(10) unsigned DEFAULT NULL,
  `id_projects` int(10) unsigned DEFAULT NULL,
  `in_activerecord` int(11) NOT NULL DEFAULT 1,
  `tx_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tx_sql` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_ejecuted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_reference_dbq_200` (`id_projects`),
  KEY `fk_reference_dbq_201` (`id_projects_databases`),
  CONSTRAINT `fk_reference_dbq_200` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id`),
  CONSTRAINT `fk_reference_dbq_201` FOREIGN KEY (`id_projects_databases`) REFERENCES `projects_databases` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.projects_db_querys: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `projects_db_querys` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_db_querys` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.projects_descriptions
CREATE TABLE IF NOT EXISTS `projects_descriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects_modules` int(10) unsigned DEFAULT NULL,
  `id_projects_sections` int(10) unsigned DEFAULT NULL,
  `id_type_of_objs` int(10) unsigned DEFAULT NULL,
  `id_projects` int(10) unsigned DEFAULT NULL,
  `id_destination` int(10) unsigned DEFAULT NULL,
  `id_type_of_destination` int(10) unsigned DEFAULT NULL,
  `nu_order` int(11) DEFAULT NULL,
  `nu_order1` int(11) DEFAULT NULL,
  `nu_order2` int(11) DEFAULT NULL,
  `tx_fir_option` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tx_sec_option` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tx_thi_option` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tx_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tx_icon` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tx_destination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tx_value_parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reference_802` (`id_projects`),
  KEY `fk_reference_14` (`id_projects_modules`),
  KEY `fk_reference_140` (`id_projects_sections`),
  KEY `fk_reference_8` (`id_type_of_objs`),
  KEY `fk_reference_pdecr_8` (`id_type_of_destination`),
  CONSTRAINT `fk_reference_14` FOREIGN KEY (`id_projects_modules`) REFERENCES `projects_modules` (`id`),
  CONSTRAINT `fk_reference_140` FOREIGN KEY (`id_projects_sections`) REFERENCES `projects_sections` (`id`),
  CONSTRAINT `fk_reference_8` FOREIGN KEY (`id_type_of_objs`) REFERENCES `type_of_objs` (`id`),
  CONSTRAINT `fk_reference_802` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id`),
  CONSTRAINT `fk_reference_pdecr_8` FOREIGN KEY (`id_type_of_destination`) REFERENCES `type_of_destination` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.projects_descriptions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `projects_descriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_descriptions` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.projects_modules
CREATE TABLE IF NOT EXISTS `projects_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` int(10) unsigned DEFAULT NULL,
  `nb_module` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_activerecord` int(11) NOT NULL DEFAULT 1,
  `nu_order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `fk_reference_13` (`id_projects`),
  CONSTRAINT `fk_reference_13` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.projects_modules: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `projects_modules` DISABLE KEYS */;
INSERT INTO `projects_modules` (`id`, `created_at`, `updated_at`, `id_projects`, `nb_module`, `in_activerecord`, `nu_order`) VALUES
	(1, NULL, NULL, 1, 'Mantenimiento de Tablas', 1, 1),
	(2, NULL, NULL, 1, 'CRUD de Tablas del Sistema', 1, 1),
	(3, NULL, NULL, 1, 'Pantalla de Consultas', 1, 1),
	(4, NULL, NULL, 1, 'Reportes de Consulta', 1, 1),
	(5, NULL, NULL, 2, 'Mant. de Tablas', 1, 1),
	(6, NULL, NULL, 2, 'Pacientes', 1, 1),
	(7, NULL, NULL, 2, 'Medicos', 1, 1),
	(8, NULL, NULL, 2, 'Calendarios', 1, 1),
	(9, NULL, NULL, 2, 'Historias', 1, 1),
	(10, NULL, NULL, 2, 'Especialidades', 1, 1),
	(11, NULL, NULL, 3, 'Facturacion', 1, 1),
	(12, NULL, NULL, 3, 'Contabilidad', 1, 1),
	(13, NULL, NULL, 3, 'Nomina', 1, 1),
	(14, NULL, NULL, 2, 'Administracion', 1, 1),
	(15, NULL, NULL, 2, 'Estadisticas', 1, 1),
	(16, NULL, NULL, 2, 'Funcinalidades de Terceros', 1, 1),
	(17, NULL, NULL, 3, 'Confiruacion', 1, 1),
	(18, NULL, NULL, 3, 'Administracion', 1, 1),
	(19, NULL, NULL, 1, 'Tabledor de Tareas / Kabban', 1, 1);
/*!40000 ALTER TABLE `projects_modules` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.projects_sections
CREATE TABLE IF NOT EXISTS `projects_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` int(10) unsigned DEFAULT NULL,
  `id_projects_modules` int(10) unsigned DEFAULT NULL,
  `nb_sections` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_activerecord` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `fk_reference_ps_14` (`id_projects_modules`),
  KEY `fk_reference_131` (`id_projects`),
  CONSTRAINT `fk_reference_131` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id`),
  CONSTRAINT `fk_reference_ps_14` FOREIGN KEY (`id_projects_modules`) REFERENCES `projects_modules` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.projects_sections: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `projects_sections` DISABLE KEYS */;
INSERT INTO `projects_sections` (`id`, `created_at`, `updated_at`, `id_projects`, `id_projects_modules`, `nb_sections`, `in_activerecord`) VALUES
	(1, NULL, NULL, 3, 11, 'Ventas', 1),
	(2, NULL, NULL, 3, 11, 'Compras', 1),
	(3, NULL, NULL, 3, 11, 'Productos', 1),
	(4, NULL, NULL, 3, 11, 'Vendedores', 1),
	(5, NULL, NULL, 3, 11, 'Reportes', 1),
	(6, NULL, NULL, 3, 11, 'Confiuraciones', 1),
	(7, NULL, NULL, 3, 12, 'Plan de Cuentas', 1),
	(8, NULL, NULL, 3, 12, 'Movimientos', 1),
	(9, NULL, NULL, 3, 12, 'Reportes', 1),
	(10, NULL, NULL, 3, 12, 'Confiuraciones', 1),
	(11, NULL, NULL, 3, 18, 'Bancos', 1),
	(12, NULL, NULL, 3, 18, 'Cuentas Bancarias', 1),
	(13, NULL, NULL, 3, 18, 'Movimientos / Cuentas', 1),
	(14, NULL, NULL, 3, 18, 'Cobros Adelantados', 1),
	(15, NULL, NULL, 3, 18, 'Cuentas X Cobrar', 1),
	(16, NULL, NULL, 3, 18, 'Paos Adelantados', 1),
	(17, NULL, NULL, 3, 18, 'Cuentas x Paar', 1);
/*!40000 ALTER TABLE `projects_sections` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.type_of_destination
CREATE TABLE IF NOT EXISTS `type_of_destination` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nb_type_of_destination` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Indica si es un Proyecto, Modulo, Crud, Scroll, Edita',
  `nb_acronym` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_of_destination_nb_type_of_destination_unique` (`nb_type_of_destination`),
  UNIQUE KEY `type_of_destination_nb_acronym_unique` (`nb_acronym`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.type_of_destination: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `type_of_destination` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_of_destination` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.type_of_fields
CREATE TABLE IF NOT EXISTS `type_of_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nb_type_of_fields` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Indica si es un String, Fecha, Numero, Etc',
  `nb_acronym` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Valores caracter, numeric, date, time, datetime, double',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_of_fields_nb_type_of_fields_unique` (`nb_type_of_fields`),
  UNIQUE KEY `type_of_fields_nb_acronym_unique` (`nb_acronym`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.type_of_fields: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `type_of_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_of_fields` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.type_of_objs
CREATE TABLE IF NOT EXISTS `type_of_objs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nb_type_of_objs` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Indica si es un Menu, Toolbar, PopPup Menu',
  `nb_acronym` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_of_objs_nb_type_of_objs_unique` (`nb_type_of_objs`),
  UNIQUE KEY `type_of_objs_nb_acronym_unique` (`nb_acronym`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.type_of_objs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `type_of_objs` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_of_objs` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `login` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_verified` int(11) NOT NULL DEFAULT 0,
  `in_firstime` int(11) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `in_activerecord` int(11) NOT NULL DEFAULT 1,
  `id_profiles` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_login_unique` (`login`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.users_profiles
CREATE TABLE IF NOT EXISTS `users_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_users` int(10) unsigned NOT NULL,
  `id_profiles` int(10) unsigned NOT NULL,
  `fe_vencimiento` datetime DEFAULT NULL,
  `in_activerecord` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `fk_reference_17` (`id_profiles`),
  KEY `fk_reference_16` (`id_users`),
  CONSTRAINT `fk_reference_16` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_reference_17` FOREIGN KEY (`id_profiles`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.users_profiles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_profiles` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.users_projects_descriptions
CREATE TABLE IF NOT EXISTS `users_projects_descriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_users` int(10) unsigned NOT NULL,
  `id_projects_descriptions` int(10) unsigned NOT NULL,
  `fe_vencimiento` datetime DEFAULT NULL,
  `in_activerecord` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `fk_reference_19` (`id_projects_descriptions`),
  KEY `fk_reference_18` (`id_users`),
  CONSTRAINT `fk_reference_18` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_reference_19` FOREIGN KEY (`id_projects_descriptions`) REFERENCES `projects_descriptions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.users_projects_descriptions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users_projects_descriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_projects_descriptions` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.user_profile_basics
CREATE TABLE IF NOT EXISTS `user_profile_basics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_users` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reference_34` (`id_users`),
  CONSTRAINT `fk_reference_34` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.user_profile_basics: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_profile_basics` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_profile_basics` ENABLE KEYS */;

-- Volcando estructura para tabla lrvl-web72.user_profile_photos
CREATE TABLE IF NOT EXISTS `user_profile_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tx_photofile` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_users` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_profile_photos_tx_photofile_unique` (`tx_photofile`),
  KEY `fk_reference_40` (`id_users`),
  CONSTRAINT `fk_reference_40` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla lrvl-web72.user_profile_photos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_profile_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_profile_photos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
