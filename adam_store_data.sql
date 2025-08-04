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
INSERT INTO public.addresses VALUES (7, true, true, 'ACTIVE', '0339898244', 'số 99', '1B1515', 1542, 201, 7, 'thanhmanh123@gmail.com', 'thanhmanh123@gmail.com', '2025-08-03', '2025-08-03');
INSERT INTO public.addresses VALUES (8, true, true, 'ACTIVE', '0342398233', 'số 206', '1B1515', 1542, 201, 8, 'trungmin123@gmail.com', 'trungmin123@gmail.com', '2025-08-03', '2025-08-03');
INSERT INTO public.addresses VALUES (9, true, true, 'ACTIVE', '0345391211', 'số 111', '1B1517', 1542, 201, 9, 'van123@gmail.com', 'van123@gmail.com', '2025-08-03', '2025-08-03');


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
INSERT INTO public.users VALUES (7, 'Thành Mạnh', 'thanhmanh123@gmail.com', '$2a$10$21wRLphT4Vigg5rsBV3SU.2bW5JgMa/nrVZT9MOJ64OT4RN7CN3DG', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754203092/adam-store/images/n9hdk5zrw5j76uhiun0o.webp', NULL, NULL, 'ACTIVE', 'admin@gmail.com', 'thanhmanh123@gmail.com', '2025-08-03', '2025-08-03');
INSERT INTO public.users VALUES (8, 'Trung Min', 'trungmin123@gmail.com', '$2a$10$XwLpGuioEqWcayNhjtzAY.Z62JqeSPB3xfLPFssEG9NMnjWdBA0Ja', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754203492/adam-store/images/kbn4ic54ggiuy60j2jjd.jpg', NULL, NULL, 'ACTIVE', 'thanhmanh123@gmail.com', 'trungmin123@gmail.com', '2025-08-03', '2025-08-03');
INSERT INTO public.users VALUES (2, 'Lê Văn An', 'lean270804@gmail.com', '$2a$10$eY8zsAJJveKhqnoyWdmSxOC5OUg1VFqEP9pLk4MGVr60QN07Wmkwe', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754203977/adam-store/images/av8h24zgdgib8orkxgsk.jpg', NULL, NULL, 'ACTIVE', 'admin@gmail.com', 'lean270804@gmail.com', '2025-08-01', '2025-08-03');
INSERT INTO public.users VALUES (4, 'Nguyễn Thùy Dung', 'thuydung210305@gmail.com', '$2a$10$sTyTJq77/jC7UYAp3IDlZOc75xRSgVrZziyjsQ8/vzVFELBLcpzFu', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754204232/adam-store/images/lfsakp7qbslujs6qszbt.jpg', NULL, NULL, 'ACTIVE', 'lean270804@gmail.com', 'thuydung210305@gmail.com', '2025-08-01', '2025-08-03');
INSERT INTO public.users VALUES (5, 'Thùy Dung', 'thuydung2103@gmail.com', '$2a$10$a60khj99OfJnA7p9Ip9KieCGCnWBN6YW1DobqxoTYGOD70tV1YYcK', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754204289/adam-store/images/ix9slnnr3zjteg2a6db4.jpg', NULL, NULL, 'ACTIVE', 'lean270804@gmail.com', 'thuydung2103@gmail.com', '2025-08-01', '2025-08-03');
INSERT INTO public.users VALUES (6, 'Lê Đình Phùng', 'dinhphung123@gmail.com', '$2a$10$HvhKr83adOy8q1l8cFOHLe/yZkIfvKtCOKWgQK0O0iD4EOD/4d1LK', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754204335/adam-store/images/foehtj5kap7wa3vvq9mf.jpg', NULL, NULL, 'ACTIVE', 'thuydung2103@gmail.com', 'dinhphung123@gmail.com', '2025-08-01', '2025-08-03');
INSERT INTO public.users VALUES (9, 'Đình Văn', 'van123@gmail.com', '$2a$10$gOQuPxwqjUqP9hh60iVpLOApnrHHbQHZGriuN8NgW/hJN3LFPSIt2', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754204442/adam-store/images/blxskxqejqciaqcprgxn.jpg', NULL, NULL, 'ACTIVE', 'dinhphung123@gmail.com', 'van123@gmail.com', '2025-08-03', '2025-08-03');
INSERT INTO public.users VALUES (3, 'Mai Minh Tú', 'maiminhtu130803@gmail.com', '$2a$10$UevFeye5rmxrHhdCL9fQ3us1U7KhNgVMeufj.7amTXG83URO45.fG', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294894/adam-store/images/glsoav6mdh662arvlkgr.webp', NULL, NULL, 'ACTIVE', 'lean270804@gmail.com', 'maiminhtu130803@gmail.com', '2025-08-01', '2025-08-04');


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.carts VALUES (1, '2025-08-01', '2025-08-01', 1);
INSERT INTO public.carts VALUES (2, '2025-08-01', '2025-08-01', 2);
INSERT INTO public.carts VALUES (3, '2025-08-01', '2025-08-01', 3);
INSERT INTO public.carts VALUES (4, '2025-08-01', '2025-08-01', 4);
INSERT INTO public.carts VALUES (5, '2025-08-01', '2025-08-01', 5);
INSERT INTO public.carts VALUES (6, '2025-08-01', '2025-08-01', 6);
INSERT INTO public.carts VALUES (7, '2025-08-03', '2025-08-03', 7);
INSERT INTO public.carts VALUES (8, '2025-08-03', '2025-08-03', 8);
INSERT INTO public.carts VALUES (9, '2025-08-03', '2025-08-03', 9);


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
INSERT INTO public.products VALUES (13, 'ÁO PHÔNG IN CHỮ KHÁC MÀU', 'Áo phông in chữ phong cách, chất vải cotton thoáng mát, phù hợp đi chơi, đi học, dễ phối đồ.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-03', '2025-08-03', 1);
INSERT INTO public.products VALUES (14, 'ÁO PHÔNG HỌA TIẾT CÂY CỌ', 'Áo phông họa tiết cây cọ độc đáo, chất liệu cotton thoáng mát, thích hợp mặc mùa hè.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-03', '2025-08-03', 1);
INSERT INTO public.products VALUES (15, 'ÁO PHÔNG VẢI DỆT KHÔNG ĐỀU HỌA TIẾT KẺ', 'Áo phông vải dệt không đều tạo hiệu ứng họa tiết kẻ độc đáo, thoải mái và dễ phối đồ.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-03', '2025-08-03', 1);
INSERT INTO public.products VALUES (16, 'ÁO SƠ MI VẢI LINEN - COTTON', 'Áo sơ mi vải Linen pha Cotton, thoáng mát, thấm hút tốt, thích hợp đi làm, đi chơi, dễ phối đồ.', true, 0, 5, 0, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-04', '2025-08-04', 2);


--
-- Data for Name: product_variants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_variants VALUES (1, true, 450000, 100, 'ACTIVE', 1, 1, 2);
INSERT INTO public.product_variants VALUES (5, true, 450000, 100, 'ACTIVE', 1, 2, 3);
INSERT INTO public.product_variants VALUES (6, true, 450000, 100, 'ACTIVE', 1, 2, 4);
INSERT INTO public.product_variants VALUES (8, true, 450000, 100, 'ACTIVE', 1, 3, 4);
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
INSERT INTO public.product_variants VALUES (24, true, 500000, 100, 'ACTIVE', 2, 1, 4);
INSERT INTO public.product_variants VALUES (25, true, 500000, 100, 'ACTIVE', 2, 2, 2);
INSERT INTO public.product_variants VALUES (26, true, 500000, 100, 'ACTIVE', 2, 2, 4);
INSERT INTO public.product_variants VALUES (27, true, 500000, 100, 'ACTIVE', 2, 1, 3);
INSERT INTO public.product_variants VALUES (29, true, 500000, 100, 'ACTIVE', 2, 3, 4);
INSERT INTO public.product_variants VALUES (30, true, 500000, 100, 'ACTIVE', 2, 1, 5);
INSERT INTO public.product_variants VALUES (31, true, 700000, 100, 'ACTIVE', 3, 4, 6);
INSERT INTO public.product_variants VALUES (32, true, 700000, 100, 'ACTIVE', 3, 2, 4);
INSERT INTO public.product_variants VALUES (34, true, 700000, 100, 'ACTIVE', 3, 2, 3);
INSERT INTO public.product_variants VALUES (35, true, 700000, 100, 'ACTIVE', 3, 4, 2);
INSERT INTO public.product_variants VALUES (37, true, 700000, 100, 'ACTIVE', 3, 1, 5);
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
INSERT INTO public.product_variants VALUES (83, true, 770000, 100, 'ACTIVE', 6, 1, 5);
INSERT INTO public.product_variants VALUES (84, true, 770000, 100, 'ACTIVE', 6, 2, 3);
INSERT INTO public.product_variants VALUES (85, true, 770000, 100, 'ACTIVE', 6, 1, 6);
INSERT INTO public.product_variants VALUES (2, true, 450000, 97, 'ACTIVE', 1, 3, 2);
INSERT INTO public.product_variants VALUES (86, true, 770000, 98, 'ACTIVE', 6, 1, 2);
INSERT INTO public.product_variants VALUES (4, true, 450000, 98, 'ACTIVE', 1, 1, 1);
INSERT INTO public.product_variants VALUES (87, true, 770000, 97, 'ACTIVE', 6, 2, 2);
INSERT INTO public.product_variants VALUES (12, true, 450000, 97, 'ACTIVE', 1, 3, 3);
INSERT INTO public.product_variants VALUES (89, true, 770000, 100, 'ACTIVE', 6, 4, 5);
INSERT INTO public.product_variants VALUES (88, true, 770000, 97, 'ACTIVE', 6, 1, 3);
INSERT INTO public.product_variants VALUES (9, true, 450000, 97, 'ACTIVE', 1, 3, 5);
INSERT INTO public.product_variants VALUES (33, true, 700000, 96, 'ACTIVE', 3, 1, 2);
INSERT INTO public.product_variants VALUES (28, true, 500000, 95, 'ACTIVE', 2, 1, 1);
INSERT INTO public.product_variants VALUES (60, true, 650000, 98, 'ACTIVE', 4, 2, 6);
INSERT INTO public.product_variants VALUES (10, true, 450000, 92, 'ACTIVE', 1, 1, 5);
INSERT INTO public.product_variants VALUES (90, true, 770000, 100, 'ACTIVE', 6, 2, 1);
INSERT INTO public.product_variants VALUES (38, true, 700000, 98, 'ACTIVE', 3, 4, 3);
INSERT INTO public.product_variants VALUES (23, true, 500000, 98, 'ACTIVE', 2, 3, 3);
INSERT INTO public.product_variants VALUES (91, true, 770000, 100, 'ACTIVE', 6, 4, 2);
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
INSERT INTO public.product_variants VALUES (106, true, 900000, 100, 'ACTIVE', 7, 2, 3);
INSERT INTO public.product_variants VALUES (107, true, 900000, 100, 'ACTIVE', 7, 2, 2);
INSERT INTO public.product_variants VALUES (108, true, 900000, 100, 'ACTIVE', 7, 4, 4);
INSERT INTO public.product_variants VALUES (109, true, 900000, 100, 'ACTIVE', 7, 4, 5);
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
INSERT INTO public.product_variants VALUES (134, true, 820000, 98, 'ACTIVE', 9, 1, 5);
INSERT INTO public.product_variants VALUES (156, true, 880000, 99, 'ACTIVE', 10, 2, 4);
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
INSERT INTO public.product_variants VALUES (199, true, 780000, 100, 'ACTIVE', 12, 2, 5);
INSERT INTO public.product_variants VALUES (201, true, 780000, 100, 'ACTIVE', 12, 3, 4);
INSERT INTO public.product_variants VALUES (3, true, 450000, 99, 'ACTIVE', 1, 1, 3);
INSERT INTO public.product_variants VALUES (102, true, 900000, 97, 'ACTIVE', 7, 2, 1);
INSERT INTO public.product_variants VALUES (7, true, 450000, 96, 'ACTIVE', 1, 3, 1);
INSERT INTO public.product_variants VALUES (110, true, 900000, 99, 'ACTIVE', 7, 1, 3);
INSERT INTO public.product_variants VALUES (202, true, 600000, 100, 'ACTIVE', 13, 2, 5);
INSERT INTO public.product_variants VALUES (203, true, 600000, 100, 'ACTIVE', 13, 2, 1);
INSERT INTO public.product_variants VALUES (204, true, 600000, 100, 'ACTIVE', 13, 1, 3);
INSERT INTO public.product_variants VALUES (205, true, 600000, 100, 'ACTIVE', 13, 3, 6);
INSERT INTO public.product_variants VALUES (206, true, 600000, 100, 'ACTIVE', 13, 2, 2);
INSERT INTO public.product_variants VALUES (207, true, 600000, 100, 'ACTIVE', 13, 1, 1);
INSERT INTO public.product_variants VALUES (208, true, 600000, 100, 'ACTIVE', 13, 1, 5);
INSERT INTO public.product_variants VALUES (209, true, 600000, 100, 'ACTIVE', 13, 2, 4);
INSERT INTO public.product_variants VALUES (210, true, 600000, 100, 'ACTIVE', 13, 3, 4);
INSERT INTO public.product_variants VALUES (211, true, 600000, 100, 'ACTIVE', 13, 2, 6);
INSERT INTO public.product_variants VALUES (212, true, 600000, 100, 'ACTIVE', 13, 1, 6);
INSERT INTO public.product_variants VALUES (213, true, 600000, 100, 'ACTIVE', 13, 2, 3);
INSERT INTO public.product_variants VALUES (214, true, 600000, 100, 'ACTIVE', 13, 3, 3);
INSERT INTO public.product_variants VALUES (215, true, 600000, 100, 'ACTIVE', 13, 1, 4);
INSERT INTO public.product_variants VALUES (216, true, 600000, 100, 'ACTIVE', 13, 3, 5);
INSERT INTO public.product_variants VALUES (217, true, 600000, 100, 'ACTIVE', 13, 3, 2);
INSERT INTO public.product_variants VALUES (218, true, 600000, 100, 'ACTIVE', 13, 1, 2);
INSERT INTO public.product_variants VALUES (219, true, 600000, 100, 'ACTIVE', 13, 3, 1);
INSERT INTO public.product_variants VALUES (220, true, 690000, 100, 'ACTIVE', 14, 2, 5);
INSERT INTO public.product_variants VALUES (221, true, 690000, 100, 'ACTIVE', 14, 1, 4);
INSERT INTO public.product_variants VALUES (222, true, 690000, 100, 'ACTIVE', 14, 1, 6);
INSERT INTO public.product_variants VALUES (223, true, 690000, 100, 'ACTIVE', 14, 2, 6);
INSERT INTO public.product_variants VALUES (224, true, 690000, 100, 'ACTIVE', 14, 1, 1);
INSERT INTO public.product_variants VALUES (225, true, 690000, 100, 'ACTIVE', 14, 1, 2);
INSERT INTO public.product_variants VALUES (226, true, 690000, 100, 'ACTIVE', 14, 3, 6);
INSERT INTO public.product_variants VALUES (227, true, 690000, 100, 'ACTIVE', 14, 2, 2);
INSERT INTO public.product_variants VALUES (228, true, 690000, 100, 'ACTIVE', 14, 3, 2);
INSERT INTO public.product_variants VALUES (229, true, 690000, 100, 'ACTIVE', 14, 3, 5);
INSERT INTO public.product_variants VALUES (230, true, 690000, 100, 'ACTIVE', 14, 2, 1);
INSERT INTO public.product_variants VALUES (231, true, 690000, 100, 'ACTIVE', 14, 3, 1);
INSERT INTO public.product_variants VALUES (232, true, 690000, 100, 'ACTIVE', 14, 1, 3);
INSERT INTO public.product_variants VALUES (233, true, 690000, 100, 'ACTIVE', 14, 1, 5);
INSERT INTO public.product_variants VALUES (234, true, 690000, 100, 'ACTIVE', 14, 2, 3);
INSERT INTO public.product_variants VALUES (235, true, 690000, 100, 'ACTIVE', 14, 2, 4);
INSERT INTO public.product_variants VALUES (236, true, 690000, 100, 'ACTIVE', 14, 3, 3);
INSERT INTO public.product_variants VALUES (237, true, 690000, 100, 'ACTIVE', 14, 3, 4);
INSERT INTO public.product_variants VALUES (238, true, 750000, 100, 'ACTIVE', 15, 2, 5);
INSERT INTO public.product_variants VALUES (239, true, 750000, 100, 'ACTIVE', 15, 1, 1);
INSERT INTO public.product_variants VALUES (240, true, 750000, 100, 'ACTIVE', 15, 1, 2);
INSERT INTO public.product_variants VALUES (241, true, 750000, 100, 'ACTIVE', 15, 2, 2);
INSERT INTO public.product_variants VALUES (242, true, 750000, 100, 'ACTIVE', 15, 3, 3);
INSERT INTO public.product_variants VALUES (243, true, 750000, 100, 'ACTIVE', 15, 2, 3);
INSERT INTO public.product_variants VALUES (244, true, 750000, 100, 'ACTIVE', 15, 1, 5);
INSERT INTO public.product_variants VALUES (245, true, 750000, 100, 'ACTIVE', 15, 3, 1);
INSERT INTO public.product_variants VALUES (246, true, 750000, 100, 'ACTIVE', 15, 3, 2);
INSERT INTO public.product_variants VALUES (247, true, 750000, 100, 'ACTIVE', 15, 2, 4);
INSERT INTO public.product_variants VALUES (248, true, 750000, 100, 'ACTIVE', 15, 1, 4);
INSERT INTO public.product_variants VALUES (249, true, 750000, 100, 'ACTIVE', 15, 1, 3);
INSERT INTO public.product_variants VALUES (250, true, 750000, 100, 'ACTIVE', 15, 2, 6);
INSERT INTO public.product_variants VALUES (251, true, 750000, 100, 'ACTIVE', 15, 1, 6);
INSERT INTO public.product_variants VALUES (252, true, 750000, 100, 'ACTIVE', 15, 3, 5);
INSERT INTO public.product_variants VALUES (253, true, 750000, 100, 'ACTIVE', 15, 2, 1);
INSERT INTO public.product_variants VALUES (254, true, 750000, 100, 'ACTIVE', 15, 3, 4);
INSERT INTO public.product_variants VALUES (255, true, 750000, 100, 'ACTIVE', 15, 3, 6);
INSERT INTO public.product_variants VALUES (92, true, 770000, 98, 'ACTIVE', 6, 4, 6);
INSERT INTO public.product_variants VALUES (105, true, 900000, 98, 'ACTIVE', 7, 4, 6);
INSERT INTO public.product_variants VALUES (82, true, 770000, 99, 'ACTIVE', 6, 1, 4);
INSERT INTO public.product_variants VALUES (36, true, 700000, 98, 'ACTIVE', 3, 1, 1);
INSERT INTO public.product_variants VALUES (200, true, 780000, 99, 'ACTIVE', 12, 3, 1);
INSERT INTO public.product_variants VALUES (198, true, 780000, 99, 'ACTIVE', 12, 2, 2);
INSERT INTO public.product_variants VALUES (256, true, 900000, 100, 'ACTIVE', 16, 2, 3);
INSERT INTO public.product_variants VALUES (257, true, 900000, 100, 'ACTIVE', 16, 2, 1);
INSERT INTO public.product_variants VALUES (258, true, 900000, 100, 'ACTIVE', 16, 1, 4);
INSERT INTO public.product_variants VALUES (259, true, 900000, 100, 'ACTIVE', 16, 1, 5);
INSERT INTO public.product_variants VALUES (260, true, 900000, 100, 'ACTIVE', 16, 2, 2);
INSERT INTO public.product_variants VALUES (261, true, 900000, 100, 'ACTIVE', 16, 2, 6);
INSERT INTO public.product_variants VALUES (262, true, 900000, 100, 'ACTIVE', 16, 1, 6);
INSERT INTO public.product_variants VALUES (263, true, 900000, 100, 'ACTIVE', 16, 1, 1);
INSERT INTO public.product_variants VALUES (264, true, 900000, 100, 'ACTIVE', 16, 1, 3);
INSERT INTO public.product_variants VALUES (265, true, 900000, 100, 'ACTIVE', 16, 2, 5);
INSERT INTO public.product_variants VALUES (266, true, 900000, 100, 'ACTIVE', 16, 1, 2);
INSERT INTO public.product_variants VALUES (267, true, 900000, 100, 'ACTIVE', 16, 2, 4);


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
INSERT INTO public.files VALUES (59, 'adam-store/images/n9hdk5zrw5j76uhiun0o', 'avatar-bong-da-dep1.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754203092/adam-store/images/n9hdk5zrw5j76uhiun0o.webp', 'thanhmanh123@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (60, 'adam-store/images/nxuoercvds5amwtq2klc', '12.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754203287/adam-store/images/nxuoercvds5amwtq2klc.webp', 'thanhmanh123@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (61, 'adam-store/images/ckxvsvwberbrmrnvhubb', '13.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754203382/adam-store/images/ckxvsvwberbrmrnvhubb.webp', 'thanhmanh123@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (62, 'adam-store/images/kbn4ic54ggiuy60j2jjd', 'anh 2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754203492/adam-store/images/kbn4ic54ggiuy60j2jjd.jpg', 'trungmin123@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (63, 'adam-store/images/h2daildo7o3l29sllay0', 'anh review 2.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754203570/adam-store/images/h2daildo7o3l29sllay0.webp', 'trungmin123@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (64, 'adam-store/images/lhdzt5ae14ystijkdnki', 'anh review 1.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754203718/adam-store/images/lhdzt5ae14ystijkdnki.webp', 'trungmin123@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (65, 'adam-store/images/auca5p6mc1z8ldtczy0w', 'anh review 3.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754203858/adam-store/images/auca5p6mc1z8ldtczy0w.webp', 'trungmin123@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (66, 'adam-store/images/av8h24zgdgib8orkxgsk', 'ro.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754203977/adam-store/images/av8h24zgdgib8orkxgsk.jpg', 'lean270804@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (67, 'adam-store/images/lfsakp7qbslujs6qszbt', 'dỏeamon.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754204232/adam-store/images/lfsakp7qbslujs6qszbt.jpg', 'thuydung210305@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (68, 'adam-store/images/ix9slnnr3zjteg2a6db4', 'conan.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754204289/adam-store/images/ix9slnnr3zjteg2a6db4.jpg', 'thuydung2103@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (69, 'adam-store/images/foehtj5kap7wa3vvq9mf', 'panda.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754204335/adam-store/images/foehtj5kap7wa3vvq9mf.jpg', 'dinhphung123@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (70, 'adam-store/images/blxskxqejqciaqcprgxn', 'poke.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754204442/adam-store/images/blxskxqejqciaqcprgxn.jpg', 'van123@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (71, 'adam-store/images/n228zmcrutftxp26w8ne', 'anh rv 4.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754204852/adam-store/images/n228zmcrutftxp26w8ne.webp', 'van123@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (72, 'adam-store/images/magcdtpjplxnxlq0rcq7', 'anhn rv 6.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754204853/adam-store/images/magcdtpjplxnxlq0rcq7.webp', 'van123@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (73, 'adam-store/images/ruox6rxbyftnl1xrfjpp', 'anh rv 7.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754204854/adam-store/images/ruox6rxbyftnl1xrfjpp.webp', 'van123@gmail.com', '2025-08-03', NULL);
INSERT INTO public.files VALUES (74, 'adam-store/images/hkuefj0bdms0nhjf32dt', '3.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754205419/adam-store/images/hkuefj0bdms0nhjf32dt.jpg', 'admin@gmail.com', '2025-08-03', 13);
INSERT INTO public.files VALUES (75, 'adam-store/images/zaxiipx1k4juwquqifdd', '3.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754205421/adam-store/images/zaxiipx1k4juwquqifdd.jpg', 'admin@gmail.com', '2025-08-03', 13);
INSERT INTO public.files VALUES (76, 'adam-store/images/ky6owqufnaenwhri2t1t', '3.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754205422/adam-store/images/ky6owqufnaenwhri2t1t.jpg', 'admin@gmail.com', '2025-08-03', 13);
INSERT INTO public.files VALUES (77, 'adam-store/images/uqkraklqueobdy9zeid5', '3.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754205424/adam-store/images/uqkraklqueobdy9zeid5.jpg', 'admin@gmail.com', '2025-08-03', 13);
INSERT INTO public.files VALUES (78, 'adam-store/images/cv390p5sdp3xrdlgoscc', '4.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754205678/adam-store/images/cv390p5sdp3xrdlgoscc.jpg', 'admin@gmail.com', '2025-08-03', 14);
INSERT INTO public.files VALUES (79, 'adam-store/images/hkhsdwlwukn3y2l2ngjk', '4.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754205680/adam-store/images/hkhsdwlwukn3y2l2ngjk.jpg', 'admin@gmail.com', '2025-08-03', 14);
INSERT INTO public.files VALUES (80, 'adam-store/images/rmny1cwahzfvyupoomig', '4.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754205681/adam-store/images/rmny1cwahzfvyupoomig.jpg', 'admin@gmail.com', '2025-08-03', 14);
INSERT INTO public.files VALUES (81, 'adam-store/images/djxtlfi571wzxtf9paqh', '4.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754205683/adam-store/images/djxtlfi571wzxtf9paqh.jpg', 'admin@gmail.com', '2025-08-03', 14);
INSERT INTO public.files VALUES (82, 'adam-store/images/nm1gjqjgtonaflefe0yz', '5.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754205835/adam-store/images/nm1gjqjgtonaflefe0yz.jpg', 'admin@gmail.com', '2025-08-03', 15);
INSERT INTO public.files VALUES (83, 'adam-store/images/ddir6owjjos0vpq2gndv', '5.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754205836/adam-store/images/ddir6owjjos0vpq2gndv.jpg', 'admin@gmail.com', '2025-08-03', 15);
INSERT INTO public.files VALUES (84, 'adam-store/images/nxkpc3vclw8n8azhkdjm', '5.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754205838/adam-store/images/nxkpc3vclw8n8azhkdjm.jpg', 'admin@gmail.com', '2025-08-03', 15);
INSERT INTO public.files VALUES (85, 'adam-store/images/kzzz0h5wm86zbbttyrux', '5.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754205840/adam-store/images/kzzz0h5wm86zbbttyrux.jpg', 'admin@gmail.com', '2025-08-03', 15);
INSERT INTO public.files VALUES (86, 'adam-store/images/jgoqeui1sh2hxijimkc8', '1.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294222/adam-store/images/jgoqeui1sh2hxijimkc8.webp', 'lean270804@gmail.com', '2025-08-04', NULL);
INSERT INTO public.files VALUES (87, 'adam-store/images/h3nbce62i3o9xpn1ok9v', '2.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294223/adam-store/images/h3nbce62i3o9xpn1ok9v.webp', 'lean270804@gmail.com', '2025-08-04', NULL);
INSERT INTO public.files VALUES (88, 'adam-store/images/glsoav6mdh662arvlkgr', 'nobita.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294894/adam-store/images/glsoav6mdh662arvlkgr.webp', 'maiminhtu130803@gmail.com', '2025-08-04', NULL);
INSERT INTO public.files VALUES (89, 'adam-store/images/nqs1wsexaheekbj19zz3', '5.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295116/adam-store/images/nqs1wsexaheekbj19zz3.webp', 'maiminhtu130803@gmail.com', '2025-08-04', NULL);
INSERT INTO public.files VALUES (90, 'adam-store/images/iigg64i2z6kzdqzs4qrc', '7.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295118/adam-store/images/iigg64i2z6kzdqzs4qrc.webp', 'maiminhtu130803@gmail.com', '2025-08-04', NULL);
INSERT INTO public.files VALUES (91, 'adam-store/images/uamy8sm4pecq8hznfatl', '8.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295460/adam-store/images/uamy8sm4pecq8hznfatl.webp', 'thuydung2103@gmail.com', '2025-08-04', NULL);
INSERT INTO public.files VALUES (92, 'adam-store/images/wdh0j3qjcx2gqhcelwaf', '9.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295461/adam-store/images/wdh0j3qjcx2gqhcelwaf.webp', 'thuydung2103@gmail.com', '2025-08-04', NULL);
INSERT INTO public.files VALUES (93, 'adam-store/images/njyhgdjez3dol7xlnbpo', '10.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295463/adam-store/images/njyhgdjez3dol7xlnbpo.webp', 'thuydung2103@gmail.com', '2025-08-04', NULL);
INSERT INTO public.files VALUES (94, 'adam-store/images/pxqbqkrcshhlz2k8pqxm', '11.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295464/adam-store/images/pxqbqkrcshhlz2k8pqxm.webp', 'thuydung2103@gmail.com', '2025-08-04', NULL);
INSERT INTO public.files VALUES (95, 'adam-store/images/s47fwsfo1lga6dqyetf3', '3.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754296387/adam-store/images/s47fwsfo1lga6dqyetf3.jpg', 'admin@gmail.com', '2025-08-04', 16);
INSERT INTO public.files VALUES (96, 'adam-store/images/wmngqgihsijk922bchw4', '3.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754296389/adam-store/images/wmngqgihsijk922bchw4.jpg', 'admin@gmail.com', '2025-08-04', 16);
INSERT INTO public.files VALUES (97, 'adam-store/images/mtmhj0orzljrf7jgczi5', '3.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754296391/adam-store/images/mtmhj0orzljrf7jgczi5.jpg', 'admin@gmail.com', '2025-08-04', 16);
INSERT INTO public.files VALUES (98, 'adam-store/images/rwczvvmx57qgggwevoao', '3.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754296392/adam-store/images/rwczvvmx57qgggwevoao.jpg', 'admin@gmail.com', '2025-08-04', 16);


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
INSERT INTO public.orders VALUES (12, '2025-08-03', 1665000, 'PROCESSING', '2025-08-03', 7, 7);
INSERT INTO public.orders VALUES (13, '2025-08-03', 697000, 'PROCESSING', '2025-08-03', 7, 7);
INSERT INTO public.orders VALUES (14, '2025-08-03', 1260000, 'PROCESSING', '2025-08-03', 8, 8);
INSERT INTO public.orders VALUES (15, '2025-08-03', 2850000, 'PROCESSING', '2025-08-03', 8, 8);
INSERT INTO public.orders VALUES (16, '2025-08-03', 2560000, 'PROCESSING', '2025-08-03', 8, 8);
INSERT INTO public.orders VALUES (17, '2025-08-03', 710000, 'PROCESSING', '2025-08-03', 8, 8);
INSERT INTO public.orders VALUES (18, '2025-08-03', 960000, 'PROCESSING', '2025-08-03', 8, 8);
INSERT INTO public.orders VALUES (19, '2025-08-03', 3285000, 'PROCESSING', '2025-08-03', 9, 9);
INSERT INTO public.orders VALUES (20, '2025-08-03', 697000, 'PROCESSING', '2025-08-03', 9, 9);
INSERT INTO public.orders VALUES (21, '2025-08-04', 3390000, 'PROCESSING', '2025-08-04', 1, 2);
INSERT INTO public.orders VALUES (22, '2025-08-04', 1950000, 'PROCESSING', '2025-08-04', 2, 2);
INSERT INTO public.orders VALUES (23, '2025-08-04', 2230000, 'PROCESSING', '2025-08-04', 5, 3);
INSERT INTO public.orders VALUES (24, '2025-08-04', 2470000, 'PROCESSING', '2025-08-04', 9, 9);
INSERT INTO public.orders VALUES (25, '2025-08-04', 1430000, 'PROCESSING', '2025-08-04', 9, 9);


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
INSERT INTO public.order_items VALUES (12, 4, 450000, 7, 12);
INSERT INTO public.order_items VALUES (13, 1, 770000, 88, 13);
INSERT INTO public.order_items VALUES (14, 3, 450000, 9, 14);
INSERT INTO public.order_items VALUES (15, 4, 700000, 33, 15);
INSERT INTO public.order_items VALUES (16, 5, 500000, 28, 16);
INSERT INTO public.order_items VALUES (17, 1, 650000, 60, 17);
INSERT INTO public.order_items VALUES (18, 1, 900000, 110, 18);
INSERT INTO public.order_items VALUES (19, 8, 450000, 10, 19);
INSERT INTO public.order_items VALUES (20, 1, 770000, 92, 20);
INSERT INTO public.order_items VALUES (21, 1, 770000, 92, 21);
INSERT INTO public.order_items VALUES (22, 2, 900000, 105, 21);
INSERT INTO public.order_items VALUES (23, 1, 770000, 82, 21);
INSERT INTO public.order_items VALUES (24, 1, 500000, 23, 22);
INSERT INTO public.order_items VALUES (25, 2, 700000, 36, 22);
INSERT INTO public.order_items VALUES (26, 1, 780000, 200, 23);
INSERT INTO public.order_items VALUES (27, 2, 700000, 38, 23);
INSERT INTO public.order_items VALUES (28, 1, 780000, 198, 24);
INSERT INTO public.order_items VALUES (29, 2, 820000, 134, 24);
INSERT INTO public.order_items VALUES (30, 1, 880000, 156, 25);
INSERT INTO public.order_items VALUES (31, 1, 500000, 23, 25);


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
INSERT INTO public.payment_history VALUES (11, true, 'VNPAY', 1665000, 'PAID', '2025-08-03 13:39:02.69625', 12);
INSERT INTO public.payment_history VALUES (12, true, 'VNPAY', 697000, 'PAID', '2025-08-03 13:42:13.098824', 13);
INSERT INTO public.payment_history VALUES (13, true, 'VNPAY', 1260000, 'PAID', '2025-08-03 13:45:46.828175', 14);
INSERT INTO public.payment_history VALUES (14, true, 'VNPAY', 2850000, 'PAID', '2025-08-03 13:47:19.365104', 15);
INSERT INTO public.payment_history VALUES (15, true, 'VNPAY', 2560000, 'PAID', '2025-08-03 13:48:15.373686', 16);
INSERT INTO public.payment_history VALUES (16, true, 'VNPAY', 710000, 'PAID', '2025-08-03 13:49:56.503126', 17);
INSERT INTO public.payment_history VALUES (17, true, 'VNPAY', 960000, 'PAID', '2025-08-03 13:52:01.890644', 18);
INSERT INTO public.payment_history VALUES (18, true, 'VNPAY', 3285000, 'PAID', '2025-08-03 14:06:16.912576', 19);
INSERT INTO public.payment_history VALUES (19, true, 'VNPAY', 697000, 'PAID', '2025-08-03 14:08:56.613776', 20);
INSERT INTO public.payment_history VALUES (20, true, 'VNPAY', 3390000, 'PAID', '2025-08-04 15:00:50.409003', 21);
INSERT INTO public.payment_history VALUES (21, true, 'VNPAY', 1950000, 'PAID', '2025-08-04 15:01:33.731798', 22);
INSERT INTO public.payment_history VALUES (22, true, 'VNPAY', 2230000, 'PAID', '2025-08-04 15:14:07.653424', 23);
INSERT INTO public.payment_history VALUES (23, true, 'VNPAY', 2470000, 'PAID', '2025-08-04 15:26:11.384057', 24);
INSERT INTO public.payment_history VALUES (24, true, 'VNPAY', 1430000, 'PAID', '2025-08-04 15:26:16.913022', 25);


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
INSERT INTO public.promotion_usages VALUES (10, 185000, '2025-08-03 13:38:56.207813', 7, 1, 12);
INSERT INTO public.promotion_usages VALUES (11, 123000, '2025-08-03 13:42:07.193029', 7, 2, 13);
INSERT INTO public.promotion_usages VALUES (12, 140000, '2025-08-03 13:45:41.435893', 8, 1, 14);
INSERT INTO public.promotion_usages VALUES (13, 365000, '2025-08-03 14:06:11.055095', 9, 1, 19);
INSERT INTO public.promotion_usages VALUES (14, 123000, '2025-08-03 14:08:33.120478', 9, 2, 20);


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.refresh_tokens VALUES (1, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbkBnbWFpbC5jb20iLCJyb2xlcyI6WyJBRE1JTiJdLCJpc3MiOiJBZG1pbiIsImV4cCI6MTc1NTc2NjY2NSwiaWF0IjoxNzU0MDM4NjY1LCJqdGkiOiJhMGI3YTU1Zi02NWI5LTRmNGEtYmVkOS1kMTU0NGJhNGMwMjcifQ.STY9jfNHuMrFai1hLmdYvX_OyzU746Q3nTarRlcapZHPcQLakeb_W8OtcNEyAXqjDMxU3wkKkYKpkVgdS2qCEQ', '2025-08-21 15:57:45.700139');
INSERT INTO public.refresh_tokens VALUES (2, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJsZWFuMjcwODA0QGdtYWlsLmNvbSIsInJvbGVzIjpbIkFETUlOIiwiVVNFUiJdLCJpc3MiOiJMw6ogVsSDbiBBbiIsImV4cCI6MTc1NTc3MDE3MCwiaWF0IjoxNzU0MDQyMTcwLCJqdGkiOiI0NGVlMjczZC04M2EyLTQwNzctYTdlNS0xZTQ0ZjJhYjY1NDQifQ.xX5MOPZhDjwMLxdi6qG66lnaDvrlBncxah4vRkVqJkaLJHXpBksyM7xMMYlsdT-2VZcoAK10p9Tabo78Hn9GDw', '2025-08-21 16:56:10.125442');
INSERT INTO public.refresh_tokens VALUES (3, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtYWltaW5odHUxMzA4MDNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6Ik1haSBNaW5oIFTDuiIsImV4cCI6MTc1NTc3MTA3MywiaWF0IjoxNzU0MDQzMDczLCJqdGkiOiJhZjc4ODllMi1iY2YyLTQ1NGEtYWNkZi0zOGFhODVjMjMzNGYifQ.2xNi8l2GQuo6s6PhAiIt2TEPuL23xcRLBlKRJm7cBD_DQjIo78voKgHAlnSGP07rL2zLvhiuPnpEn2qoSVYdqg', '2025-08-21 17:11:13.267259');
INSERT INTO public.refresh_tokens VALUES (4, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJsZWFuMjcwODA0QGdtYWlsLmNvbSIsInJvbGVzIjpbIkFETUlOIiwiVVNFUiJdLCJpc3MiOiJMw6ogVsSDbiBBbiIsImV4cCI6MTc1NTc3MTcyMSwiaWF0IjoxNzU0MDQzNzIxLCJqdGkiOiI3MmUyNTFkMi1lNDY0LTRjNzAtYjhmZC00MGEyZDAyZmVjODMifQ.XRw0PUUOsW0z1rNLDGQUew9ApolWrkTB1xjl0e2l4dQ1jzHD_cTiETSun98MPSPXqmzv4nE4017iDC4V7arqBQ', '2025-08-21 17:22:01.441171');
INSERT INTO public.refresh_tokens VALUES (5, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aHV5ZHVuZzIxMDNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IlRow7l5IER1bmciLCJleHAiOjE3NTU3NzE3OTQsImlhdCI6MTc1NDA0Mzc5NCwianRpIjoiNDJkMzA4OGYtMDEwMS00MjgxLWEyNjktNzVhZjU5MDQzNmI5In0.9gydz-PyFKeXAMvlNOX2RWf8oQl6ERggdqkNw3EQTUCCeS3r_HeTT6Kim-Xdn9fy1pvpr4IUlqnuhx4BWIAqoA', '2025-08-21 17:23:14.144726');
INSERT INTO public.refresh_tokens VALUES (6, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkaW5ocGh1bmcxMjNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IkzDqiDEkMOsbmggUGjDuW5nIiwiZXhwIjoxNzU1NzcxOTg0LCJpYXQiOjE3NTQwNDM5ODQsImp0aSI6ImZmYzQxZjdmLTFmOGMtNDNjNy1hMmM0LWQwMmY3NGQyNzM1NSJ9.a4x-FiHaLvjVyfKTVYvseow_URgLpQbZfXU1OVhP3V4QlwLFawYMyCbmNKDaKkLkFdLsg-W41UQc2MhrkXVcBw', '2025-08-21 17:26:24.055053');
INSERT INTO public.refresh_tokens VALUES (7, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbkBnbWFpbC5jb20iLCJyb2xlcyI6WyJBRE1JTiJdLCJpc3MiOiJBZG1pbiIsImV4cCI6MTc1NTkxNzg4OSwiaWF0IjoxNzU0MTg5ODg5LCJqdGkiOiI0NmE4ZTM0Ni1lMjBhLTQ5MGYtYjQ5NC0wN2NmOWE5Y2ZiN2QifQ.09bhPgxlWZpidCAkuFY4H6ljeFl52GVisth7Mv1EBs1-QvS9LRtySsqoyy6Xts3QBfbQ-RO2FnAARrEU9sD8fA', '2025-08-23 09:58:09.711227');
INSERT INTO public.refresh_tokens VALUES (8, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbkBnbWFpbC5jb20iLCJyb2xlcyI6WyJBRE1JTiJdLCJpc3MiOiJBZG1pbiIsImV4cCI6MTc1NTkzMDkwMywiaWF0IjoxNzU0MjAyOTAzLCJqdGkiOiJjOWM5YjAxOC1kN2IxLTRiOWUtYWE4Yy0yZDg3ODU3YjliZGQifQ.TLSS74Z8FKTt3EK6C1KHWmTAbGD-0ouxuRL2taFo68i8KcOQsJSPVv25c7jYRIHVetj6s88B1Ll7Ow6qgd85CA', '2025-08-23 13:35:03.764249');
INSERT INTO public.refresh_tokens VALUES (9, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aGFuaG1hbmgxMjNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IlRow6BuaCBN4bqhbmgiLCJleHAiOjE3NTU5MzEwMDYsImlhdCI6MTc1NDIwMzAwNiwianRpIjoiNmQ5ZjU3ODgtZmI3Yy00N2U5LWFlMTAtZGM4NjJhOTkwOWEyIn0.pS3mbrWCtur8xBXnnjjqJs9luT7DERKqt3o1x3dPC39Hz_Krmj8jo2alCbsF4K2hVe9VITBrbhOxSJXspheZEw', '2025-08-23 13:36:46.1052');
INSERT INTO public.refresh_tokens VALUES (10, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0cnVuZ21pbjEyM0BnbWFpbC5jb20iLCJyb2xlcyI6WyJBRE1JTiIsIlVTRVIiXSwiaXNzIjoiVHJ1bmcgTWluIiwiZXhwIjoxNzU1OTMxNDU0LCJpYXQiOjE3NTQyMDM0NTQsImp0aSI6IjNjODM4NjU5LTNkNWItNGZlZC1iZTBlLTQ1ZjM2OTc4ZGM3MCJ9.IPxXg95-kfZkPFEj3-0m3uQuikfc_DFADSeh3S2bsoxFOq8a7sTzM13yqk9DraolrF4JKQ7o-Be0AaCtLUSAqQ', '2025-08-23 13:44:14.301973');
INSERT INTO public.refresh_tokens VALUES (11, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJsZWFuMjcwODA0QGdtYWlsLmNvbSIsInJvbGVzIjpbIkFETUlOIiwiVVNFUiJdLCJpc3MiOiJMw6ogVsSDbiBBbiIsImV4cCI6MTc1NTkzMTkzMCwiaWF0IjoxNzU0MjAzOTMwLCJqdGkiOiJjYjJlNDYxMy05YjRhLTQ0ZWUtOTY4NS1jZjgwNjZhZmU0NDQifQ.3ezJEib5WCX-3YPTWjHN1tm49I4XSJYY2NWJu1BASux0s15iIf5MB4lh_5P6YnoxT1rt4nVejRWT5tVux2u7LA', '2025-08-23 13:52:10.531933');
INSERT INTO public.refresh_tokens VALUES (12, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aHV5ZHVuZzIxMDMwNUBnbWFpbC5jb20iLCJyb2xlcyI6WyJBRE1JTiIsIlVTRVIiXSwiaXNzIjoiTmd1eeG7hW4gVGjDuXkgRHVuZyIsImV4cCI6MTc1NTkzMjE4NywiaWF0IjoxNzU0MjA0MTg3LCJqdGkiOiIwNDM1MDlmMC0xOWQ1LTRkNGYtYTI5OS0wZmJmMjI0OTg1YTUifQ.Jx9XylPjTmg6jBtTFHjLM_vS5f5RhIHpsqB3w-AWM331fJAeMLebbmUFY-Xx5cwIvENLIKA2OKiZyc6sq4E6SQ', '2025-08-23 13:56:27.76797');
INSERT INTO public.refresh_tokens VALUES (13, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aHV5ZHVuZzIxMDNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IlRow7l5IER1bmciLCJleHAiOjE3NTU5MzIyNDksImlhdCI6MTc1NDIwNDI0OSwianRpIjoiMzA0ZmQ4YTItNjFkNS00YTc1LThlYTYtMTVjNWFkZTNkY2UxIn0.0xnkpm2wICOK2hiDZbeV023-LoAjFKHA9xiJQjDpk_We-aaH1DeSvsuXBp_dcyNU0yp-YW06iy4ZQ1LomBBlIg', '2025-08-23 13:57:29.168785');
INSERT INTO public.refresh_tokens VALUES (14, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkaW5ocGh1bmcxMjNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IkzDqiDEkMOsbmggUGjDuW5nIiwiZXhwIjoxNzU1OTMyMzIwLCJpYXQiOjE3NTQyMDQzMjAsImp0aSI6IjM2MTRiODg5LTJlYzUtNDY3Ny1iN2U5LTQ3MDY2Zjg2N2ZiZCJ9.xJ_yp00iKFBbOxQeRs2CYdOFBQ2PHhcM8_r3SdfXpI_34k_hu2OZ1FsRhZBvkq23YbFLP5zn1qnPAuKw_x0dWg', '2025-08-23 13:58:40.862474');
INSERT INTO public.refresh_tokens VALUES (15, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ2YW4xMjNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IsSQw6xuaCBWxINuIiwiZXhwIjoxNzU1OTMyNDE1LCJpYXQiOjE3NTQyMDQ0MTUsImp0aSI6IjU1ZWViMzQ0LTdlYTQtNGE0ZC1iNTE2LWQzNGQ2OGRhMDIxYyJ9.EZGdFxZ9X7Ly8YpQEoja4ZSFBeeyhMeJszpyjY0DHAeqU_bpaoBtGZ_PuyKvr0pqYpJqops1ECW6Cfl99DEjVA', '2025-08-23 14:00:15.17015');
INSERT INTO public.refresh_tokens VALUES (16, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbkBnbWFpbC5jb20iLCJyb2xlcyI6WyJBRE1JTiJdLCJpc3MiOiJBZG1pbiIsImV4cCI6MTc1NTkzMzM2OSwiaWF0IjoxNzU0MjA1MzY5LCJqdGkiOiIyNTYyZjFkYy1lMGU1LTQ1NmMtYmZjZi1iNjI4NzhmZTc4MzgifQ.IkTHY6zyum7-E6CZPRpwPZfM3k_oIn6FTIQPB1Fe8IJlCPFqto1p5klENqyhyosngiwzeKA1-NB-ynR8penPvQ', '2025-08-23 14:16:09.292181');
INSERT INTO public.refresh_tokens VALUES (17, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJsZWFuMjcwODA0QGdtYWlsLmNvbSIsInJvbGVzIjpbIkFETUlOIiwiVVNFUiJdLCJpc3MiOiJMw6ogVsSDbiBBbiIsImV4cCI6MTc1NjAyMTgwNSwiaWF0IjoxNzU0MjkzODA1LCJqdGkiOiI2ZTc1Njc4NS1kOTY1LTQ4NGEtYTI1Yy00YWRjOTQ1NGZhODgifQ.XZSg2n6V3L5947ILI8SnOi6el8DkguTkVan8htE4k6OYrJJleZxQrmAI69v5qsFnBKAV7oz4-aOrlOZyjM3SYg', '2025-08-24 14:50:05.740366');
INSERT INTO public.refresh_tokens VALUES (18, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtYWltaW5odHUxMzA4MDNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6Ik1haSBNaW5oIFTDuiIsImV4cCI6MTc1NjAyMjc4NSwiaWF0IjoxNzU0Mjk0Nzg1LCJqdGkiOiJiOTc5YWNkOC1hYWY4LTQxZjMtOWJlYi1iOTJjMzlkZGI0ZTUifQ.1Fj3LrQsHr6-pOmHhOogrZ2k7PdR61XSKFsPT7XjVPVUBryTn9WiJ54txyvMwXkxXmLXWPs7hN63yz_9uOrF6g', '2025-08-24 15:06:25.936914');
INSERT INTO public.refresh_tokens VALUES (19, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aHV5ZHVuZzIxMDNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IlRow7l5IER1bmciLCJleHAiOjE3NTYwMjMzMjEsImlhdCI6MTc1NDI5NTMyMSwianRpIjoiOTBlYzE0ZjktZmJiOC00MTA5LWI0YTktN2ZhY2Q2NjdkN2NiIn0.QLlNSI0ymF2E67For8Y7d5heCd3FfSgFg07dpABURG2K0QBEh-MPZPswG-cWiEIOHGDGVkofA1Ayb0Zc7sZ1EQ', '2025-08-24 15:15:21.484981');
INSERT INTO public.refresh_tokens VALUES (20, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkaW5ocGh1bmcxMjNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IkzDqiDEkMOsbmggUGjDuW5nIiwiZXhwIjoxNzU2MDIzNDk3LCJpYXQiOjE3NTQyOTU0OTcsImp0aSI6IjFmYmQzNzEwLTIzNzgtNDViMy04MmE0LTBiZjExZWNlNTMwMiJ9.SfjpvNu0eRI-r3K_ohdYuMBal7XYOfCC1z42fAbufoz5sSxGSifGmtnMW7mvDfyv8f_Zj9rYfncsHZ4JHfgdtQ', '2025-08-24 15:18:17.037962');
INSERT INTO public.refresh_tokens VALUES (21, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aGFuaG1hbmgxMjNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IlRow6BuaCBN4bqhbmgiLCJleHAiOjE3NTYwMjM2NDgsImlhdCI6MTc1NDI5NTY0OCwianRpIjoiNGZkMWE0MDQtNmE1Mi00MDdjLTkxZjItMTdjZmJmODRmZGQ0In0.ZRX0e6j1-oD4XzIeBqCjrqTv0SuBWAyujvTV9GaZtspFaLjGQ9ESbzVRo88ODXW-zpI7xWaSKKlS1kvxFoN0Bg', '2025-08-24 15:20:48.016103');
INSERT INTO public.refresh_tokens VALUES (22, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0cnVuZ21pbjEyM0BnbWFpbC5jb20iLCJyb2xlcyI6WyJBRE1JTiIsIlVTRVIiXSwiaXNzIjoiVHJ1bmcgTWluIiwiZXhwIjoxNzU2MDIzNzQ5LCJpYXQiOjE3NTQyOTU3NDksImp0aSI6ImZmZjcwMGVjLTBjZWEtNDc3MC1hMjFiLTg1OWExYjFmZDdkNiJ9.uj2zBlaVf31frfar5OaHTj1vKSnW1aS2PwbunNwLv8okc7B0pR15LMY6yMkcnC11dVZfnUU5nBzo0xvavMUwOA', '2025-08-24 15:22:29.334602');
INSERT INTO public.refresh_tokens VALUES (23, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ2YW4xMjNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IsSQw6xuaCBWxINuIiwiZXhwIjoxNzU2MDIzODYzLCJpYXQiOjE3NTQyOTU4NjMsImp0aSI6ImQxYWY3YmZmLTEzYmQtNDU0ZS05N2I0LTU3YWNjYjYyYTMyYyJ9.mmV2VXX-aK5m6HMA7tYbYmoNSYXSYMhbHDA2mwDnJKPLG_So0k9gm4eBnfdmN0ODAt10S8ldCpu7_2XQq0D-ug', '2025-08-24 15:24:23.304219');
INSERT INTO public.refresh_tokens VALUES (24, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbkBnbWFpbC5jb20iLCJyb2xlcyI6WyJBRE1JTiJdLCJpc3MiOiJBZG1pbiIsImV4cCI6MTc1NjAyNDMwNCwiaWF0IjoxNzU0Mjk2MzA0LCJqdGkiOiI5YjE1NzIxMC1jYmViLTRiNWUtYWUyNS1hNTc2MDU5NzRmZTAifQ.uZa3yAE3Ax5k7nSD7B-FYlYoXqRkGBHxHr-kJFfV_2jm5wGxWe6JSuixnJylyUV9YBn4R5d6R-A1fb5S6Pyplg', '2025-08-24 15:31:44.369507');


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reviews VALUES (1, 4.7, 'Sản phẩm rất tốt, giao hàng nhanh!', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294222/adam-store/images/jgoqeui1sh2hxijimkc8.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294223/adam-store/images/h3nbce62i3o9xpn1ok9v.webp"]', '2025-08-04', '2025-08-04', 2, 1, 1);
INSERT INTO public.reviews VALUES (2, 3.9, 'Sản phẩm như mô tả, tuy nhiên chất vải chưa thực sự ưng ý.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294228/adam-store/images/average1.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294229/adam-store/images/average2.webp"]', '2025-08-04', '2025-08-04', 2, 6, 2);
INSERT INTO public.reviews VALUES (3, 4.5, 'Sản phẩm vượt mong đợi, đóng gói cẩn thận và chất lượng tuyệt vời!', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294222/adam-store/images/jgoqeui1sh2hxijimkc8.webp"]', '2025-08-04', '2025-08-04', 2, 7, 3);
INSERT INTO public.reviews VALUES (4, 3.7, 'Chất lượng sản phẩm rất tốt, đúng như mô tả. Sẽ ủng hộ lần sau!', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294223/adam-store/images/h3nbce62i3o9xpn1ok9v.webp"]', '2025-08-04', '2025-08-04', 2, 7, 22);
INSERT INTO public.reviews VALUES (5, 3.5, 'Sản phẩm ổn trong tầm giá, giao hơi chậm một chút.', '[]', '2025-08-04', '2025-08-04', 2, 3, 25);
INSERT INTO public.reviews VALUES (6, 2.8, 'Sản phẩm không giống mô tả, cần cải thiện khâu kiểm tra hàng.', '[]', '2025-08-04', '2025-08-04', 3, 1, 4);
INSERT INTO public.reviews VALUES (7, 2.9, 'Giao sai màu, chất lượng chưa như mong đợi.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295116/adam-store/images/nqs1wsexaheekbj19zz3.webp"]', '2025-08-04', '2025-08-04', 3, 6, 5);
INSERT INTO public.reviews VALUES (8, 3.5, 'Tạm ổn, cần cải thiện chất lượng đóng gói.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295118/adam-store/images/iigg64i2z6kzdqzs4qrc.webp"]', '2025-08-04', '2025-08-04', 3, 12, 26);
INSERT INTO public.reviews VALUES (9, 4.7, 'Hàng giống mô tả, giá hợp lý, chất lượng ổn.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294222/adam-store/images/review9_img1.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294222/adam-store/images/review9_img2.webp"]', '2025-08-04', '2025-08-04', 3, 3, 27);
INSERT INTO public.reviews VALUES (10, 1, 'Rất thất vọng, hàng bị lỗi, không giống mô tả.', '[]', '2025-08-04', '2025-08-04', 5, 1, 6);
INSERT INTO public.reviews VALUES (11, 4, 'Mọi thứ đều ổn, chỉ tiếc là giao hơi chậm một chút.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294222/adam-store/images/review12_img1.webp"]', '2025-08-04', '2025-08-04', 5, 1, 6);
INSERT INTO public.reviews VALUES (12, 3.1, 'Chất lượng trung bình, không quá nổi bật.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295460/adam-store/images/uamy8sm4pecq8hznfatl.webp"]', '2025-08-04', '2025-08-04', 6, 1, 8);
INSERT INTO public.reviews VALUES (13, 4.2, 'Hàng đúng mô tả, phù hợp với nhu cầu của mình.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294222/adam-store/images/review14_img1.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295461/adam-store/images/wdh0j3qjcx2gqhcelwaf.webp"]', '2025-08-04', '2025-08-04', 6, 10, 11);
INSERT INTO public.reviews VALUES (14, 2.5, 'Chưa đúng kỳ vọng, vải hơi mỏng và màu không giống ảnh.', '[]', '2025-08-04', '2025-08-04', 6, 4, 10);
INSERT INTO public.reviews VALUES (15, 4.9, 'Không có gì để chê, sản phẩm quá tuyệt vời từ chất lượng đến thiết kế.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294222/adam-store/images/review16_img1.webp"]', '2025-08-04', '2025-08-04', 7, 1, 12);
INSERT INTO public.reviews VALUES (16, 4.3, 'Nhân viên hỗ trợ nhiệt tình, giao hàng đúng hẹn. Sẽ tiếp tục ủng hộ.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295464/adam-store/images/pxqbqkrcshhlz2k8pqxm.webp"]', '2025-08-04', '2025-08-04', 7, 2, 24);
INSERT INTO public.reviews VALUES (17, 4.3, 'Nhân viên hỗ trợ nhiệt tình, giao hàng đúng hẹn. Sẽ tiếp tục ủng hộ.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295464/adam-store/images/pxqbqkrcshhlz2k8pqxm.webp"]', '2025-08-04', '2025-08-04', 7, 6, 13);
INSERT INTO public.reviews VALUES (18, 3.8, 'Đóng gói chắc chắn, nhưng màu sản phẩm thực tế hơi khác ảnh một chút.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294222/adam-store/images/review18_img1.webp"]', '2025-08-04', '2025-08-04', 8, 1, 14);
INSERT INTO public.reviews VALUES (19, 2.1, 'Chất lượng vải không tốt như quảng cáo, form không chuẩn.', '[]', '2025-08-04', '2025-08-04', 8, 3, 15);
INSERT INTO public.reviews VALUES (20, 4.9, 'Mặc lên cực kỳ đẹp, size chuẩn, giá hợp lý. Mình rất hài lòng.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294222/adam-store/images/review20_img1.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295463/adam-store/images/njyhgdjez3dol7xlnbpo.webp"]', '2025-08-04', '2025-08-04', 8, 2, 16);
INSERT INTO public.reviews VALUES (21, 4.7, 'Tôi đã mua nhiều lần và lần nào cũng hài lòng tuyệt đối!', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294222/adam-store/images/review21_img1.webp"]', '2025-08-04', '2025-08-04', 8, 4, 17);
INSERT INTO public.reviews VALUES (22, 4, 'Sản phẩm giống mô tả, chất lượng ổn định với mức giá này.', '[]', '2025-08-04', '2025-08-04', 8, 7, 18);
INSERT INTO public.reviews VALUES (23, 3.5, 'Giao hàng trễ 1 ngày, nhưng sản phẩm thì không có vấn đề gì.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294222/adam-store/images/review23_img1.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754295461/adam-store/images/wdh0j3qjcx2gqhcelwaf.webp"]', '2025-08-04', '2025-08-04', 9, 1, 19);
INSERT INTO public.reviews VALUES (24, 2.5, 'Hàng khác ảnh quảng cáo, form hơi lỏng, đường may chưa đẹp.', '[]', '2025-08-04', '2025-08-04', 9, 6, 20);


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
INSERT INTO public.user_has_role VALUES (7, 1, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (7, 2, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (8, 1, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (8, 2, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (9, 1, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (9, 2, 'ACTIVE');


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addresses_id_seq', 9, true);


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

SELECT pg_catalog.setval('public.carts_id_seq', 9, true);


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

SELECT pg_catalog.setval('public.files_id_seq', 98, true);


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_id_seq', 31, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 25, true);


--
-- Name: payment_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_history_id_seq', 24, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);


--
-- Name: product_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_variants_id_seq', 267, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 16, true);


--
-- Name: promotion_usages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotion_usages_id_seq', 14, true);


--
-- Name: promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotions_id_seq', 7, true);


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.refresh_tokens_id_seq', 24, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_id_seq', 24, true);


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

SELECT pg_catalog.setval('public.users_id_seq', 9, true);


--
-- PostgreSQL database dump complete
--

