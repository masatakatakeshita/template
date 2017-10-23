drop database if exists ecsite;

create database if not exists ecsite;
use ecsite;

drop table if exists login_user_transaction;

create table login_user_transaction(
id int not null primary key auto_increment,
login_id varchar(16) unique,
login_pass varchar(16),
user_name varchar(50),
insert_date datetime,
updated_date datetime
);

drop table if exists item_info_transaction;

create table item_info_transaction(
id int not null primary key auto_increment,
item_name varchar(30),
item_price int,
item_stock int,
item_image varchar(255),
insert_date datetime,
update_date datetime
);

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
id int not null primary key auto_increment,
item_transaction_id int,
total_price int,
total_count int,
user_master_id varchar(16),
pay varchar(30),
insert_date datetime,
delete_date datetime
);


INSERT INTO item_info_transaction(id, item_name, item_price, item_stock,item_image)
VALUES
(1, 'サンスベリア', 400, 50, "./img/plants1.png"),
(2, 'モンステラ', 300, 50, "./img/plants2.png"),
(3, 'テーブルヤシ', 300, 50, "./img/plants3.png"),
(4, 'パルテノシッサス', 500, 50, "./img/plants4.png"),
(5, 'オーガスタ' ,600, 50, "./img/plants5.png"),
(6, 'ポトス', 400, 50, "./img/plants6.png");



INSERT INTO login_user_transaction(login_id, login_pass, user_name) VALUES("internous", "internous01", "test");