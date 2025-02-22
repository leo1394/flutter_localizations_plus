// Copyright (c) 2025, the Dart project authors. Use of this source code
// is governed by a MIT license that can be found in the LICENSE file.

/// lists locale and language name
/// https://github.com/umpirsky/language-list
const all_locales_supported = {
  "af": "Afrikaans",
  "af_NA": "Afrikaans (Namibië)",
  "af_ZA": "Afrikaans (Suid-Afrika)",
  "ak": "Akan",
  "ak_GH": "Akan (Gaana)",
  "am": "አማርኛ",
  "am_ET": "አማርኛ (ኢትዮጵያ)",
  "ar": "العربية",
  "ar_AE": "العربية (الإمارات العربية المتحدة)",
  "ar_BH": "العربية (البحرين)",
  "ar_DJ": "العربية (جيبوتي)",
  "ar_DZ": "العربية (الجزائر)",
  "ar_EG": "العربية (مصر)",
  "ar_EH": "العربية (الصحراء الغربية)",
  "ar_ER": "العربية (أريتريا)",
  "ar_IL": "العربية (إسرائيل)",
  "ar_IQ": "العربية (العراق)",
  "ar_JO": "العربية (الأردن)",
  "ar_KM": "العربية (جزر القمر)",
  "ar_KW": "العربية (الكويت)",
  "ar_LB": "العربية (لبنان)",
  "ar_LY": "العربية (ليبيا)",
  "ar_MA": "العربية (المغرب)",
  "ar_MR": "العربية (موريتانيا)",
  "ar_OM": "العربية (عُمان)",
  "ar_PS": "العربية (الأراضي الفلسطينية)",
  "ar_QA": "العربية (قطر)",
  "ar_SA": "العربية (المملكة العربية السعودية)",
  "ar_SD": "العربية (السودان)",
  "ar_SO": "العربية (الصومال)",
  "ar_SS": "العربية (جنوب السودان)",
  "ar_SY": "العربية (سوريا)",
  "ar_TD": "العربية (تشاد)",
  "ar_TN": "العربية (تونس)",
  "ar_YE": "العربية (اليمن)",
  "as": "অসমীয়া",
  "as_IN": "অসমীয়া (ভাৰত)",
  "az": "azərbaycan",
  "az_AZ": "azərbaycan (Azərbaycan)",
  "az_Cyrl": "Азәрбајҹан (kiril)",
  "az_Cyrl_AZ": "Азәрбајҹан (kiril, Азәрбајҹан)",
  "az_Latn": "azərbaycan (latın)",
  "az_Latn_AZ": "azərbaycan (latın, Azərbaycan)",
  "be": "беларуская",
  "be_BY": "беларуская (Беларусь)",
  "bg": "български",
  "bg_BG": "български (България)",
  "bm": "bamanakan",
  "bm_Latn": "Bambara (Latin)",
  "bm_Latn_ML": "Bambara (Latin, Mali)",
  "bn": "বাংলা",
  "bn_BD": "বাংলা (বাংলাদেশ)",
  "bn_IN": "বাংলা (ভারত)",
  "bo": "བོད་སྐད་",
  "bo_CN": "བོད་སྐད་ (རྒྱ་ནག)",
  "bo_IN": "བོད་སྐད་ (རྒྱ་གར་)",
  "br": "brezhoneg",
  "br_FR": "brezhoneg (Frañs)",
  "bs": "bosanski",
  "bs_BA": "bosanski (Bosna i Hercegovina)",
  "bs_Cyrl": "босански (Ћирилица)",
  "bs_Cyrl_BA": "босански (Ћирилица, Босна и Херцеговина)",
  "bs_Latn": "bosanski (latinica)",
  "bs_Latn_BA": "bosanski (latinica, Bosna i Hercegovina)",
  "ca": "català",
  "ca_AD": "català (Andorra)",
  "ca_ES": "català (Espanya)",
  "ca_FR": "català (França)",
  "ca_IT": "català (Itàlia)",
  "cs": "čeština",
  "cs_CZ": "čeština (Česká republika)",
  "cy": "Cymraeg",
  "cy_GB": "Cymraeg (Y Deyrnas Unedig)",
  "da": "dansk",
  "da_DK": "dansk (Danmark)",
  "da_GL": "dansk (Grønland)",
  "de": "Deutsch",
  "de_AT": "Deutsch (Österreich)",
  "de_BE": "Deutsch (Belgien)",
  "de_CH": "Deutsch (Schweiz)",
  "de_DE": "Deutsch (Deutschland)",
  "de_LI": "Deutsch (Liechtenstein)",
  "de_LU": "Deutsch (Luxemburg)",
  "dz": "རྫོང་ཁ",
  "dz_BT": "རྫོང་ཁ (འབྲུག)",
  "ee": "eʋegbe",
  "ee_GH": "eʋegbe (Ghana nutome)",
  "ee_TG": "eʋegbe (Togo nutome)",
  "el": "Ελληνικά",
  "el_CY": "Ελληνικά (Κύπρος)",
  "el_GR": "Ελληνικά (Ελλάδα)",
  "en": "English",
  "en_AG": "English (Antigua & Barbuda)",
  "en_AI": "English (Anguilla)",
  "en_AS": "English (American Samoa)",
  "en_AU": "English (Australia)",
  "en_BB": "English (Barbados)",
  "en_BE": "English (Belgium)",
  "en_BM": "English (Bermuda)",
  "en_BS": "English (Bahamas)",
  "en_BW": "English (Botswana)",
  "en_BZ": "English (Belize)",
  "en_CA": "English (Canada)",
  "en_CC": "English (Cocos (Keeling) Islands)",
  "en_CK": "English (Cook Islands)",
  "en_CM": "English (Cameroon)",
  "en_CX": "English (Christmas Island)",
  "en_DG": "English (Diego Garcia)",
  "en_DM": "English (Dominica)",
  "en_ER": "English (Eritrea)",
  "en_FJ": "English (Fiji)",
  "en_FK": "English (Falkland Islands)",
  "en_FM": "English (Micronesia)",
  "en_GB": "English (United Kingdom)",
  "en_GD": "English (Grenada)",
  "en_GG": "English (Guernsey)",
  "en_GH": "English (Ghana)",
  "en_GI": "English (Gibraltar)",
  "en_GM": "English (Gambia)",
  "en_GU": "English (Guam)",
  "en_GY": "English (Guyana)",
  "en_HK": "English (Hong Kong SAR China)",
  "en_IE": "English (Ireland)",
  "en_IM": "English (Isle of Man)",
  "en_IN": "English (India)",
  "en_IO": "English (British Indian Ocean Territory)",
  "en_JE": "English (Jersey)",
  "en_JM": "English (Jamaica)",
  "en_KE": "English (Kenya)",
  "en_KI": "English (Kiribati)",
  "en_KN": "English (St. Kitts & Nevis)",
  "en_KY": "English (Cayman Islands)",
  "en_LC": "English (St. Lucia)",
  "en_LR": "English (Liberia)",
  "en_LS": "English (Lesotho)",
  "en_MG": "English (Madagascar)",
  "en_MH": "English (Marshall Islands)",
  "en_MO": "English (Macau SAR China)",
  "en_MP": "English (Northern Mariana Islands)",
  "en_MS": "English (Montserrat)",
  "en_MT": "English (Malta)",
  "en_MU": "English (Mauritius)",
  "en_MW": "English (Malawi)",
  "en_MY": "English (Malaysia)",
  "en_NA": "English (Namibia)",
  "en_NF": "English (Norfolk Island)",
  "en_NG": "English (Nigeria)",
  "en_NR": "English (Nauru)",
  "en_NU": "English (Niue)",
  "en_NZ": "English (New Zealand)",
  "en_PG": "English (Papua New Guinea)",
  "en_PH": "English (Philippines)",
  "en_PK": "English (Pakistan)",
  "en_PN": "English (Pitcairn Islands)",
  "en_PR": "English (Puerto Rico)",
  "en_PW": "English (Palau)",
  "en_RW": "English (Rwanda)",
  "en_SB": "English (Solomon Islands)",
  "en_SC": "English (Seychelles)",
  "en_SD": "English (Sudan)",
  "en_SG": "English (Singapore)",
  "en_SH": "English (St. Helena)",
  "en_SL": "English (Sierra Leone)",
  "en_SS": "English (South Sudan)",
  "en_SX": "English (Sint Maarten)",
  "en_SZ": "English (Swaziland)",
  "en_TC": "English (Turks & Caicos Islands)",
  "en_TK": "English (Tokelau)",
  "en_TO": "English (Tonga)",
  "en_TT": "English (Trinidad & Tobago)",
  "en_TV": "English (Tuvalu)",
  "en_TZ": "English (Tanzania)",
  "en_UG": "English (Uganda)",
  "en_UM": "English (U.S. Outlying Islands)",
  "en_US": "English (United States)",
  "en_VC": "English (St. Vincent & Grenadines)",
  "en_VG": "English (British Virgin Islands)",
  "en_VI": "English (U.S. Virgin Islands)",
  "en_VU": "English (Vanuatu)",
  "en_WS": "English (Samoa)",
  "en_ZA": "English (South Africa)",
  "en_ZM": "English (Zambia)",
  "en_ZW": "English (Zimbabwe)",
  "eo": "esperanto",
  "es": "español",
  "es_AR": "español (Argentina)",
  "es_BO": "español (Bolivia)",
  "es_CL": "español (Chile)",
  "es_CO": "español (Colombia)",
  "es_CR": "español (Costa Rica)",
  "es_CU": "español (Cuba)",
  "es_DO": "español (República Dominicana)",
  "es_EA": "español (Ceuta y Melilla)",
  "es_EC": "español (Ecuador)",
  "es_ES": "España",
  "es_GQ": "español (Guinea Ecuatorial)",
  "es_GT": "español (Guatemala)",
  "es_HN": "español (Honduras)",
  "es_IC": "español (islas Canarias)",
  "es_MX": "español (México)",
  "es_NI": "español (Nicaragua)",
  "es_PA": "español (Panamá)",
  "es_PE": "español (Perú)",
  "es_PH": "español (Filipinas)",
  "es_PR": "español (Puerto Rico)",
  "es_PY": "español (Paraguay)",
  "es_SV": "español (El Salvador)",
  "es_US": "español (Estados Unidos)",
  "es_UY": "español (Uruguay)",
  "es_VE": "español (Venezuela)",
  "et": "eesti",
  "et_EE": "eesti (Eesti)",
  "eu": "euskara",
  "eu_ES": "euskara (Espainia)",
  "fa": "فارسی",
  "fa_AF": "دری (افغانستان)",
  "fa_IR": "فارسی (ایران)",
  "ff": "Pulaar",
  "ff_CM": "Pulaar (Kameruun)",
  "ff_GN": "Pulaar (Gine)",
  "ff_MR": "Pulaar (Muritani)",
  "ff_SN": "Pulaar (Senegaal)",
  "fi": "suomi",
  "fi_FI": "suomi (Suomi)",
  "fo": "føroyskt",
  "fo_FO": "føroyskt (Føroyar)",
  "fr": "français",
  "fr_BE": "français (Belgique)",
  "fr_BF": "français (Burkina Faso)",
  "fr_BI": "français (Burundi)",
  "fr_BJ": "français (Bénin)",
  "fr_BL": "français (Saint-Barthélemy)",
  "fr_CA": "français (Canada)",
  "fr_CD": "français (Congo-Kinshasa)",
  "fr_CF": "français (République centrafricaine)",
  "fr_CG": "français (Congo-Brazzaville)",
  "fr_CH": "français (Suisse)",
  "fr_CI": "français (Côte d’Ivoire)",
  "fr_CM": "français (Cameroun)",
  "fr_DJ": "français (Djibouti)",
  "fr_DZ": "français (Algérie)",
  "fr_FR": "français (France)",
  "fr_GA": "français (Gabon)",
  "fr_GF": "français (Guyane française)",
  "fr_GN": "français (Guinée)",
  "fr_GP": "français (Guadeloupe)",
  "fr_GQ": "français (Guinée équatoriale)",
  "fr_HT": "français (Haïti)",
  "fr_KM": "français (Comores)",
  "fr_LU": "français (Luxembourg)",
  "fr_MA": "français (Maroc)",
  "fr_MC": "français (Monaco)",
  "fr_MF": "français (Saint-Martin (partie française))",
  "fr_MG": "français (Madagascar)",
  "fr_ML": "français (Mali)",
  "fr_MQ": "français (Martinique)",
  "fr_MR": "français (Mauritanie)",
  "fr_MU": "français (Maurice)",
  "fr_NC": "français (Nouvelle-Calédonie)",
  "fr_NE": "français (Niger)",
  "fr_PF": "français (Polynésie française)",
  "fr_PM": "français (Saint-Pierre-et-Miquelon)",
  "fr_RE": "français (La Réunion)",
  "fr_RW": "français (Rwanda)",
  "fr_SC": "français (Seychelles)",
  "fr_SN": "français (Sénégal)",
  "fr_SY": "français (Syrie)",
  "fr_TD": "français (Tchad)",
  "fr_TG": "français (Togo)",
  "fr_TN": "français (Tunisie)",
  "fr_VU": "français (Vanuatu)",
  "fr_WF": "français (Wallis-et-Futuna)",
  "fr_YT": "français (Mayotte)",
  "fy": "West-Frysk",
  "fy_NL": "West-Frysk (Nederlân)",
  "ga": "Gaeilge",
  "ga_IE": "Gaeilge (Éire)",
  "gd": "Gàidhlig",
  "gd_GB": "Gàidhlig (An Rìoghachd Aonaichte)",
  "gl": "galego",
  "gl_ES": "galego (España)",
  "gu": "ગુજરાતી",
  "gu_IN": "ગુજરાતી (ભારત)",
  "gv": "Gaelg",
  "gv_IM": "Gaelg (Ellan Vannin)",
  "ha": "Hausa",
  "ha_GH": "Hausa (Gana)",
  "ha_Latn": "Hausa (Latin)",
  "ha_Latn_GH": "Hausa (Latin, Ghana)",
  "ha_Latn_NE": "Hausa (Latin, Niger)",
  "ha_Latn_NG": "Hausa (Latin, Nigeria)",
  "ha_NE": "Hausa (Nijar)",
  "ha_NG": "Hausa (Najeriya)",
  "he": "עברית",
  "he_IL": "עברית (ישראל)",
  "hi": "हिंदी",
  "hi_IN": "हिंदी (भारत)",
  "hr": "hrvatski",
  "hr_BA": "hrvatski (Bosna i Hercegovina)",
  "hr_HR": "hrvatski (Hrvatska)",
  "hu": "magyar",
  "hu_HU": "magyar (Magyarország)",
  "hy": "հայերեն",
  "hy_AM": "հայերեն (Հայաստան)",
  "id": "Bahasa Indonesia",
  "id_ID": "Bahasa Indonesia (Indonesia)",
  "ig": "Igbo",
  "ig_NG": "Igbo (Nigeria)",
  "ii": "ꆈꌠꉙ",
  "ii_CN": "ꆈꌠꉙ (ꍏꇩ)",
  "is": "íslenska",
  "is_IS": "íslenska (Ísland)",
  "it": "italiano",
  "it_CH": "italiano (Svizzera)",
  "it_IT": "italiano",
  "it_SM": "italiano (San Marino)",
  "ja": "日本語",
  "ja_JP": "日本語",
  "ka": "ქართული",
  "ka_GE": "ქართული (საქართველო)",
  "ki": "Gikuyu",
  "ki_KE": "Gikuyu (Kenya)",
  "kk": "қазақ тілі",
  "kk_Cyrl": "қазақ тілі (кирилл жазуы)",
  "kk_Cyrl_KZ": "қазақ тілі (кирилл жазуы, Қазақстан)",
  "kk_KZ": "қазақ тілі (Қазақстан)",
  "kl": "kalaallisut",
  "kl_GL": "kalaallisut (Kalaallit Nunaat)",
  "km": "ខ្មែរ",
  "km_KH": "ខ្មែរ (កម្ពុជា)",
  "kn": "ಕನ್ನಡ",
  "kn_IN": "ಕನ್ನಡ (ಭಾರತ)",
  "ko": "한국어",
  "ko_KP": "한국어 (조선 민주주의 인민 공화국)",
  "ko_KR": "한국어 (대한민국)",
  "ks": "کٲشُر",
  "ks_Arab": "کٲشُر (اَربی)",
  "ks_Arab_IN": "کٲشُر (اَربی, ہِنٛدوستان)",
  "ks_IN": "کٲشُر (ہِنٛدوستان)",
  "kw": "kernewek",
  "kw_GB": "kernewek (Rywvaneth Unys)",
  "ky": "кыргызча",
  "ky_Cyrl": "кыргызча (Кирилик)",
  "ky_Cyrl_KG": "кыргызча (Кирилик, Кыргызстан)",
  "ky_KG": "кыргызча (Кыргызстан)",
  "lb": "Lëtzebuergesch",
  "lb_LU": "Lëtzebuergesch (Lëtzebuerg)",
  "lg": "Luganda",
  "lg_UG": "Luganda (Yuganda)",
  "ln": "lingála",
  "ln_AO": "lingála (Angóla)",
  "ln_CD": "lingála (Repibiki demokratiki ya Kongó)",
  "ln_CF": "lingála (Repibiki ya Afríka ya Káti)",
  "ln_CG": "lingála (Kongo)",
  "lo": "ລາວ",
  "lo_LA": "ລາວ (ລາວ)",
  "lt": "lietuvių",
  "lt_LT": "lietuvių (Lietuva)",
  "lu": "Tshiluba",
  "lu_CD": "Tshiluba (Ditunga wa Kongu)",
  "lv": "latviešu",
  "lv_LV": "latviešu (Latvija)",
  "mg": "Malagasy",
  "mg_MG": "Malagasy (Madagasikara)",
  "mk": "македонски",
  "mk_MK": "македонски (Македонија)",
  "ml": "മലയാളം",
  "ml_IN": "മലയാളം (ഇന്ത്യ)",
  "mn": "монгол",
  "mn_Cyrl": "монгол (кирил)",
  "mn_Cyrl_MN": "монгол (кирил, Монгол)",
  "mn_MN": "монгол (Монгол)",
  "mr": "मराठी",
  "mr_IN": "मराठी (भारत)",
  "ms": "Bahasa Melayu",
  "ms_BN": "Bahasa Melayu (Brunei)",
  "ms_Latn": "Bahasa Melayu (Latin)",
  "ms_Latn_BN": "Bahasa Melayu (Latin, Brunei)",
  "ms_Latn_MY": "Bahasa Melayu (Latin, Malaysia)",
  "ms_Latn_SG": "Bahasa Melayu (Latin, Singapura)",
  "ms_MY": "Bahasa Melayu (Malaysia)",
  "ms_SG": "Bahasa Melayu (Singapura)",
  "mt": "Malti",
  "mt_MT": "Malti (Malta)",
  "my": "ဗမာ",
  "my_MM": "မြန်မာ",
  "nb": "norsk bokmål",
  "nb_NO": "norsk bokmål (Norge)",
  "nb_SJ": "norsk bokmål (Svalbard og Jan Mayen)",
  "nd": "isiNdebele",
  "nd_ZW": "isiNdebele (Zimbabwe)",
  "ne": "नेपाली",
  "ne_IN": "नेपाली (भारत)",
  "ne_NP": "नेपाली (नेपाल)",
  "nl": "Nederlands",
  "nl_AW": "Nederlands (Aruba)",
  "nl_BE": "Nederlands (België)",
  "nl_BQ": "Nederlands (Caribisch Nederland)",
  "nl_CW": "Nederlands (Curaçao)",
  "nl_NL": "Nederlands (Nederland)",
  "nl_SR": "Nederlands (Suriname)",
  "nl_SX": "Nederlands (Sint-Maarten)",
  "nn": "nynorsk",
  "nn_NO": "nynorsk (Noreg)",
  "no": "Norwegian",
  "no_NO": "Norwegian (Norway)",
  "om": "Oromoo",
  "om_ET": "Oromoo (Itoophiyaa)",
  "om_KE": "Oromoo (Keeniyaa)",
  "or": "ଓଡ଼ିଆ",
  "or_IN": "ଓଡ଼ିଆ (ଭାରତ)",
  "os": "ирон",
  "os_GE": "ирон (Гуырдзыстон)",
  "os_RU": "ирон (Уӕрӕсе)",
  "pa": "ਪੰਜਾਬੀ",
  "pa_Arab": "پنجابی (عربی)",
  "pa_Arab_PK": "پنجابی (عربی, پکستان)",
  "pa_Guru": "ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ)",
  "pa_Guru_IN": "ਪੰਜਾਬੀ (ਗੁਰਮੁਖੀ, ਭਾਰਤ)",
  "pa_IN": "ਪੰਜਾਬੀ (ਭਾਰਤ)",
  "pa_PK": "ਪੰਜਾਬੀ (ਪਾਕਿਸਤਾਨ)",
  "pl": "polski",
  "pl_PL": "polski (Polska)",
  "ps": "پښتو",
  "ps_AF": "پښتو (افغانستان)",
  "pt": "português",
  "pt_AO": "português (Angola)",
  "pt_BR": "português (Brasil)",
  "pt_CV": "português (Cabo Verde)",
  "pt_GW": "português (Guiné Bissau)",
  "pt_MO": "português (Macau, RAE da China)",
  "pt_MZ": "português (Moçambique)",
  "pt_PT": "português (Portugal)",
  "pt_ST": "português (São Tomé e Príncipe)",
  "pt_TL": "português (Timor-Leste)",
  "qu": "Runasimi",
  "qu_BO": "Runasimi (Bolivia)",
  "qu_EC": "Runasimi (Ecuador)",
  "qu_PE": "Runasimi (Perú)",
  "rm": "rumantsch",
  "rm_CH": "rumantsch (Svizra)",
  "rn": "Ikirundi",
  "rn_BI": "Ikirundi (Uburundi)",
  "ro": "română",
  "ro_MD": "română (Republica Moldova)",
  "ro_RO": "română (România)",
  "ru": "русский",
  "ru_BY": "русский (Беларусь)",
  "ru_KG": "русский (Киргизия)",
  "ru_KZ": "русский (Казахстан)",
  "ru_MD": "русский (Молдова)",
  "ru_RU": "русский (Россия)",
  "ru_UA": "русский (Украина)",
  "rw": "Kinyarwanda",
  "rw_RW": "Kinyarwanda (Rwanda)",
  "se": "davvisámegiella",
  "se_FI": "davvisámegiella (Suopma)",
  "se_NO": "davvisámegiella (Norga)",
  "se_SE": "davvisámegiella (Ruoŧŧa)",
  "sg": "Sängö",
  "sg_CF": "Sängö (Ködörösêse tî Bêafrîka)",
  "sh": "Serbo-Croatian",
  "sh_BA": "Serbo-Croatian (Bosnia & Herzegovina)",
  "si": "සිංහල",
  "si_LK": "සිංහල (ශ්‍රී ලංකාව)",
  "sk": "slovenčina",
  "sk_SK": "slovenčina (Slovensko)",
  "sl": "slovenščina",
  "sl_SI": "slovenščina (Slovenija)",
  "sn": "chiShona",
  "sn_ZW": "chiShona (Zimbabwe)",
  "so": "Soomaali",
  "so_DJ": "Soomaali (Jabuuti)",
  "so_ET": "Soomaali (Itoobiya)",
  "so_KE": "Soomaali (Kiiniya)",
  "so_SO": "Soomaali (Soomaaliya)",
  "sq": "shqip",
  "sq_AL": "shqip (Shqipëri)",
  "sq_MK": "shqip (Maqedoni)",
  "sq_XK": "shqip (Kosovë)",
  "sr": "српски",
  "sr_BA": "српски (Босна и Херцеговина)",
  "sr_Cyrl": "српски (ћирилица)",
  "sr_Cyrl_BA": "српски (ћирилица, Босна и Херцеговина)",
  "sr_Cyrl_ME": "српски (ћирилица, Црна Гора)",
  "sr_Cyrl_RS": "српски (ћирилица, Србија)",
  "sr_Cyrl_XK": "српски (ћирилица, Косово)",
  "sr_Latn": "srpski (latinica)",
  "sr_Latn_BA": "srpski (latinica, Bosna i Hercegovina)",
  "sr_Latn_ME": "srpski (latinica, Crna Gora)",
  "sr_Latn_RS": "srpski (latinica, Srbija)",
  "sr_Latn_XK": "srpski (latinica, Kosovo)",
  "sr_ME": "српски (Црна Гора)",
  "sr_RS": "српски (Србија)",
  "sr_XK": "српски (Косово)",
  "sv": "svenska",
  "sv_AX": "svenska (Åland)",
  "sv_FI": "svenska (Finland)",
  "sv_SE": "svenska (Sverige)",
  "sw": "Kiswahili",
  "sw_KE": "Kiswahili (Kenya)",
  "sw_TZ": "Kiswahili (Tanzania)",
  "sw_UG": "Kiswahili (Uganda)",
  "ta": "தமிழ்",
  "ta_IN": "தமிழ் (இந்தியா)",
  "ta_LK": "தமிழ் (இலங்கை)",
  "ta_MY": "தமிழ் (மலேஷியா)",
  "ta_SG": "தமிழ் (சிங்கப்பூர்)",
  "te": "తెలుగు",
  "te_IN": "తెలుగు (భారత దేశం)",
  "th": "ไทย",
  "th_TH": "ภาษาไทย",
  "ti": "ትግርኛ",
  "ti_ER": "Tigrinya (Eritrea)",
  "ti_ET": "Tigrinya (Ethiopia)",
  "tl": "Tagalog",
  "tl_PH": "Tagalog (Philippines)",
  "to": "lea fakatonga",
  "to_TO": "lea fakatonga (Tonga)",
  "tr": "Türkçe",
  "tr_CY": "Türkçe (Güney Kıbrıs Rum Kesimi)",
  "tr_TR": "Türkçe (Türkiye)",
  "ug": "ئۇيغۇرچە",
  "ug_Arab": "ئۇيغۇرچە (ئەرەب)",
  "ug_Arab_CN": "ئۇيغۇرچە (ئەرەب, جۇڭگو)",
  "ug_CN": "ئۇيغۇرچە (جۇڭگو)",
  "uk": "українська",
  "uk_UA": "українська (Україна)",
  "ur": "اردو",
  "ur_IN": "اردو (بھارت)",
  "ur_PK": "اردو (پاکستان)",
  "uz": "oʻzbekcha",
  "uz_AF": "oʻzbekcha (Afgʻoniston)",
  "uz_Arab": "اوزبیک (عربی)",
  "uz_Arab_AF": "اوزبیک (عربی, افغانستان)",
  "uz_Cyrl": "Ўзбек (Кирил)",
  "uz_Cyrl_UZ": "Ўзбек (Кирил, Ўзбекистон)",
  "uz_Latn": "oʻzbekcha (Lotin)",
  "uz_Latn_UZ": "oʻzbekcha (Lotin, Oʻzbekiston)",
  "uz_UZ": "oʻzbekcha (Oʻzbekiston)",
  "vi": "Tiếng Việt",
  "vi_VN": "Tiếng Việt (Việt Nam)",
  "yi": "ייִדיש",
  "yo": "Èdè Yorùbá",
  "yo_BJ": "Èdè Yorùbá (Orílɛ́ède Bɛ̀nɛ̀)",
  "yo_NG": "Èdè Yorùbá (Orílẹ́ède Nàìjíríà)",
  "zh": "中文",
  "zh_CN": "中文 (中国)",
  "zh_HK": "中文 (中国香港特别行政区)",
  "zh_Hans": "中文 (简体中文)",
  "zh_Hans_CN": "中文 (简体中文, 中国)",
  "zh_Hans_HK": "中文 (简体中文, 中国香港特别行政区)",
  "zh_Hans_MO": "中文 (简体中文, 中国澳门特别行政区)",
  "zh_Hans_SG": "中文 (简体中文, 新加坡)",
  "zh_Hant": "中文 (繁體)",
  "zh_Hant_HK": "中文 (繁體字, 中華人民共和國香港特別行政區)",
  "zh_Hant_MO": "中文 (繁體, 中華人民共和國澳門特別行政區)",
  "zh_Hant_TW": "中文 (繁體, 台灣)",
  "zh_MO": "中文 (中国澳门特别行政区)",
  "zh_SG": "中文 (新加坡)",
  "zh_TW": "中文 (台湾)",
  "zu": "isiZulu",
  "zu_ZA": "isiZulu (i-South Africa)",
};
