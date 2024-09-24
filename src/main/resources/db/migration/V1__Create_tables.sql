DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS product_category;

CREATE TABLE product_category (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) DEFAULT NULL
);

CREATE TABLE product (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sku VARCHAR(255) DEFAULT NULL,
    name VARCHAR(255) DEFAULT NULL,
    description VARCHAR(500) DEFAULT NULL,
    unit_price DECIMAL(13, 2) DEFAULT NULL,
    image_url VARCHAR(500) DEFAULT NULL,
    active BIT DEFAULT 1,
    units_in_stock INT DEFAULT NULL,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    category_id BIGINT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES product_category(id)
);

-- -----------------------------------------------------
-- Categorias
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('Laptop');
INSERT INTO product_category(category_name) VALUES ('Placas Gráficas');
INSERT INTO product_category(category_name) VALUES ('Monitores');
INSERT INTO product_category(category_name) VALUES ('Softwares');

-- -----------------------------------------------------
-- Laptops
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES
('LAPTOP-TECH-1000', 'IdeaPad 3 (15, AMD)', 'O IdeaPad 3 (15, AMD) é um laptop de entrada poderoso o suficiente para ser um grande companheiro do dia a dia.', 'https://www.laptop.lk/wp-content/uploads/2020/12/44-1.jpg', 1, 100, 14.99, 1, NOW()),
('LAPTOP-TECH-1001', 'ASUS ROG SCAR 15 RYZEN 9', 'Compita no mais alto nível do Windows.', 'https://i0.wp.com/laptopmedia.com/wp-content/uploads/2021/01/05_Scar_15-scaled-e1610551491628.jpg?fit=2086%2C1465&ssl=1', 1, 100, 20.99, 1, NOW()),
('LAPTOP-TECH-1002', 'MSI VECTOR GP66 12UGS 12ª GERAÇÃO I7', 'A unidade em análise hoje possui GPU, display FHD 144 Hz, ou Core i7-12700H.', 'https://media.ldlc.com/r1600/ld/products/00/05/92/48/LD0005924821_1_0005924832.jpg', 1, 100, 14.99, 1, NOW()),
('LAPTOP-TECH-1003', 'ASUS ZENBOOK PRO 15 UX535LI I7', 'ZenBook Pro 15 é projetado para realizar sua visão criativa.', 'https://i3.ytimg.com/vi/K9O7YV5gJEM/maxresdefault.jpg', 1, 100, 13.99, 1, NOW()),
('LAPTOP-TECH-1004', 'ASUS ROG SCAR 15 2022 I7 12ª GERAÇÃO', 'Desenhe mais quadros e vença mais jogos com esta GPU de Laptop com até 150W de TGP máximo.', 'https://notebook.lk/wp-content/uploads/2022/05/5-4.jpg', 1, 100, 18.99, 1, NOW()),
('LAPTOP-TECH-1005', 'HP ZBOOK POWER G8 RTX A2000 4GB I7 11ª GERAÇÃO', 'Desempenho de nível desktop em movimento. O poder extremo nunca foi tão móvel.', 'https://www.hp.com/gb-en/shop/Html/Merch/Images/c07611892_1750x1285.jpg', 1, 100, 23.99, 1, NOW());

-- -----------------------------------------------------
-- Placas Gráficas
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES
('GRAPHIC_CARDS-1000', 'MSI RX 6900 XT GAMING X TRIO 16G', 'Multiprocessadores de Streaming NVIDIA Ampere: Os blocos de construção para o desempenho mais rápido do mundo.', 'https://tpucdn.com/review/msi-radeon-rx-6900-xt-gaming-x-trio/images/title.jpg', 1, 100, 18.99, 2, NOW()),
('GRAPHIC_CARDS-1001', 'ASUS TUF GAMING GEFORCE RTX 3080TI 12GB', 'Multiprocessadores de Streaming NVIDIA Ampere: Os blocos de construção para o desempenho mais rápido do mundo.', 'https://storage-asset.msi.com/global/picture/news/2021/vga/rx6900-20210201-2.jpg', 1, 100, 18.99, 2, NOW()),
('GRAPHIC_CARDS-1002', 'MSI RTX 3070TI SUPRIM 8GB', 'Multiprocessadores de Streaming NVIDIA Ampere: Os blocos de construção para o desempenho mais rápido do mundo.', 'https://www.guru3d.com/index.php?ct=news&action=file&id=41366', 1, 100, 18.99, 2, NOW()),
('GRAPHIC_CARDS-1003', 'INNO3D RTX 3060TI ICHILL X3 RED LHR 8GB', 'Multiprocessadores de Streaming NVIDIA Ampere: Os blocos de construção para o desempenho mais rápido do mundo.', 'https://images.anandtech.com/doci/16303/6900-XT-Front_678x452.jpg', 1, 100, 18.99, 2, NOW()),
('GRAPHIC_CARDS-1004', 'ASUS STRIX GAMING GEFORCE RTX 3070 8GB', 'Multiprocessadores de Streaming NVIDIA Ampere: Os blocos de construção para o desempenho mais rápido do mundo.', 'https://tweakers.net/i/ReEvAZLhwktbHgQX2-ThxUrGn04=/i/2003959988.jpeg', 1, 100, 18.99, 2, NOW()),
('GRAPHIC_CARDS-1005', 'ASUS STRIX GAMING RADEON RX6700XT 12GB', 'Multiprocessadores de Streaming NVIDIA Ampere: Os blocos de construção para o desempenho mais rápido do mundo.', 'https://www.asus.com/media/global/products/THZZDfNZNurcxGoc/P_setting_fff_1_90_end_600.png', 1, 100, 18.99, 2, NOW());

-- -----------------------------------------------------
-- Monitores
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES
('MONITORS-1000', 'ASUS ROG STRIX XG32VC 2560 X 1440 170HZ 1MS', 'Monitor de jogos curvo de 35 polegadas 1800R com taxa de atualização rápida de 100Hz e desfoque de movimento.', 'https://static.techspot.com/articles-info/1566/images/S-1.jpg', 1, 100, 17.99, 3, NOW()),
('MONITORS-1001', 'SAMSUNG 49" ODYSSEY C49G95T QLED', 'Monitor de jogos curvo de 35 polegadas 1800R com taxa de atualização rápida de 100Hz projetado para reduzir o desfoque de movimento.', 'https://microless.com/cdn/product_description/3874564_1582572651.png', 1, 100, 17.99, 3, NOW()),
('MONITORS-1002', 'MI MONITOR CURVO DE JOGOS 34" 144HZ', 'Monitor de jogos curvo de 35 polegadas 1800R com taxa de atualização rápida de 100Hz projetado para reduzir o desfoque de movimento.', 'https://static.techspot.com/articles-info/1566/images/F-13.jpg', 1, 100, 17.99, 3, NOW()),
('MONITORS-1003', 'ASUS TUF GAMING VG279QM 27" IPS', 'Monitor de jogos curvo de 35 polegadas 1800R com taxa de atualização rápida de 100Hz projetado para reduzir o desfoque de movimento.', 'https://www.notebookcheck.net/fileadmin/_processed_/1/a/csm_xg35vq_4_0bba9ea972.jpg', 1, 100, 17.99, 3, NOW()),
('MONITORS-1004', 'ASUS ROG STRIX XG49VQ SUPER ULTRA-WIDE', 'Monitor de jogos curvo de 35 polegadas 1800R com taxa de atualização rápida de 100Hz projetado para reduzir o desfoque de movimento.', 'https://media.wemena.com/productlarge/71107_42115_d0e7d6da1bdecf92b5ed4b12ca3c15a9-hi.jpg?v1', 1, 100, 17.99, 3, NOW()),
('MONITORS-1005', 'ASUS ROG STRIX XG35VQ (3440X1440)', 'Monitor de jogos curvo de 35 polegadas 1800R com taxa de atualização rápida de 100Hz projetado para reduzir o desfoque de movimento.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg8nQ8z2dty9HG90Hn0YO-d8vEXgKKn6NUmng2iEcU8I9TyI82j-zNlCV5_x9h9H6Md9Y&usqp=CAU', 1, 100, 17.99, 3, NOW());

-- -----------------------------------------------------
-- Softwares
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES
('SOFTWARE-1000', 'Windows 10 Pro', 'A versão mais completa do Windows 10, projetada para empresas.', 'https://m.media-amazon.com/images/I/91u3V1ffwsL.jpg', 1, 100, 24.99, 4, NOW()),
('SOFTWARE-1001', 'Adobe Photoshop', 'Um dos programas de edição de imagens mais usados do mundo.', 'https://www.adobe.com/content/dam/shared/images/product-icons/svg/photoshop.svg', 1, 100, 29.99, 4, NOW()),
('SOFTWARE-1002', 'Microsoft Office 365', 'Pacote de aplicativos de escritório que inclui Word, Excel e PowerPoint.', 'https://www.microsoft.com/en-us/microsoft-365/images/product-images/logo-color/desktop/ms-office-logo-1.svg', 1, 100, 59.99, 4, NOW()),
('SOFTWARE-1003', 'Norton Antivirus', 'Proteção contra vírus e malware com atualizações em tempo real.', 'https://www.norton.com/images/logo/norton_logo.png', 1, 100, 29.99, 4, NOW()),
('SOFTWARE-1004', 'CorelDRAW Graphics Suite', 'Software de design gráfico e ilustração vetorial.', 'https://www.coreldraw.com/en/product/graphics-suite/logo.svg', 1, 100, 29.99, 4, NOW()),
('SOFTWARE-1005', 'Autodesk AutoCAD', 'Software de desenho técnico e design assistido por computador.', 'https://www.autodesk.com/solutions/2d-3d-cad-software/autoCAD-logo.svg', 1, 100, 39.99, 4, NOW());
