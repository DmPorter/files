
create table shop
(
    id_shop serial
        primary key,
    url     text not null,
    "xPath" text not null,
    name    text not null
);
create table product
(
    id_product bigserial
        primary key,
    link       text    not null,
    id_shop    integer not null
        constraint product_fk
            references shop,
    name       text    not null
);

create table cost_prices
(
    id_price   bigserial
        primary key,
    id_product bigint                   not null,
    cost       integer                  not null,
    datetime   timestamp with time zone not null
);

INSERT INTO shop VALUES (1, 'https://goldapple.ru/', '/html/body/div[1]/main/div/div/section/section[1]/section[3]/div/form/div[3]/div/div/span[1]/span/span/span', 'Золотое яблоко');
INSERT INTO product VALUES (1, 'https://goldapple.ru/19000117994-foam-party', 1, 'DARLING* foam party');

