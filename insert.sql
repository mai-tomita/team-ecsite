use lollipopdb;

/* カテゴリーの登録 */
insert into mst_category (category_name, category_description) values
("ケーキ", "ケーキ");
insert into mst_category (category_name, category_description) values
("アイスクリーム","アイスクリーム");
insert into mst_category (category_name, category_description) values
("ゼリー", "ゼリー");
insert into mst_category (category_name, category_description) values
("シュークリーム", "シュークリームなど");
insert into mst_category (category_name, category_description) values
("タルト", "タルト");

/* 商品（プロダクト）の登録 TODO 詳細、値段,イメージパス、発売日、comapny名は仮入力 */
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("チョコレートケーキ","チョコレートケーキ","美味しいチョコレートケーキ", 1, 420, "/img/ChocolateCake.jpg", "11月6日","LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("ショートケーキ", "ショートケーキ", "美味しいショートケーキ", 1, 400, "/img/ShortCake.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("モンブランケーキ", "モンブランケーキ", "美味しいモンブランケーキ", 1, 530, "/img/MontBlanc.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("チーズケーキ", "チーズケーキ", "美味しいチーズケーキ", 1, 380, "/img/CheeseCake.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("バニラ", "バニラ", "美味しいバニラアイス", 2, 200, "/img/vanilla_2.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("抹茶", "マッチャ", "美味しい抹茶アイス", 2, 200, "/img/green_tea.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("コーヒー", "コーヒー", "美味しいコーヒーアイス", 2, 200, "/img/coffee_2.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("白桃ゼリー", "ハクトウ", "美味しい白桃ゼリー", 3, 230, "/img/peach_jelly.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("パインゼリー", "パイン", "美味しいパインゼリー", 3, 230, "/img/pineapple_jelly.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("洋梨ゼリー", "ヨウナシ", "美味しい洋梨ゼリー", 3, 230, "/img/pear_jelly.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("シュークリーム", "シュークリーム", "美味しいシュークリーム", 4, 300, "/img/CreamPuff.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("エクレア", "エクレア", "美味しいエクレア", 4, 350, "/img/Eclair.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("アップルパイ", "アップルパイ", "美味しいアップルパイ", 4, 350, "/img/ApplePie.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("フルーツタルト", "フルーツタルト", "美味しいフルーツタルト", 5, 350, "/img/FruitTart.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("ベリータルト", "ベリータルト", "美味しいベリータルト", 5, 350, "/img/BerryTart.jpg", "11月6日", "LOLLIPOP'S");
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date,release_company) values
("キャラメルナッツタルト", "キャラメルナッツタルト", "美味しいキャラメルナッツタルト", 5, 350, "/img/CaramelNutsTart.jpg", "11月6日", "LOLLIPOP'S");