--
-- PostgreSQL database dump
--

-- Dumped from database version 15.12
-- Dumped by pg_dump version 15.12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.addresses VALUES (2, true, true, 'ACTIVE', '0325891234', 'số 200', '1B1513', 1542, 201, 2, 'lean270804@gmail.com', 'lean270804@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.addresses VALUES (1, false, true, 'ACTIVE', '0325896900', 'số 82 đường 19-5', '1B1515', 1542, 201, 2, 'lean270804@gmail.com', 'lean270804@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.addresses VALUES (4, true, true, 'ACTIVE', '0325826911', 'số 22', '1B1513', 1542, 201, 3, 'maiminhtu130803@gmail.com', 'maiminhtu130803@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.addresses VALUES (3, false, true, 'ACTIVE', '0325826933', 'số 333', '1B1513', 1542, 201, 3, 'maiminhtu130803@gmail.com', 'maiminhtu130803@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.addresses VALUES (5, true, true, 'ACTIVE', '0339896911', 'số 133, đường 19-5', '1B1515', 1542, 201, 5, 'thuydung2103@gmail.com', 'thuydung2103@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.addresses VALUES (6, true, true, 'ACTIVE', '0339896911', 'số 60', '1B1515', 1542, 201, 6, 'dinhphung123@gmail.com', 'dinhphung123@gmail.com', '2025-08-01', '2025-08-01');


--
-- Data for Name: branches; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.branches VALUES (1, 'Chi nhánh 1', '159 Đường Hoàng Hoa Thám, Quận Ba Đình, Hà Nội', '0933123123', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.branches VALUES (2, 'Chi nhánh 2', '25 Nguyễn Văn Cừ, Quận Long Biên, Hà Nội', '0912345678', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.branches VALUES (3, 'Chi nhánh 3', '72 Lê Văn Sỹ, Quận Phú Nhuận, TP. Hồ Chí Minh', '0987654321', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'Admin', 'admin@gmail.com', '$2a$10$eNOwf23dENieI.yWexC9muaXYLDLkjxJmnZuYxRswatnu53VD5Og2', 'https://yourdomain.com/default-avatar.png', '2025-08-01', 'MALE', 'ACTIVE', NULL, NULL, '2025-08-01', '2025-08-01');
INSERT INTO public.users VALUES (2, 'Lê Văn An', 'lean270804@gmail.com', '$2a$10$eY8zsAJJveKhqnoyWdmSxOC5OUg1VFqEP9pLk4MGVr60QN07Wmkwe', NULL, NULL, NULL, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.users VALUES (3, 'Mai Minh Tú', 'maiminhtu130803@gmail.com', '$2a$10$UevFeye5rmxrHhdCL9fQ3us1U7KhNgVMeufj.7amTXG83URO45.fG', NULL, NULL, NULL, 'ACTIVE', 'lean270804@gmail.com', 'lean270804@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.users VALUES (4, 'Lê Văn An', 'thuydung210305@gmail.com', '$2a$10$sTyTJq77/jC7UYAp3IDlZOc75xRSgVrZziyjsQ8/vzVFELBLcpzFu', NULL, NULL, NULL, 'ACTIVE', 'lean270804@gmail.com', 'lean270804@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.users VALUES (5, 'Thùy Dung', 'thuydung2103@gmail.com', '$2a$10$a60khj99OfJnA7p9Ip9KieCGCnWBN6YW1DobqxoTYGOD70tV1YYcK', NULL, NULL, NULL, 'ACTIVE', 'lean270804@gmail.com', 'lean270804@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.users VALUES (6, 'Lê Đình Phùng', 'dinhphung123@gmail.com', '$2a$10$HvhKr83adOy8q1l8cFOHLe/yZkIfvKtCOKWgQK0O0iD4EOD/4d1LK', NULL, NULL, NULL, 'ACTIVE', 'thuydung2103@gmail.com', 'thuydung2103@gmail.com', '2025-08-01', '2025-08-01');


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.carts VALUES (1, '2025-08-01', '2025-08-01', 1);
INSERT INTO public.carts VALUES (2, '2025-08-01', '2025-08-01', 2);
INSERT INTO public.carts VALUES (3, '2025-08-01', '2025-08-01', 3);
INSERT INTO public.carts VALUES (4, '2025-08-01', '2025-08-01', 4);
INSERT INTO public.carts VALUES (5, '2025-08-01', '2025-08-01', 5);
INSERT INTO public.carts VALUES (6, '2025-08-01', '2025-08-01', 6);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories VALUES (1, 'Áo Phông', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754039068/adam-store/images/xzyzfb7bkkkpyf5fauqe.jpg', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.categories VALUES (2, 'Áo Sơ Mi', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754039316/adam-store/images/rwrz34gclzswhbbrnuni.jpg', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.categories VALUES (3, 'Áo Polo', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754039466/adam-store/images/ggt5qjl2dwof2dedravn.jpg', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.categories VALUES (4, 'Áo Khoác', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754039543/adam-store/images/a6y3hq8jbjfvu3goyphn.jpg', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.categories VALUES (5, 'Quần Short', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754039583/adam-store/images/ucul5ztwnncz9dv98igp.jpg', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.categories VALUES (6, 'Quần Bò', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754039631/adam-store/images/zx3pxvwjqztymp4dyirz.jpg', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');


--
-- Data for Name: colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.colors VALUES (1, 'Black');
INSERT INTO public.colors VALUES (2, 'White');
INSERT INTO public.colors VALUES (3, 'Beige');
INSERT INTO public.colors VALUES (4, 'Blue');


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products VALUES (1, 'ÁO PHÔNG HEAVYWEIGHT MAY VIỀN', 'Áo phông chất liệu heavyweight, may viền tỉ mỉ, form rộng thoải mái, phù hợp đi chơi hoặc mặc hằng ngày.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 1);
INSERT INTO public.products VALUES (2, 'ÁO NỈ PHỐI KẺ SỌC KHÁC MÀU', 'Áo nỉ thiết kế phối kẻ sọc khác màu độc đáo, chất vải mềm mại giữ ấm tốt, phù hợp cho những ngày se lạnh.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 1);
INSERT INTO public.products VALUES (3, 'ÁO DENIM KIỂU SƠ MI THÊU HỌA TIẾT', 'Áo denim thiết kế kiểu sơ mi kết hợp hoạ tiết thêu tinh tế, mang phong cách cá tính, dễ phối đồ, phù hợp cả đi chơi và dạo phố.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 2);
INSERT INTO public.products VALUES (4, 'ÁO SƠ MI VẢI DỆT OXFORD', 'Áo sơ mi chất liệu vải dệt Oxford mềm mại, bền màu, thích hợp cho môi trường công sở và cả phong cách thường ngày.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 2);
INSERT INTO public.products VALUES (5, 'ÁO POLO DỆT KIM COTTON - LEN', 'Áo polo dệt kim chất liệu cotton pha len, mềm mại, co giãn tốt, thích hợp mặc đi làm, đi chơi hoặc dạo phố.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 3);
INSERT INTO public.products VALUES (6, 'ÁO POLO DỆT SỢI DỌC', 'Áo polo dệt sợi dọc mang lại cảm giác mát mẻ, co giãn tốt và sang trọng, thích hợp mặc hằng ngày hoặc đi chơi.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 3);
INSERT INTO public.products VALUES (7, 'ÁO KHOÁC VẢI KỸ THUẬT WATER REPELLENT', 'Áo khoác vải kỹ thuật chống thấm nước, chống gió, thích hợp cho các hoạt động ngoài trời và thời tiết lạnh.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 4);
INSERT INTO public.products VALUES (8, 'ÁO KHOÁC BOMBER RELAXED FIT', 'Áo khoác bomber phom relaxed, thiết kế thời trang, phù hợp đi chơi, đi làm hoặc mặc thường ngày.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 4);
INSERT INTO public.products VALUES (9, 'QUẦN SHORT BERMUDA DENIM RELAXED FIT XẾP LI', 'Quần short Bermuda chất denim, phom relaxed fit, thiết kế xếp li hiện đại, thoải mái cho các hoạt động hằng ngày.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 5);
INSERT INTO public.products VALUES (10, 'QUẦN SHORT BERMUDA VẢI SẦN HỌA TIẾT KẺ SỌC', 'Quần short Bermuda vải sần, họa tiết kẻ sọc hiện đại, trẻ trung, dễ phối đồ cho phong cách năng động.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 5);
INSERT INTO public.products VALUES (11, 'JEANS SLIM FIT TIMELESS', 'Quần jeans slim fit thiết kế tối giản, phù hợp mặc hằng ngày, giữ form và bền màu theo thời gian.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 6);
INSERT INTO public.products VALUES (12, 'QUẦN CHINO VẢI COTTON - SỢI GAI', 'Quần chino vải cotton sợi gai, thoáng mát, đứng form, dễ phối đồ, phù hợp mặc đi làm hoặc dạo phố.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 6);


--
-- Data for Name: product_variants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_variants VALUES (1, true, 450000, 100, 'ACTIVE', 1, 1, 2);
INSERT INTO public.product_variants VALUES (5, true, 450000, 100, 'ACTIVE', 1, 2, 3);
INSERT INTO public.product_variants VALUES (6, true, 450000, 100, 'ACTIVE', 1, 2, 4);
INSERT INTO public.product_variants VALUES (7, true, 450000, 100, 'ACTIVE', 1, 3, 1);
INSERT INTO public.product_variants VALUES (8, true, 450000, 100, 'ACTIVE', 1, 3, 4);
INSERT INTO public.product_variants VALUES (9, true, 450000, 100, 'ACTIVE', 1, 3, 5);
INSERT INTO public.product_variants VALUES (10, true, 450000, 100, 'ACTIVE', 1, 1, 5);
INSERT INTO public.product_variants VALUES (11, true, 450000, 100, 'ACTIVE', 1, 2, 1);
INSERT INTO public.product_variants VALUES (13, true, 450000, 100, 'ACTIVE', 1, 1, 4);
INSERT INTO public.product_variants VALUES (14, true, 450000, 100, 'ACTIVE', 1, 2, 5);
INSERT INTO public.product_variants VALUES (15, true, 450000, 100, 'ACTIVE', 1, 2, 2);
INSERT INTO public.product_variants VALUES (16, true, 500000, 100, 'ACTIVE', 2, 1, 2);
INSERT INTO public.product_variants VALUES (17, true, 500000, 100, 'ACTIVE', 2, 3, 2);
INSERT INTO public.product_variants VALUES (18, true, 500000, 100, 'ACTIVE', 2, 3, 5);
INSERT INTO public.product_variants VALUES (19, true, 500000, 100, 'ACTIVE', 2, 2, 1);
INSERT INTO public.product_variants VALUES (20, true, 500000, 100, 'ACTIVE', 2, 2, 3);
INSERT INTO public.product_variants VALUES (21, true, 500000, 100, 'ACTIVE', 2, 2, 5);
INSERT INTO public.product_variants VALUES (22, true, 500000, 100, 'ACTIVE', 2, 3, 1);
INSERT INTO public.product_variants VALUES (23, true, 500000, 100, 'ACTIVE', 2, 3, 3);
INSERT INTO public.product_variants VALUES (24, true, 500000, 100, 'ACTIVE', 2, 1, 4);
INSERT INTO public.product_variants VALUES (25, true, 500000, 100, 'ACTIVE', 2, 2, 2);
INSERT INTO public.product_variants VALUES (26, true, 500000, 100, 'ACTIVE', 2, 2, 4);
INSERT INTO public.product_variants VALUES (27, true, 500000, 100, 'ACTIVE', 2, 1, 3);
INSERT INTO public.product_variants VALUES (28, true, 500000, 100, 'ACTIVE', 2, 1, 1);
INSERT INTO public.product_variants VALUES (29, true, 500000, 100, 'ACTIVE', 2, 3, 4);
INSERT INTO public.product_variants VALUES (30, true, 500000, 100, 'ACTIVE', 2, 1, 5);
INSERT INTO public.product_variants VALUES (31, true, 700000, 100, 'ACTIVE', 3, 4, 6);
INSERT INTO public.product_variants VALUES (32, true, 700000, 100, 'ACTIVE', 3, 2, 4);
INSERT INTO public.product_variants VALUES (33, true, 700000, 100, 'ACTIVE', 3, 1, 2);
INSERT INTO public.product_variants VALUES (34, true, 700000, 100, 'ACTIVE', 3, 2, 3);
INSERT INTO public.product_variants VALUES (35, true, 700000, 100, 'ACTIVE', 3, 4, 2);
INSERT INTO public.product_variants VALUES (36, true, 700000, 100, 'ACTIVE', 3, 1, 1);
INSERT INTO public.product_variants VALUES (37, true, 700000, 100, 'ACTIVE', 3, 1, 5);
INSERT INTO public.product_variants VALUES (38, true, 700000, 100, 'ACTIVE', 3, 4, 3);
INSERT INTO public.product_variants VALUES (39, true, 700000, 100, 'ACTIVE', 3, 1, 6);
INSERT INTO public.product_variants VALUES (40, true, 700000, 100, 'ACTIVE', 3, 2, 6);
INSERT INTO public.product_variants VALUES (41, true, 700000, 100, 'ACTIVE', 3, 4, 1);
INSERT INTO public.product_variants VALUES (42, true, 700000, 100, 'ACTIVE', 3, 4, 4);
INSERT INTO public.product_variants VALUES (43, true, 700000, 100, 'ACTIVE', 3, 2, 2);
INSERT INTO public.product_variants VALUES (44, true, 700000, 100, 'ACTIVE', 3, 2, 5);
INSERT INTO public.product_variants VALUES (45, true, 700000, 100, 'ACTIVE', 3, 1, 3);
INSERT INTO public.product_variants VALUES (46, true, 700000, 100, 'ACTIVE', 3, 2, 1);
INSERT INTO public.product_variants VALUES (47, true, 700000, 100, 'ACTIVE', 3, 1, 4);
INSERT INTO public.product_variants VALUES (48, true, 700000, 100, 'ACTIVE', 3, 4, 5);
INSERT INTO public.product_variants VALUES (49, true, 650000, 100, 'ACTIVE', 4, 1, 6);
INSERT INTO public.product_variants VALUES (50, true, 650000, 100, 'ACTIVE', 4, 1, 2);
INSERT INTO public.product_variants VALUES (51, true, 650000, 100, 'ACTIVE', 4, 2, 2);
INSERT INTO public.product_variants VALUES (52, true, 650000, 100, 'ACTIVE', 4, 3, 4);
INSERT INTO public.product_variants VALUES (53, true, 650000, 100, 'ACTIVE', 4, 3, 2);
INSERT INTO public.product_variants VALUES (54, true, 650000, 100, 'ACTIVE', 4, 1, 3);
INSERT INTO public.product_variants VALUES (55, true, 650000, 100, 'ACTIVE', 4, 1, 5);
INSERT INTO public.product_variants VALUES (56, true, 650000, 100, 'ACTIVE', 4, 3, 5);
INSERT INTO public.product_variants VALUES (57, true, 650000, 100, 'ACTIVE', 4, 2, 3);
INSERT INTO public.product_variants VALUES (58, true, 650000, 100, 'ACTIVE', 4, 1, 4);
INSERT INTO public.product_variants VALUES (59, true, 650000, 100, 'ACTIVE', 4, 2, 5);
INSERT INTO public.product_variants VALUES (61, true, 650000, 100, 'ACTIVE', 4, 3, 6);
INSERT INTO public.product_variants VALUES (62, true, 650000, 100, 'ACTIVE', 4, 3, 3);
INSERT INTO public.product_variants VALUES (63, true, 650000, 100, 'ACTIVE', 4, 2, 4);
INSERT INTO public.product_variants VALUES (64, true, 800000, 100, 'ACTIVE', 5, 1, 5);
INSERT INTO public.product_variants VALUES (65, true, 800000, 100, 'ACTIVE', 5, 3, 6);
INSERT INTO public.product_variants VALUES (66, true, 800000, 100, 'ACTIVE', 5, 1, 3);
INSERT INTO public.product_variants VALUES (67, true, 800000, 100, 'ACTIVE', 5, 1, 6);
INSERT INTO public.product_variants VALUES (68, true, 800000, 100, 'ACTIVE', 5, 3, 3);
INSERT INTO public.product_variants VALUES (69, true, 800000, 100, 'ACTIVE', 5, 2, 4);
INSERT INTO public.product_variants VALUES (70, true, 800000, 100, 'ACTIVE', 5, 1, 4);
INSERT INTO public.product_variants VALUES (71, true, 800000, 100, 'ACTIVE', 5, 3, 4);
INSERT INTO public.product_variants VALUES (72, true, 800000, 100, 'ACTIVE', 5, 2, 5);
INSERT INTO public.product_variants VALUES (73, true, 800000, 100, 'ACTIVE', 5, 2, 3);
INSERT INTO public.product_variants VALUES (74, true, 800000, 100, 'ACTIVE', 5, 3, 5);
INSERT INTO public.product_variants VALUES (75, true, 800000, 100, 'ACTIVE', 5, 1, 2);
INSERT INTO public.product_variants VALUES (76, true, 800000, 100, 'ACTIVE', 5, 3, 2);
INSERT INTO public.product_variants VALUES (77, true, 800000, 100, 'ACTIVE', 5, 2, 2);
INSERT INTO public.product_variants VALUES (78, true, 800000, 100, 'ACTIVE', 5, 2, 6);
INSERT INTO public.product_variants VALUES (79, true, 770000, 100, 'ACTIVE', 6, 1, 1);
INSERT INTO public.product_variants VALUES (80, true, 770000, 100, 'ACTIVE', 6, 4, 3);
INSERT INTO public.product_variants VALUES (81, true, 770000, 100, 'ACTIVE', 6, 4, 1);
INSERT INTO public.product_variants VALUES (82, true, 770000, 100, 'ACTIVE', 6, 1, 4);
INSERT INTO public.product_variants VALUES (83, true, 770000, 100, 'ACTIVE', 6, 1, 5);
INSERT INTO public.product_variants VALUES (84, true, 770000, 100, 'ACTIVE', 6, 2, 3);
INSERT INTO public.product_variants VALUES (85, true, 770000, 100, 'ACTIVE', 6, 1, 6);
INSERT INTO public.product_variants VALUES (88, true, 770000, 98, 'ACTIVE', 6, 1, 3);
INSERT INTO public.product_variants VALUES (2, true, 450000, 97, 'ACTIVE', 1, 3, 2);
INSERT INTO public.product_variants VALUES (86, true, 770000, 98, 'ACTIVE', 6, 1, 2);
INSERT INTO public.product_variants VALUES (4, true, 450000, 98, 'ACTIVE', 1, 1, 1);
INSERT INTO public.product_variants VALUES (87, true, 770000, 97, 'ACTIVE', 6, 2, 2);
INSERT INTO public.product_variants VALUES (12, true, 450000, 97, 'ACTIVE', 1, 3, 3);
INSERT INTO public.product_variants VALUES (60, true, 650000, 99, 'ACTIVE', 4, 2, 6);
INSERT INTO public.product_variants VALUES (89, true, 770000, 100, 'ACTIVE', 6, 4, 5);
INSERT INTO public.product_variants VALUES (90, true, 770000, 100, 'ACTIVE', 6, 2, 1);
INSERT INTO public.product_variants VALUES (91, true, 770000, 100, 'ACTIVE', 6, 4, 2);
INSERT INTO public.product_variants VALUES (92, true, 770000, 100, 'ACTIVE', 6, 4, 6);
INSERT INTO public.product_variants VALUES (93, true, 770000, 100, 'ACTIVE', 6, 2, 6);
INSERT INTO public.product_variants VALUES (94, true, 770000, 100, 'ACTIVE', 6, 4, 4);
INSERT INTO public.product_variants VALUES (95, true, 770000, 100, 'ACTIVE', 6, 2, 4);
INSERT INTO public.product_variants VALUES (96, true, 770000, 100, 'ACTIVE', 6, 2, 5);
INSERT INTO public.product_variants VALUES (97, true, 900000, 100, 'ACTIVE', 7, 1, 5);
INSERT INTO public.product_variants VALUES (98, true, 900000, 100, 'ACTIVE', 7, 2, 6);
INSERT INTO public.product_variants VALUES (99, true, 900000, 100, 'ACTIVE', 7, 2, 5);
INSERT INTO public.product_variants VALUES (100, true, 900000, 100, 'ACTIVE', 7, 4, 3);
INSERT INTO public.product_variants VALUES (101, true, 900000, 100, 'ACTIVE', 7, 1, 6);
INSERT INTO public.product_variants VALUES (103, true, 900000, 100, 'ACTIVE', 7, 4, 1);
INSERT INTO public.product_variants VALUES (104, true, 900000, 100, 'ACTIVE', 7, 4, 2);
INSERT INTO public.product_variants VALUES (105, true, 900000, 100, 'ACTIVE', 7, 4, 6);
INSERT INTO public.product_variants VALUES (106, true, 900000, 100, 'ACTIVE', 7, 2, 3);
INSERT INTO public.product_variants VALUES (107, true, 900000, 100, 'ACTIVE', 7, 2, 2);
INSERT INTO public.product_variants VALUES (108, true, 900000, 100, 'ACTIVE', 7, 4, 4);
INSERT INTO public.product_variants VALUES (109, true, 900000, 100, 'ACTIVE', 7, 4, 5);
INSERT INTO public.product_variants VALUES (110, true, 900000, 100, 'ACTIVE', 7, 1, 3);
INSERT INTO public.product_variants VALUES (111, true, 900000, 100, 'ACTIVE', 7, 1, 1);
INSERT INTO public.product_variants VALUES (112, true, 900000, 100, 'ACTIVE', 7, 1, 2);
INSERT INTO public.product_variants VALUES (113, true, 900000, 100, 'ACTIVE', 7, 1, 4);
INSERT INTO public.product_variants VALUES (114, true, 900000, 100, 'ACTIVE', 7, 2, 4);
INSERT INTO public.product_variants VALUES (115, true, 950000, 100, 'ACTIVE', 8, 2, 6);
INSERT INTO public.product_variants VALUES (116, true, 950000, 100, 'ACTIVE', 8, 3, 3);
INSERT INTO public.product_variants VALUES (117, true, 950000, 100, 'ACTIVE', 8, 1, 1);
INSERT INTO public.product_variants VALUES (118, true, 950000, 100, 'ACTIVE', 8, 1, 4);
INSERT INTO public.product_variants VALUES (119, true, 950000, 100, 'ACTIVE', 8, 1, 2);
INSERT INTO public.product_variants VALUES (120, true, 950000, 100, 'ACTIVE', 8, 2, 4);
INSERT INTO public.product_variants VALUES (121, true, 950000, 100, 'ACTIVE', 8, 3, 1);
INSERT INTO public.product_variants VALUES (122, true, 950000, 100, 'ACTIVE', 8, 1, 3);
INSERT INTO public.product_variants VALUES (123, true, 950000, 100, 'ACTIVE', 8, 3, 5);
INSERT INTO public.product_variants VALUES (124, true, 950000, 100, 'ACTIVE', 8, 2, 1);
INSERT INTO public.product_variants VALUES (125, true, 950000, 100, 'ACTIVE', 8, 3, 2);
INSERT INTO public.product_variants VALUES (126, true, 950000, 100, 'ACTIVE', 8, 1, 6);
INSERT INTO public.product_variants VALUES (127, true, 950000, 100, 'ACTIVE', 8, 3, 4);
INSERT INTO public.product_variants VALUES (128, true, 950000, 100, 'ACTIVE', 8, 2, 2);
INSERT INTO public.product_variants VALUES (129, true, 950000, 100, 'ACTIVE', 8, 2, 5);
INSERT INTO public.product_variants VALUES (130, true, 950000, 100, 'ACTIVE', 8, 1, 5);
INSERT INTO public.product_variants VALUES (131, true, 950000, 100, 'ACTIVE', 8, 2, 3);
INSERT INTO public.product_variants VALUES (132, true, 950000, 100, 'ACTIVE', 8, 3, 6);
INSERT INTO public.product_variants VALUES (133, true, 820000, 100, 'ACTIVE', 9, 2, 4);
INSERT INTO public.product_variants VALUES (134, true, 820000, 100, 'ACTIVE', 9, 1, 5);
INSERT INTO public.product_variants VALUES (135, true, 820000, 100, 'ACTIVE', 9, 1, 3);
INSERT INTO public.product_variants VALUES (136, true, 820000, 100, 'ACTIVE', 9, 4, 5);
INSERT INTO public.product_variants VALUES (137, true, 820000, 100, 'ACTIVE', 9, 2, 2);
INSERT INTO public.product_variants VALUES (138, true, 820000, 100, 'ACTIVE', 9, 1, 6);
INSERT INTO public.product_variants VALUES (139, true, 820000, 100, 'ACTIVE', 9, 4, 3);
INSERT INTO public.product_variants VALUES (140, true, 820000, 100, 'ACTIVE', 9, 4, 6);
INSERT INTO public.product_variants VALUES (141, true, 820000, 100, 'ACTIVE', 9, 2, 5);
INSERT INTO public.product_variants VALUES (142, true, 820000, 100, 'ACTIVE', 9, 2, 3);
INSERT INTO public.product_variants VALUES (143, true, 820000, 100, 'ACTIVE', 9, 1, 4);
INSERT INTO public.product_variants VALUES (144, true, 820000, 100, 'ACTIVE', 9, 4, 2);
INSERT INTO public.product_variants VALUES (145, true, 820000, 100, 'ACTIVE', 9, 1, 2);
INSERT INTO public.product_variants VALUES (146, true, 820000, 100, 'ACTIVE', 9, 4, 4);
INSERT INTO public.product_variants VALUES (147, true, 820000, 100, 'ACTIVE', 9, 2, 6);
INSERT INTO public.product_variants VALUES (148, true, 880000, 100, 'ACTIVE', 10, 2, 2);
INSERT INTO public.product_variants VALUES (149, true, 880000, 100, 'ACTIVE', 10, 3, 5);
INSERT INTO public.product_variants VALUES (151, true, 880000, 100, 'ACTIVE', 10, 3, 6);
INSERT INTO public.product_variants VALUES (152, true, 880000, 100, 'ACTIVE', 10, 3, 3);
INSERT INTO public.product_variants VALUES (153, true, 880000, 100, 'ACTIVE', 10, 2, 3);
INSERT INTO public.product_variants VALUES (154, true, 880000, 100, 'ACTIVE', 10, 1, 3);
INSERT INTO public.product_variants VALUES (155, true, 880000, 100, 'ACTIVE', 10, 2, 1);
INSERT INTO public.product_variants VALUES (156, true, 880000, 100, 'ACTIVE', 10, 2, 4);
INSERT INTO public.product_variants VALUES (157, true, 880000, 100, 'ACTIVE', 10, 3, 4);
INSERT INTO public.product_variants VALUES (158, true, 880000, 100, 'ACTIVE', 10, 2, 6);
INSERT INTO public.product_variants VALUES (159, true, 880000, 100, 'ACTIVE', 10, 1, 1);
INSERT INTO public.product_variants VALUES (160, true, 880000, 100, 'ACTIVE', 10, 1, 2);
INSERT INTO public.product_variants VALUES (161, true, 880000, 100, 'ACTIVE', 10, 1, 4);
INSERT INTO public.product_variants VALUES (162, true, 880000, 100, 'ACTIVE', 10, 2, 5);
INSERT INTO public.product_variants VALUES (163, true, 880000, 100, 'ACTIVE', 10, 3, 2);
INSERT INTO public.product_variants VALUES (164, true, 880000, 100, 'ACTIVE', 10, 1, 5);
INSERT INTO public.product_variants VALUES (165, true, 880000, 100, 'ACTIVE', 10, 3, 1);
INSERT INTO public.product_variants VALUES (166, true, 750000, 100, 'ACTIVE', 11, 1, 4);
INSERT INTO public.product_variants VALUES (167, true, 750000, 100, 'ACTIVE', 11, 2, 5);
INSERT INTO public.product_variants VALUES (168, true, 750000, 100, 'ACTIVE', 11, 2, 6);
INSERT INTO public.product_variants VALUES (169, true, 750000, 100, 'ACTIVE', 11, 1, 1);
INSERT INTO public.product_variants VALUES (170, true, 750000, 100, 'ACTIVE', 11, 4, 2);
INSERT INTO public.product_variants VALUES (171, true, 750000, 100, 'ACTIVE', 11, 1, 6);
INSERT INTO public.product_variants VALUES (172, true, 750000, 100, 'ACTIVE', 11, 4, 4);
INSERT INTO public.product_variants VALUES (173, true, 750000, 100, 'ACTIVE', 11, 2, 4);
INSERT INTO public.product_variants VALUES (174, true, 750000, 100, 'ACTIVE', 11, 4, 3);
INSERT INTO public.product_variants VALUES (175, true, 750000, 100, 'ACTIVE', 11, 1, 5);
INSERT INTO public.product_variants VALUES (176, true, 750000, 100, 'ACTIVE', 11, 4, 6);
INSERT INTO public.product_variants VALUES (150, true, 880000, 98, 'ACTIVE', 10, 1, 6);
INSERT INTO public.product_variants VALUES (177, true, 750000, 100, 'ACTIVE', 11, 1, 3);
INSERT INTO public.product_variants VALUES (178, true, 750000, 100, 'ACTIVE', 11, 4, 5);
INSERT INTO public.product_variants VALUES (179, true, 750000, 100, 'ACTIVE', 11, 2, 1);
INSERT INTO public.product_variants VALUES (180, true, 750000, 100, 'ACTIVE', 11, 2, 2);
INSERT INTO public.product_variants VALUES (181, true, 750000, 100, 'ACTIVE', 11, 4, 1);
INSERT INTO public.product_variants VALUES (182, true, 750000, 100, 'ACTIVE', 11, 1, 2);
INSERT INTO public.product_variants VALUES (183, true, 750000, 100, 'ACTIVE', 11, 2, 3);
INSERT INTO public.product_variants VALUES (184, true, 780000, 100, 'ACTIVE', 12, 1, 1);
INSERT INTO public.product_variants VALUES (185, true, 780000, 100, 'ACTIVE', 12, 2, 6);
INSERT INTO public.product_variants VALUES (186, true, 780000, 100, 'ACTIVE', 12, 1, 6);
INSERT INTO public.product_variants VALUES (187, true, 780000, 100, 'ACTIVE', 12, 2, 4);
INSERT INTO public.product_variants VALUES (188, true, 780000, 100, 'ACTIVE', 12, 1, 3);
INSERT INTO public.product_variants VALUES (189, true, 780000, 100, 'ACTIVE', 12, 2, 3);
INSERT INTO public.product_variants VALUES (190, true, 780000, 100, 'ACTIVE', 12, 3, 6);
INSERT INTO public.product_variants VALUES (191, true, 780000, 100, 'ACTIVE', 12, 1, 5);
INSERT INTO public.product_variants VALUES (192, true, 780000, 100, 'ACTIVE', 12, 2, 1);
INSERT INTO public.product_variants VALUES (193, true, 780000, 100, 'ACTIVE', 12, 1, 2);
INSERT INTO public.product_variants VALUES (194, true, 780000, 100, 'ACTIVE', 12, 3, 5);
INSERT INTO public.product_variants VALUES (195, true, 780000, 100, 'ACTIVE', 12, 3, 3);
INSERT INTO public.product_variants VALUES (196, true, 780000, 100, 'ACTIVE', 12, 1, 4);
INSERT INTO public.product_variants VALUES (197, true, 780000, 100, 'ACTIVE', 12, 3, 2);
INSERT INTO public.product_variants VALUES (198, true, 780000, 100, 'ACTIVE', 12, 2, 2);
INSERT INTO public.product_variants VALUES (199, true, 780000, 100, 'ACTIVE', 12, 2, 5);
INSERT INTO public.product_variants VALUES (200, true, 780000, 100, 'ACTIVE', 12, 3, 1);
INSERT INTO public.product_variants VALUES (201, true, 780000, 100, 'ACTIVE', 12, 3, 4);
INSERT INTO public.product_variants VALUES (3, true, 450000, 99, 'ACTIVE', 1, 1, 3);
INSERT INTO public.product_variants VALUES (102, true, 900000, 97, 'ACTIVE', 7, 2, 1);


--
-- Data for Name: cart_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cart_items VALUES (1, 450000, 2, 2, 4);
INSERT INTO public.cart_items VALUES (2, 800000, 3, 2, 66);
INSERT INTO public.cart_items VALUES (3, 900000, 1, 2, 103);
INSERT INTO public.cart_items VALUES (4, 650000, 1, 2, 54);
INSERT INTO public.cart_items VALUES (5, 450000, 2, 3, 4);
INSERT INTO public.cart_items VALUES (6, 770000, 2, 3, 88);
INSERT INTO public.cart_items VALUES (7, 900000, 3, 3, 103);
INSERT INTO public.cart_items VALUES (8, 900000, 1, 3, 112);


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.files VALUES (1, 'adam-store/images/xzyzfb7bkkkpyf5fauqe', 'img.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754039068/adam-store/images/xzyzfb7bkkkpyf5fauqe.jpg', 'admin@gmail.com', '2025-08-01', NULL);
INSERT INTO public.files VALUES (2, 'adam-store/images/rwrz34gclzswhbbrnuni', 'img-3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754039316/adam-store/images/rwrz34gclzswhbbrnuni.jpg', 'admin@gmail.com', '2025-08-01', NULL);
INSERT INTO public.files VALUES (3, 'adam-store/images/ggt5qjl2dwof2dedravn', 'img-4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754039466/adam-store/images/ggt5qjl2dwof2dedravn.jpg', 'admin@gmail.com', '2025-08-01', NULL);
INSERT INTO public.files VALUES (4, 'adam-store/images/a6y3hq8jbjfvu3goyphn', 'img-5.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754039543/adam-store/images/a6y3hq8jbjfvu3goyphn.jpg', 'admin@gmail.com', '2025-08-01', NULL);
INSERT INTO public.files VALUES (5, 'adam-store/images/ucul5ztwnncz9dv98igp', 'img-1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754039583/adam-store/images/ucul5ztwnncz9dv98igp.jpg', 'admin@gmail.com', '2025-08-01', NULL);
INSERT INTO public.files VALUES (6, 'adam-store/images/zx3pxvwjqztymp4dyirz', 'quần bò.jpeg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754039631/adam-store/images/zx3pxvwjqztymp4dyirz.jpg', 'admin@gmail.com', '2025-08-01', NULL);
INSERT INTO public.files VALUES (7, 'adam-store/images/ksgqn9jyv6smoxhdp5k0', '1.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040012/adam-store/images/ksgqn9jyv6smoxhdp5k0.jpg', 'admin@gmail.com', '2025-08-01', 1);
INSERT INTO public.files VALUES (8, 'adam-store/images/ns1yoxlhnzatkmiogcjg', '1.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040013/adam-store/images/ns1yoxlhnzatkmiogcjg.jpg', 'admin@gmail.com', '2025-08-01', 1);
INSERT INTO public.files VALUES (9, 'adam-store/images/dnebvv9skoljhm8qhvwj', '1.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040015/adam-store/images/dnebvv9skoljhm8qhvwj.jpg', 'admin@gmail.com', '2025-08-01', 1);
INSERT INTO public.files VALUES (10, 'adam-store/images/y1etghezyolr9fa1gapw', '1.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040017/adam-store/images/y1etghezyolr9fa1gapw.jpg', 'admin@gmail.com', '2025-08-01', 1);
INSERT INTO public.files VALUES (11, 'adam-store/images/yom6yltz2bske0trg7mw', '2.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040252/adam-store/images/yom6yltz2bske0trg7mw.jpg', 'admin@gmail.com', '2025-08-01', 2);
INSERT INTO public.files VALUES (12, 'adam-store/images/coqxxqazkrdo4znb9le6', '2.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040254/adam-store/images/coqxxqazkrdo4znb9le6.jpg', 'admin@gmail.com', '2025-08-01', 2);
INSERT INTO public.files VALUES (13, 'adam-store/images/juulzk0fcik4zcnzasvc', '2.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040255/adam-store/images/juulzk0fcik4zcnzasvc.jpg', 'admin@gmail.com', '2025-08-01', 2);
INSERT INTO public.files VALUES (14, 'adam-store/images/ob8lkkzbg4q84eapnzdj', '2.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040259/adam-store/images/ob8lkkzbg4q84eapnzdj.jpg', 'admin@gmail.com', '2025-08-01', 2);
INSERT INTO public.files VALUES (15, 'adam-store/images/x1x8lfeyeexpewqpr4nk', '1.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040490/adam-store/images/x1x8lfeyeexpewqpr4nk.jpg', 'admin@gmail.com', '2025-08-01', 3);
INSERT INTO public.files VALUES (16, 'adam-store/images/qygamwhqwdmzzl3wjn9h', '1.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040492/adam-store/images/qygamwhqwdmzzl3wjn9h.jpg', 'admin@gmail.com', '2025-08-01', 3);
INSERT INTO public.files VALUES (17, 'adam-store/images/zh6li6aqghdvygultz0g', '1.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040494/adam-store/images/zh6li6aqghdvygultz0g.jpg', 'admin@gmail.com', '2025-08-01', 3);
INSERT INTO public.files VALUES (18, 'adam-store/images/kojut4om6aqq5kjnbgej', '1.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040495/adam-store/images/kojut4om6aqq5kjnbgej.jpg', 'admin@gmail.com', '2025-08-01', 3);
INSERT INTO public.files VALUES (19, 'adam-store/images/gid0blipkgqofvyfnxet', '2.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040647/adam-store/images/gid0blipkgqofvyfnxet.jpg', 'admin@gmail.com', '2025-08-01', 4);
INSERT INTO public.files VALUES (20, 'adam-store/images/j7xvhokou7e5ixdryuzo', '2.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040649/adam-store/images/j7xvhokou7e5ixdryuzo.jpg', 'admin@gmail.com', '2025-08-01', 4);
INSERT INTO public.files VALUES (21, 'adam-store/images/q2bm8yjiporjm610hcpi', '2.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040651/adam-store/images/q2bm8yjiporjm610hcpi.jpg', 'admin@gmail.com', '2025-08-01', 4);
INSERT INTO public.files VALUES (22, 'adam-store/images/iouvlbq6ykohdysyisvq', '2.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040652/adam-store/images/iouvlbq6ykohdysyisvq.jpg', 'admin@gmail.com', '2025-08-01', 4);
INSERT INTO public.files VALUES (23, 'adam-store/images/khknue3lnga64vxa4s6u', '1.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040769/adam-store/images/khknue3lnga64vxa4s6u.jpg', 'admin@gmail.com', '2025-08-01', 5);
INSERT INTO public.files VALUES (24, 'adam-store/images/jia2uacxplv8xjbasabb', '1.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040770/adam-store/images/jia2uacxplv8xjbasabb.jpg', 'admin@gmail.com', '2025-08-01', 5);
INSERT INTO public.files VALUES (25, 'adam-store/images/pf3ouvyt7mrfa0my6tqk', '1.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040772/adam-store/images/pf3ouvyt7mrfa0my6tqk.jpg', 'admin@gmail.com', '2025-08-01', 5);
INSERT INTO public.files VALUES (26, 'adam-store/images/piimhhvfqkqkogwky1y3', '1.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040774/adam-store/images/piimhhvfqkqkogwky1y3.jpg', 'admin@gmail.com', '2025-08-01', 5);
INSERT INTO public.files VALUES (27, 'adam-store/images/uw1jdm67pl3rz6kfgxgm', '2.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040924/adam-store/images/uw1jdm67pl3rz6kfgxgm.jpg', 'admin@gmail.com', '2025-08-01', 6);
INSERT INTO public.files VALUES (28, 'adam-store/images/gf28qhmdx8an3inn3tbv', '2.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040926/adam-store/images/gf28qhmdx8an3inn3tbv.jpg', 'admin@gmail.com', '2025-08-01', 6);
INSERT INTO public.files VALUES (29, 'adam-store/images/f7hwcb8uwhxwiswkzfmy', '2.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040928/adam-store/images/f7hwcb8uwhxwiswkzfmy.jpg', 'admin@gmail.com', '2025-08-01', 6);
INSERT INTO public.files VALUES (30, 'adam-store/images/uqc3cchdvvskbyrqfenq', '2.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754040930/adam-store/images/uqc3cchdvvskbyrqfenq.jpg', 'admin@gmail.com', '2025-08-01', 6);
INSERT INTO public.files VALUES (31, 'adam-store/images/sadkmebuxz2eih1yjk3w', '1.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041113/adam-store/images/sadkmebuxz2eih1yjk3w.jpg', 'admin@gmail.com', '2025-08-01', 7);
INSERT INTO public.files VALUES (32, 'adam-store/images/lnmcf0fmzbrsvjdsiwzp', '1.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041115/adam-store/images/lnmcf0fmzbrsvjdsiwzp.jpg', 'admin@gmail.com', '2025-08-01', 7);
INSERT INTO public.files VALUES (33, 'adam-store/images/guxlsdhfjlnafyooynl2', '1.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041117/adam-store/images/guxlsdhfjlnafyooynl2.jpg', 'admin@gmail.com', '2025-08-01', 7);
INSERT INTO public.files VALUES (34, 'adam-store/images/d2wjsk8kzqjsng1gdmwk', '1.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041119/adam-store/images/d2wjsk8kzqjsng1gdmwk.jpg', 'admin@gmail.com', '2025-08-01', 7);
INSERT INTO public.files VALUES (35, 'adam-store/images/ip7rmbyywxpprfmkhp5v', '2.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041227/adam-store/images/ip7rmbyywxpprfmkhp5v.jpg', 'admin@gmail.com', '2025-08-01', 8);
INSERT INTO public.files VALUES (36, 'adam-store/images/xkhdy4jhkpumwbgj3kld', '2.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041228/adam-store/images/xkhdy4jhkpumwbgj3kld.jpg', 'admin@gmail.com', '2025-08-01', 8);
INSERT INTO public.files VALUES (37, 'adam-store/images/rjuimzsyfjpsl9o6edie', '2.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041230/adam-store/images/rjuimzsyfjpsl9o6edie.jpg', 'admin@gmail.com', '2025-08-01', 8);
INSERT INTO public.files VALUES (38, 'adam-store/images/kqsbdgjsepf7odmfk43t', '2.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041231/adam-store/images/kqsbdgjsepf7odmfk43t.jpg', 'admin@gmail.com', '2025-08-01', 8);
INSERT INTO public.files VALUES (39, 'adam-store/images/aj6lgwirdhmzbcvla6t8', '1.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041488/adam-store/images/aj6lgwirdhmzbcvla6t8.jpg', 'admin@gmail.com', '2025-08-01', 9);
INSERT INTO public.files VALUES (40, 'adam-store/images/c90xbvv6sjapmqzruumg', '1.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041490/adam-store/images/c90xbvv6sjapmqzruumg.jpg', 'admin@gmail.com', '2025-08-01', 9);
INSERT INTO public.files VALUES (41, 'adam-store/images/yg28brrbklviocre2ckp', '1.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041491/adam-store/images/yg28brrbklviocre2ckp.jpg', 'admin@gmail.com', '2025-08-01', 9);
INSERT INTO public.files VALUES (42, 'adam-store/images/ji8y6er50xyamvejy1nk', '1.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041493/adam-store/images/ji8y6er50xyamvejy1nk.jpg', 'admin@gmail.com', '2025-08-01', 9);
INSERT INTO public.files VALUES (43, 'adam-store/images/tnhjoy7rzdgrvpyqmb4i', '2.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041695/adam-store/images/tnhjoy7rzdgrvpyqmb4i.jpg', 'admin@gmail.com', '2025-08-01', 10);
INSERT INTO public.files VALUES (44, 'adam-store/images/uy4h18i67wzki1oatcpi', '2.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041697/adam-store/images/uy4h18i67wzki1oatcpi.jpg', 'admin@gmail.com', '2025-08-01', 10);
INSERT INTO public.files VALUES (45, 'adam-store/images/lddovs63p4dme3sknt50', '2.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041698/adam-store/images/lddovs63p4dme3sknt50.jpg', 'admin@gmail.com', '2025-08-01', 10);
INSERT INTO public.files VALUES (46, 'adam-store/images/fyyesfu5z6srqpgfmkl1', '2.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041700/adam-store/images/fyyesfu5z6srqpgfmkl1.jpg', 'admin@gmail.com', '2025-08-01', 10);
INSERT INTO public.files VALUES (47, 'adam-store/images/z6tgu1q3fgsbpdsaxlqz', '1.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041894/adam-store/images/z6tgu1q3fgsbpdsaxlqz.jpg', 'admin@gmail.com', '2025-08-01', 11);
INSERT INTO public.files VALUES (48, 'adam-store/images/vprtkv41i15nk2vheu5j', '1.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041896/adam-store/images/vprtkv41i15nk2vheu5j.jpg', 'admin@gmail.com', '2025-08-01', 11);
INSERT INTO public.files VALUES (49, 'adam-store/images/wiamkt0warin5fgu9pqu', '1.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041898/adam-store/images/wiamkt0warin5fgu9pqu.jpg', 'admin@gmail.com', '2025-08-01', 11);
INSERT INTO public.files VALUES (50, 'adam-store/images/kjawsk8suutjbc0ehyec', '1.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754041900/adam-store/images/kjawsk8suutjbc0ehyec.jpg', 'admin@gmail.com', '2025-08-01', 11);
INSERT INTO public.files VALUES (51, 'adam-store/images/npjsaxf8qkbgnit0z4vd', '2.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042076/adam-store/images/npjsaxf8qkbgnit0z4vd.jpg', 'admin@gmail.com', '2025-08-01', 12);
INSERT INTO public.files VALUES (52, 'adam-store/images/mtbnp4fqhyjqvsy002qf', '2.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042077/adam-store/images/mtbnp4fqhyjqvsy002qf.jpg', 'admin@gmail.com', '2025-08-01', 12);
INSERT INTO public.files VALUES (53, 'adam-store/images/legvdmqzbvwh7yths5dq', '2.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042079/adam-store/images/legvdmqzbvwh7yths5dq.jpg', 'admin@gmail.com', '2025-08-01', 12);
INSERT INTO public.files VALUES (54, 'adam-store/images/ryflsoovwpwdzdga0nvn', '2.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042080/adam-store/images/ryflsoovwpwdzdga0nvn.jpg', 'admin@gmail.com', '2025-08-01', 12);
INSERT INTO public.files VALUES (55, 'adam-store/images/k1wxwbi5rv9mi4tcpksu', '1.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042519/adam-store/images/k1wxwbi5rv9mi4tcpksu.webp', 'lean270804@gmail.com', '2025-08-01', NULL);
INSERT INTO public.files VALUES (56, 'adam-store/images/fkflvtpuo8jvb66xuop0', '2.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042521/adam-store/images/fkflvtpuo8jvb66xuop0.webp', 'lean270804@gmail.com', '2025-08-01', NULL);
INSERT INTO public.files VALUES (57, 'adam-store/images/s67l0vqnspxz9rj2afxg', '3.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042718/adam-store/images/s67l0vqnspxz9rj2afxg.webp', 'lean270804@gmail.com', '2025-08-01', NULL);
INSERT INTO public.files VALUES (58, 'adam-store/images/jyb7tdsme6x9xyk2ch5k', '4.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042721/adam-store/images/jyb7tdsme6x9xyk2ch5k.webp', 'lean270804@gmail.com', '2025-08-01', NULL);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders VALUES (1, '2025-08-01', 450000, 'PROCESSING', '2025-08-01', 1, 2);
INSERT INTO public.orders VALUES (2, '2025-08-01', 1351500, 'PROCESSING', '2025-08-01', 2, 2);
INSERT INTO public.orders VALUES (3, '2025-08-01', 2077500, 'PROCESSING', '2025-08-01', 1, 2);
INSERT INTO public.orders VALUES (4, '2025-08-01', 1260000, 'PROCESSING', '2025-08-01', 3, 3);
INSERT INTO public.orders VALUES (5, '2025-08-01', 1368500, 'PROCESSING', '2025-08-01', 4, 3);
INSERT INTO public.orders VALUES (6, '2025-08-01', 846000, 'PROCESSING', '2025-08-01', 5, 5);
INSERT INTO public.orders VALUES (7, '2025-08-01', 2006000, 'PROCESSING', '2025-08-01', 5, 5);
INSERT INTO public.orders VALUES (8, '2025-08-01', 1190000, 'PROCESSING', '2025-08-01', 6, 6);
INSERT INTO public.orders VALUES (10, '2025-08-01', 630000, 'PROCESSING', '2025-08-01', 6, 6);
INSERT INTO public.orders VALUES (11, '2025-08-01', 1810000, 'PROCESSING', '2025-08-01', 6, 6);


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_items VALUES (1, 1, 450000, 3, 1);
INSERT INTO public.order_items VALUES (2, 2, 770000, 88, 2);
INSERT INTO public.order_items VALUES (3, 3, 900000, 102, 3);
INSERT INTO public.order_items VALUES (4, 3, 450000, 2, 4);
INSERT INTO public.order_items VALUES (5, 2, 770000, 86, 5);
INSERT INTO public.order_items VALUES (6, 2, 450000, 4, 6);
INSERT INTO public.order_items VALUES (7, 3, 770000, 87, 7);
INSERT INTO public.order_items VALUES (8, 3, 450000, 12, 8);
INSERT INTO public.order_items VALUES (10, 1, 650000, 60, 10);
INSERT INTO public.order_items VALUES (11, 2, 880000, 150, 11);


--
-- Data for Name: payment_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.payment_history VALUES (1, true, 'VNPAY', 450000, 'PAID', '2025-08-01 16:58:22.375935', 1);
INSERT INTO public.payment_history VALUES (2, true, 'VNPAY', 1351500, 'PAID', '2025-08-01 16:58:50.012879', 2);
INSERT INTO public.payment_history VALUES (3, true, 'VNPAY', 2077500, 'PAID', '2025-08-01 16:59:23.047591', 3);
INSERT INTO public.payment_history VALUES (4, true, 'VNPAY', 1260000, 'PAID', '2025-08-01 17:14:43.569319', 4);
INSERT INTO public.payment_history VALUES (5, true, 'VNPAY', 1368500, 'PAID', '2025-08-01 17:15:31.899158', 5);
INSERT INTO public.payment_history VALUES (6, true, 'VNPAY', 846000, 'PAID', '2025-08-01 17:24:02.195496', 6);
INSERT INTO public.payment_history VALUES (7, true, 'VNPAY', 2006000, 'PAID', '2025-08-01 17:25:00.002558', 7);
INSERT INTO public.payment_history VALUES (8, true, 'VNPAY', 1190000, 'PAID', '2025-08-01 17:27:39.147868', 8);
INSERT INTO public.payment_history VALUES (9, true, 'VNPAY', 630000, 'PAID', '2025-08-01 17:29:00.045825', 10);
INSERT INTO public.payment_history VALUES (10, true, 'VNPAY', 1810000, 'PAID', '2025-08-01 17:29:31.388607', 11);


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: promotions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.promotions VALUES (1, 'WELCOME10', 'Giảm 10% cho khách hàng mới', 10, '2025-01-01', '2025-12-31', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.promotions VALUES (2, 'SALE15', 'Giảm 15% toàn bộ đơn hàng', 15, '2025-06-01', '2025-08-31', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.promotions VALUES (3, 'SUMMER25', 'Ưu đãi mùa hè: Giảm 25%', 25, '2025-06-01', '2025-09-30', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.promotions VALUES (4, 'FLASH10', 'Flash Sale - Giảm 10% trong thời gian ngắn', 10, '2025-08-01', '2025-08-07', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.promotions VALUES (5, 'HOTDEAL10', 'Giảm 10% cho tất cả đơn hàng trong mùa hè', 10, '2025-07-01', '2025-08-31', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.promotions VALUES (6, 'JULY15', 'Ưu đãi tháng 7 - Giảm 15%', 15, '2025-07-15', '2025-08-15', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.promotions VALUES (7, 'SHOPNOW20', 'Mua ngay giảm 20% toàn đơn', 20, '2025-07-25', '2025-08-05', 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01');


--
-- Data for Name: promotion_usages; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.promotion_usages VALUES (1, 50000, '2025-08-01 16:58:07.650578', 2, 1, 1);
INSERT INTO public.promotion_usages VALUES (2, 238500, '2025-08-01 16:58:41.752671', 2, 2, 2);
INSERT INTO public.promotion_usages VALUES (3, 692500, '2025-08-01 16:59:13.732383', 2, 3, 3);
INSERT INTO public.promotion_usages VALUES (4, 140000, '2025-08-01 17:14:33.794778', 3, 1, 4);
INSERT INTO public.promotion_usages VALUES (5, 241500, '2025-08-01 17:15:21.009801', 3, 2, 5);
INSERT INTO public.promotion_usages VALUES (6, 94000, '2025-08-01 17:23:55.32719', 5, 1, 6);
INSERT INTO public.promotion_usages VALUES (7, 354000, '2025-08-01 17:24:51.483139', 5, 2, 7);
INSERT INTO public.promotion_usages VALUES (8, 210000, '2025-08-01 17:27:32.875896', 6, 2, 8);
INSERT INTO public.promotion_usages VALUES (9, 70000, '2025-08-01 17:28:47.636954', 6, 1, 10);


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.refresh_tokens VALUES (1, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbkBnbWFpbC5jb20iLCJyb2xlcyI6WyJBRE1JTiJdLCJpc3MiOiJBZG1pbiIsImV4cCI6MTc1NTc2NjY2NSwiaWF0IjoxNzU0MDM4NjY1LCJqdGkiOiJhMGI3YTU1Zi02NWI5LTRmNGEtYmVkOS1kMTU0NGJhNGMwMjcifQ.STY9jfNHuMrFai1hLmdYvX_OyzU746Q3nTarRlcapZHPcQLakeb_W8OtcNEyAXqjDMxU3wkKkYKpkVgdS2qCEQ', '2025-08-21 15:57:45.700139');
INSERT INTO public.refresh_tokens VALUES (2, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJsZWFuMjcwODA0QGdtYWlsLmNvbSIsInJvbGVzIjpbIkFETUlOIiwiVVNFUiJdLCJpc3MiOiJMw6ogVsSDbiBBbiIsImV4cCI6MTc1NTc3MDE3MCwiaWF0IjoxNzU0MDQyMTcwLCJqdGkiOiI0NGVlMjczZC04M2EyLTQwNzctYTdlNS0xZTQ0ZjJhYjY1NDQifQ.xX5MOPZhDjwMLxdi6qG66lnaDvrlBncxah4vRkVqJkaLJHXpBksyM7xMMYlsdT-2VZcoAK10p9Tabo78Hn9GDw', '2025-08-21 16:56:10.125442');
INSERT INTO public.refresh_tokens VALUES (3, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtYWltaW5odHUxMzA4MDNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6Ik1haSBNaW5oIFTDuiIsImV4cCI6MTc1NTc3MTA3MywiaWF0IjoxNzU0MDQzMDczLCJqdGkiOiJhZjc4ODllMi1iY2YyLTQ1NGEtYWNkZi0zOGFhODVjMjMzNGYifQ.2xNi8l2GQuo6s6PhAiIt2TEPuL23xcRLBlKRJm7cBD_DQjIo78voKgHAlnSGP07rL2zLvhiuPnpEn2qoSVYdqg', '2025-08-21 17:11:13.267259');
INSERT INTO public.refresh_tokens VALUES (4, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJsZWFuMjcwODA0QGdtYWlsLmNvbSIsInJvbGVzIjpbIkFETUlOIiwiVVNFUiJdLCJpc3MiOiJMw6ogVsSDbiBBbiIsImV4cCI6MTc1NTc3MTcyMSwiaWF0IjoxNzU0MDQzNzIxLCJqdGkiOiI3MmUyNTFkMi1lNDY0LTRjNzAtYjhmZC00MGEyZDAyZmVjODMifQ.XRw0PUUOsW0z1rNLDGQUew9ApolWrkTB1xjl0e2l4dQ1jzHD_cTiETSun98MPSPXqmzv4nE4017iDC4V7arqBQ', '2025-08-21 17:22:01.441171');
INSERT INTO public.refresh_tokens VALUES (5, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aHV5ZHVuZzIxMDNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IlRow7l5IER1bmciLCJleHAiOjE3NTU3NzE3OTQsImlhdCI6MTc1NDA0Mzc5NCwianRpIjoiNDJkMzA4OGYtMDEwMS00MjgxLWEyNjktNzVhZjU5MDQzNmI5In0.9gydz-PyFKeXAMvlNOX2RWf8oQl6ERggdqkNw3EQTUCCeS3r_HeTT6Kim-Xdn9fy1pvpr4IUlqnuhx4BWIAqoA', '2025-08-21 17:23:14.144726');
INSERT INTO public.refresh_tokens VALUES (6, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkaW5ocGh1bmcxMjNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IkzDqiDEkMOsbmggUGjDuW5nIiwiZXhwIjoxNzU1NzcxOTg0LCJpYXQiOjE3NTQwNDM5ODQsImp0aSI6ImZmYzQxZjdmLTFmOGMtNDNjNy1hMmM0LWQwMmY3NGQyNzM1NSJ9.a4x-FiHaLvjVyfKTVYvseow_URgLpQbZfXU1OVhP3V4QlwLFawYMyCbmNKDaKkLkFdLsg-W41UQc2MhrkXVcBw', '2025-08-21 17:26:24.055053');


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reviews VALUES (1, 4.5, 'sản pham dep', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042519/adam-store/images/k1wxwbi5rv9mi4tcpksu.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042521/adam-store/images/fkflvtpuo8jvb66xuop0.webp"]', '2025-08-01', '2025-08-01', 2, 1);
INSERT INTO public.reviews VALUES (2, 4.7, 'Sản phẩm tốt, vải mịn, mặc rất thích', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042721/adam-store/images/jyb7tdsme6x9xyk2ch5k.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042721/adam-store/images/jyb7tdsme6x9xyk2ch5k.webp"]', '2025-08-01', '2025-08-01', 2, 6);
INSERT INTO public.reviews VALUES (3, 4.6, 'Sản phẩm chưa ổn lắm, vải dày', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042721/adam-store/images/jyb7tdsme6x9xyk2ch5k.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042721/adam-store/images/jyb7tdsme6x9xyk2ch5k.webp"]', '2025-08-01', '2025-08-01', 3, 1);
INSERT INTO public.reviews VALUES (4, 4.8, 'Sản phẩm tốt dùng khá thích', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042721/adam-store/images/jyb7tdsme6x9xyk2ch5k.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042721/adam-store/images/jyb7tdsme6x9xyk2ch5k.webp"]', '2025-08-01', '2025-08-01', 3, 6);
INSERT INTO public.reviews VALUES (5, 4.3, 'Sản phẩm không tốt như review', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042721/adam-store/images/jyb7tdsme6x9xyk2ch5k.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042721/adam-store/images/jyb7tdsme6x9xyk2ch5k.webp"]', '2025-08-01', '2025-08-01', 5, 1);
INSERT INTO public.reviews VALUES (6, 4.8, 'Sản phẩm tốt, khá là ưng', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042721/adam-store/images/jyb7tdsme6x9xyk2ch5k.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042721/adam-store/images/jyb7tdsme6x9xyk2ch5k.webp"]', '2025-08-01', '2025-08-01', 5, 6);
INSERT INTO public.reviews VALUES (7, 4.4, 'Sản phẩm khá tệ', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042721/adam-store/images/jyb7tdsme6x9xyk2ch5k.webp"]', '2025-08-01', '2025-08-01', 6, 1);
INSERT INTO public.reviews VALUES (8, 4.8, 'Sản phẩm tốt', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754042721/adam-store/images/jyb7tdsme6x9xyk2ch5k.webp"]', '2025-08-01', '2025-08-01', 6, 10);


--
-- Data for Name: role_has_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: user_has_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_has_role VALUES (1, 2, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (2, 1, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (2, 2, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (3, 1, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (3, 2, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (4, 1, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (4, 2, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (5, 1, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (5, 2, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (6, 1, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (6, 2, 'ACTIVE');


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addresses_id_seq', 6, true);


--
-- Name: branches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.branches_id_seq', 3, true);


--
-- Name: cart_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_items_id_seq', 8, true);


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carts_id_seq', 6, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 6, true);


--
-- Name: colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colors_id_seq', 4, true);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_id_seq', 58, true);


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_id_seq', 11, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 11, true);


--
-- Name: payment_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_history_id_seq', 10, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);


--
-- Name: product_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_variants_id_seq', 201, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 12, true);


--
-- Name: promotion_usages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotion_usages_id_seq', 9, true);


--
-- Name: promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotions_id_seq', 7, true);


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.refresh_tokens_id_seq', 6, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_id_seq', 8, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 2, true);


--
-- Name: sizes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sizes_id_seq', 7, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

