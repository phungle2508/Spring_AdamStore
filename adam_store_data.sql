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
INSERT INTO public.addresses VALUES (6, true, true, 'ACTIVE', '0339896911', 'số 60', '1B1515', 1542, 201, 6, 'dinhphung123@gmail.com', 'dinhphung123@gmail.com', '2025-08-01', '2025-08-01');
INSERT INTO public.addresses VALUES (8, true, true, 'ACTIVE', '0342398233', 'số 206', '1B1515', 1542, 201, 8, 'trungmin123@gmail.com', 'trungmin123@gmail.com', '2025-08-03', '2025-08-03');
INSERT INTO public.addresses VALUES (9, true, true, 'ACTIVE', '0345391211', 'số 111', '1B1517', 1542, 201, 9, 'van123@gmail.com', 'van123@gmail.com', '2025-08-03', '2025-08-03');
INSERT INTO public.addresses VALUES (10, true, true, 'ACTIVE', '0345294952', 'số 391', '1B1517', 1542, 201, 7, 'thanhmanh123@gmail.com', 'thanhmanh123@gmail.com', '2025-08-08', '2025-08-08');
INSERT INTO public.addresses VALUES (7, false, true, 'ACTIVE', '0339898244', 'số 99', '1B1515', 1542, 201, 7, 'thanhmanh123@gmail.com', 'thanhmanh123@gmail.com', '2025-08-03', '2025-08-08');
INSERT INTO public.addresses VALUES (11, true, true, 'ACTIVE', '0345224008', 'số 203', '1B1512', 1542, 201, 5, 'thuydung2103@gmail.com', 'thuydung2103@gmail.com', '2025-08-08', '2025-08-08');
INSERT INTO public.addresses VALUES (5, false, true, 'ACTIVE', '0339896911', 'số 133, đường 19-5', '1B1515', 1542, 201, 5, 'thuydung2103@gmail.com', 'thuydung2103@gmail.com', '2025-08-01', '2025-08-08');
INSERT INTO public.addresses VALUES (12, true, true, 'ACTIVE', '0327391133', 'số 201', '1B1517', 1542, 201, 10, 'mai123@gmail.com', 'mai123@gmail.com', '2025-08-08', '2025-08-08');
INSERT INTO public.addresses VALUES (13, true, true, 'ACTIVE', '0327399988', 'số 22', '1B1510', 1542, 201, 11, 'manh123@gmail.com', 'manh123@gmail.com', '2025-08-08', '2025-08-08');


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
INSERT INTO public.users VALUES (10, 'Thị Mai', 'mai123@gmail.com', '$2a$10$F7kSIqfAAbvXajDqHm2BXOgGVm0dEf.sPQy5pXky1hvkkXsSg/PQS', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643232/adam-store/images/ax13v0ooslvvb28to6ys.jpg', NULL, NULL, 'ACTIVE', 'admin@gmail.com', 'mai123@gmail.com', '2025-08-08', '2025-08-08');
INSERT INTO public.users VALUES (11, 'Tiến Mạnh', 'manh123@gmail.com', '$2a$10$G2eyoY1qfUCtMgaabKb5wO0asWmd3R/HQ69E9MNznCzWSZWOeUaLG', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643704/adam-store/images/k7yzyf6zhh3qgebbkeaw.jpg', NULL, NULL, 'ACTIVE', 'mai123@gmail.com', 'manh123@gmail.com', '2025-08-08', '2025-08-08');


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
INSERT INTO public.carts VALUES (10, '2025-08-08', '2025-08-08', 10);
INSERT INTO public.carts VALUES (11, '2025-08-08', '2025-08-08', 11);


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

INSERT INTO public.products VALUES (1, 'ÁO PHÔNG HEAVYWEIGHT MAY VIỀN', 'Áo phông chất liệu heavyweight, may viền tỉ mỉ, form rộng thoải mái, phù hợp đi chơi hoặc mặc hằng ngày.', true, 0, 5, 0, 400000, 500000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 1);
INSERT INTO public.products VALUES (2, 'ÁO NỈ PHỐI KẺ SỌC KHÁC MÀU', 'Áo nỉ thiết kế phối kẻ sọc khác màu độc đáo, chất vải mềm mại giữ ấm tốt, phù hợp cho những ngày se lạnh.', true, 0, 5, 0, 450000, 550000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 1);
INSERT INTO public.products VALUES (3, 'ÁO DENIM KIỂU SƠ MI THÊU HỌA TIẾT', 'Áo denim thiết kế kiểu sơ mi kết hợp hoạ tiết thêu tinh tế, mang phong cách cá tính, dễ phối đồ, phù hợp cả đi chơi và dạo phố.', true, 0, 5, 0, 650000, 750000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 2);
INSERT INTO public.products VALUES (4, 'ÁO SƠ MI VẢI DỆT OXFORD', 'Áo sơ mi chất liệu vải dệt Oxford mềm mại, bền màu, thích hợp cho môi trường công sở và cả phong cách thường ngày.', true, 0, 5, 0, 600000, 700000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 2);
INSERT INTO public.products VALUES (5, 'ÁO POLO DỆT KIM COTTON - LEN', 'Áo polo dệt kim chất liệu cotton pha len, mềm mại, co giãn tốt, thích hợp mặc đi làm, đi chơi hoặc dạo phố.', true, 0, 5, 0, 780000, 830000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 3);
INSERT INTO public.products VALUES (6, 'ÁO POLO DỆT SỢI DỌC', 'Áo polo dệt sợi dọc mang lại cảm giác mát mẻ, co giãn tốt và sang trọng, thích hợp mặc hằng ngày hoặc đi chơi.', true, 0, 5, 0, 750000, 790000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 3);
INSERT INTO public.products VALUES (7, 'ÁO KHOÁC VẢI KỸ THUẬT WATER REPELLENT', 'Áo khoác vải kỹ thuật chống thấm nước, chống gió, thích hợp cho các hoạt động ngoài trời và thời tiết lạnh.', true, 0, 5, 0, 880000, 920000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 4);
INSERT INTO public.products VALUES (8, 'ÁO KHOÁC BOMBER RELAXED FIT', 'Áo khoác bomber phom relaxed, thiết kế thời trang, phù hợp đi chơi, đi làm hoặc mặc thường ngày.', true, 0, 5, 0, 930000, 980000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 4);
INSERT INTO public.products VALUES (9, 'QUẦN SHORT BERMUDA DENIM RELAXED FIT XẾP LI', 'Quần short Bermuda chất denim, phom relaxed fit, thiết kế xếp li hiện đại, thoải mái cho các hoạt động hằng ngày.', true, 0, 5, 0, 800000, 840000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 5);
INSERT INTO public.products VALUES (10, 'QUẦN SHORT BERMUDA VẢI SẦN HỌA TIẾT KẺ SỌC', 'Quần short Bermuda vải sần, họa tiết kẻ sọc hiện đại, trẻ trung, dễ phối đồ cho phong cách năng động.', true, 0, 5, 0, 860000, 900000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 5);
INSERT INTO public.products VALUES (11, 'JEANS SLIM FIT TIMELESS', 'Quần jeans slim fit thiết kế tối giản, phù hợp mặc hằng ngày, giữ form và bền màu theo thời gian.', true, 0, 5, 0, 720000, 780000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 6);
INSERT INTO public.products VALUES (12, 'QUẦN CHINO VẢI COTTON - SỢI GAI', 'Quần chino vải cotton sợi gai, thoáng mát, đứng form, dễ phối đồ, phù hợp mặc đi làm hoặc dạo phố.', true, 0, 5, 0, 760000, 810000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-01', '2025-08-01', 6);
INSERT INTO public.products VALUES (13, 'ÁO PHÔNG IN CHỮ KHÁC MÀU', 'Áo phông in chữ phong cách, chất vải cotton thoáng mát, phù hợp đi chơi, đi học, dễ phối đồ.', true, 0, 5, 0, 580000, 620000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-03', '2025-08-03', 1);
INSERT INTO public.products VALUES (14, 'ÁO PHÔNG HỌA TIẾT CÂY CỌ', 'Áo phông họa tiết cây cọ độc đáo, chất liệu cotton thoáng mát, thích hợp mặc mùa hè.', true, 0, 5, 0, 660000, 720000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-03', '2025-08-03', 1);
INSERT INTO public.products VALUES (15, 'ÁO PHÔNG VẢI DỆT KHÔNG ĐỀU HỌA TIẾT KẺ', 'Áo phông vải dệt không đều tạo hiệu ứng họa tiết kẻ độc đáo, thoải mái và dễ phối đồ.', true, 0, 5, 0, 730000, 780000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-03', '2025-08-03', 1);
INSERT INTO public.products VALUES (16, 'ÁO SƠ MI VẢI LINEN - COTTON', 'Áo sơ mi vải Linen pha Cotton, thoáng mát, thấm hút tốt, thích hợp đi làm, đi chơi, dễ phối đồ.', true, 0, 5, 0, 880000, 930000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-04', '2025-08-04', 2);
INSERT INTO public.products VALUES (17, 'QUẦN CARGO VẢI DENIM CÓ TÚI', 'Quần cargo chất liệu denim có túi, thiết kế mạnh mẽ, phong cách đường phố, phù hợp mặc hàng ngày hoặc dạo phố.', true, 0, 5, 0, 920000, 990000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-05', '2025-08-05', 6);
INSERT INTO public.products VALUES (18, 'QUẦN JEANS SLIM STRAIGHT FIT', 'Quần jeans kiểu slim straight fit, thiết kế hiện đại, dễ phối đồ, phù hợp sử dụng hàng ngày hoặc đi chơi.', true, 0, 5, 0, 930000, 970000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-05', '2025-08-05', 6);
INSERT INTO public.products VALUES (19, 'ÁO KHOÁC CỔ PHỐI LEN MÓC', 'Áo khoác cổ phối len móc, mang phong cách retro hiện đại, chất liệu cao cấp, phù hợp thời tiết thu đông.', true, 0, 5, 0, 820000, 900000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-07', '2025-08-07', 4);
INSERT INTO public.products VALUES (20, 'ÁO KHOÁC VẢI BẠC MÀU CÓ MŨ', 'Áo khoác vải bạc màu có mũ, chống nắng, chống nước nhẹ, thời trang và tiện lợi, phù hợp đi chơi và hoạt động ngoài trời.', true, 0, 5, 0, 910000, 980000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-07', '2025-08-07', 4);
INSERT INTO public.products VALUES (21, 'ÁO SƠ MI VẢI COTTON - VISCOSE HỌA TIẾT KẺ', 'Áo sơ mi vải cotton - viscose với họa tiết kẻ, chất liệu mềm mại, thoải mái, dễ phối đồ và thích hợp cho nhiều dịp.', true, 0, 5, 0, 810000, 880000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-08', '2025-08-08', 2);
INSERT INTO public.products VALUES (22, 'ÁO SƠ MI VẢI RŨ THÊU CHỮ', 'Áo sơ mi vải rũ mềm mại, thêu chữ tinh tế, thích hợp mặc đi làm, đi chơi hoặc dự tiệc.', true, 0, 5, 0, 920000, 990000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-08', '2025-08-08', 2);
INSERT INTO public.products VALUES (23, 'ÁO SƠ MI VẢI DỆT JACQUARD THỦNG LỖ', 'Áo sơ mi vải dệt Jacquard thủng lỗ, thoáng mát, thời trang, thích hợp cho cả đi làm và đi chơi.', true, 0, 5, 0, 880000, 930000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-08', '2025-08-08', 2);
INSERT INTO public.products VALUES (24, 'ÁO SƠ MI VẢI LINEN - VISCOSE HỌA TIẾT XƯƠNG RỒNG', 'Áo sơ mi chất liệu linen - viscose với họa tiết xương rồng độc đáo, thoáng mát, phù hợp cho mùa hè và các dịp đi chơi.', true, 0, 5, 0, 790000, 850000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-08', '2025-08-08', 2);
INSERT INTO public.products VALUES (25, 'ÁO POLO BOXY FIT THÊU HỌA TIẾT', 'Áo polo kiểu dáng boxy fit, thêu họa tiết nổi bật, thoải mái và thời trang.', true, 0, 5, 0, 620000, 700000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-08', '2025-08-08', 3);
INSERT INTO public.products VALUES (26, 'ÁO POLO VẢI BẠC MÀU IN CHỮ', 'Áo polo chất liệu bạc màu, thiết kế in chữ thời trang, phù hợp mặc hàng ngày hoặc đi chơi.', true, 0, 5, 0, 550000, 600000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-08', '2025-08-08', 3);
INSERT INTO public.products VALUES (27, 'QUẦN SHORT BERMUDA VẢI PHA LINEN', 'Quần short Bermuda vải pha linen, thoáng mát, lịch sự, thích hợp dạo phố, đi làm hay đi chơi.', true, 0, 5, 0, 450000, 520000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-08', '2025-08-08', 5);
INSERT INTO public.products VALUES (28, 'QUẦN SHORT BERMUDA VẢI DỆT JACQUARD', 'Quần short Bermuda vải dệt Jacquard, họa tiết sang trọng, thoáng mát, phù hợp đi chơi và dạo phố.', true, 0, 5, 0, 510000, 560000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-08', '2025-08-08', 5);
INSERT INTO public.products VALUES (29, 'ÁO PHÔNG CỔ ĐÍNH KHUY', 'Áo phông cổ đính khuy, chất liệu thoải mái, phù hợp mặc đi làm, đi chơi, dễ phối đồ.', true, 0, 5, 0, 630000, 670000, 'ACTIVE', 'admin@gmail.com', 'admin@gmail.com', '2025-08-08', '2025-08-08', 1);


--
-- Data for Name: product_variants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_variants VALUES (6, true, 450000, 100, 'ACTIVE', 1, 2, 4);
INSERT INTO public.product_variants VALUES (8, true, 450000, 100, 'ACTIVE', 1, 3, 4);
INSERT INTO public.product_variants VALUES (11, true, 450000, 100, 'ACTIVE', 1, 2, 1);
INSERT INTO public.product_variants VALUES (13, true, 450000, 100, 'ACTIVE', 1, 1, 4);
INSERT INTO public.product_variants VALUES (18, true, 500000, 100, 'ACTIVE', 2, 3, 5);
INSERT INTO public.product_variants VALUES (19, true, 500000, 100, 'ACTIVE', 2, 2, 1);
INSERT INTO public.product_variants VALUES (20, true, 500000, 100, 'ACTIVE', 2, 2, 3);
INSERT INTO public.product_variants VALUES (21, true, 500000, 100, 'ACTIVE', 2, 2, 5);
INSERT INTO public.product_variants VALUES (22, true, 500000, 100, 'ACTIVE', 2, 3, 1);
INSERT INTO public.product_variants VALUES (25, true, 500000, 100, 'ACTIVE', 2, 2, 2);
INSERT INTO public.product_variants VALUES (26, true, 500000, 100, 'ACTIVE', 2, 2, 4);
INSERT INTO public.product_variants VALUES (27, true, 500000, 100, 'ACTIVE', 2, 1, 3);
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
INSERT INTO public.product_variants VALUES (52, true, 650000, 100, 'ACTIVE', 4, 3, 4);
INSERT INTO public.product_variants VALUES (53, true, 650000, 100, 'ACTIVE', 4, 3, 2);
INSERT INTO public.product_variants VALUES (54, true, 650000, 100, 'ACTIVE', 4, 1, 3);
INSERT INTO public.product_variants VALUES (55, true, 650000, 100, 'ACTIVE', 4, 1, 5);
INSERT INTO public.product_variants VALUES (56, true, 650000, 100, 'ACTIVE', 4, 3, 5);
INSERT INTO public.product_variants VALUES (57, true, 650000, 100, 'ACTIVE', 4, 2, 3);
INSERT INTO public.product_variants VALUES (58, true, 650000, 100, 'ACTIVE', 4, 1, 4);
INSERT INTO public.product_variants VALUES (59, true, 650000, 100, 'ACTIVE', 4, 2, 5);
INSERT INTO public.product_variants VALUES (68, true, 800000, 100, 'ACTIVE', 5, 3, 3);
INSERT INTO public.product_variants VALUES (69, true, 800000, 100, 'ACTIVE', 5, 2, 4);
INSERT INTO public.product_variants VALUES (70, true, 800000, 100, 'ACTIVE', 5, 1, 4);
INSERT INTO public.product_variants VALUES (71, true, 800000, 100, 'ACTIVE', 5, 3, 4);
INSERT INTO public.product_variants VALUES (72, true, 800000, 100, 'ACTIVE', 5, 2, 5);
INSERT INTO public.product_variants VALUES (73, true, 800000, 100, 'ACTIVE', 5, 2, 3);
INSERT INTO public.product_variants VALUES (74, true, 800000, 100, 'ACTIVE', 5, 3, 5);
INSERT INTO public.product_variants VALUES (75, true, 800000, 100, 'ACTIVE', 5, 1, 2);
INSERT INTO public.product_variants VALUES (83, true, 770000, 100, 'ACTIVE', 6, 1, 5);
INSERT INTO public.product_variants VALUES (84, true, 770000, 100, 'ACTIVE', 6, 2, 3);
INSERT INTO public.product_variants VALUES (85, true, 770000, 100, 'ACTIVE', 6, 1, 6);
INSERT INTO public.product_variants VALUES (86, true, 770000, 98, 'ACTIVE', 6, 1, 2);
INSERT INTO public.product_variants VALUES (4, true, 450000, 98, 'ACTIVE', 1, 1, 1);
INSERT INTO public.product_variants VALUES (87, true, 770000, 97, 'ACTIVE', 6, 2, 2);
INSERT INTO public.product_variants VALUES (12, true, 450000, 97, 'ACTIVE', 1, 3, 3);
INSERT INTO public.product_variants VALUES (89, true, 770000, 100, 'ACTIVE', 6, 4, 5);
INSERT INTO public.product_variants VALUES (88, true, 770000, 97, 'ACTIVE', 6, 1, 3);
INSERT INTO public.product_variants VALUES (9, true, 450000, 97, 'ACTIVE', 1, 3, 5);
INSERT INTO public.product_variants VALUES (28, true, 500000, 95, 'ACTIVE', 2, 1, 1);
INSERT INTO public.product_variants VALUES (60, true, 650000, 98, 'ACTIVE', 4, 2, 6);
INSERT INTO public.product_variants VALUES (10, true, 450000, 92, 'ACTIVE', 1, 1, 5);
INSERT INTO public.product_variants VALUES (90, true, 770000, 100, 'ACTIVE', 6, 2, 1);
INSERT INTO public.product_variants VALUES (38, true, 700000, 98, 'ACTIVE', 3, 4, 3);
INSERT INTO public.product_variants VALUES (23, true, 500000, 98, 'ACTIVE', 2, 3, 3);
INSERT INTO public.product_variants VALUES (93, true, 770000, 100, 'ACTIVE', 6, 2, 6);
INSERT INTO public.product_variants VALUES (94, true, 770000, 100, 'ACTIVE', 6, 4, 4);
INSERT INTO public.product_variants VALUES (101, true, 900000, 100, 'ACTIVE', 7, 1, 6);
INSERT INTO public.product_variants VALUES (103, true, 900000, 100, 'ACTIVE', 7, 4, 1);
INSERT INTO public.product_variants VALUES (104, true, 900000, 100, 'ACTIVE', 7, 4, 2);
INSERT INTO public.product_variants VALUES (106, true, 900000, 100, 'ACTIVE', 7, 2, 3);
INSERT INTO public.product_variants VALUES (107, true, 900000, 100, 'ACTIVE', 7, 2, 2);
INSERT INTO public.product_variants VALUES (108, true, 900000, 100, 'ACTIVE', 7, 4, 4);
INSERT INTO public.product_variants VALUES (109, true, 900000, 100, 'ACTIVE', 7, 4, 5);
INSERT INTO public.product_variants VALUES (111, true, 900000, 100, 'ACTIVE', 7, 1, 1);
INSERT INTO public.product_variants VALUES (112, true, 900000, 100, 'ACTIVE', 7, 1, 2);
INSERT INTO public.product_variants VALUES (118, true, 950000, 100, 'ACTIVE', 8, 1, 4);
INSERT INTO public.product_variants VALUES (119, true, 950000, 100, 'ACTIVE', 8, 1, 2);
INSERT INTO public.product_variants VALUES (121, true, 950000, 100, 'ACTIVE', 8, 3, 1);
INSERT INTO public.product_variants VALUES (122, true, 950000, 100, 'ACTIVE', 8, 1, 3);
INSERT INTO public.product_variants VALUES (123, true, 950000, 100, 'ACTIVE', 8, 3, 5);
INSERT INTO public.product_variants VALUES (124, true, 950000, 100, 'ACTIVE', 8, 2, 1);
INSERT INTO public.product_variants VALUES (125, true, 950000, 100, 'ACTIVE', 8, 3, 2);
INSERT INTO public.product_variants VALUES (126, true, 950000, 100, 'ACTIVE', 8, 1, 6);
INSERT INTO public.product_variants VALUES (127, true, 950000, 100, 'ACTIVE', 8, 3, 4);
INSERT INTO public.product_variants VALUES (128, true, 950000, 100, 'ACTIVE', 8, 2, 2);
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
INSERT INTO public.product_variants VALUES (120, true, 950000, 97, 'ACTIVE', 8, 2, 4);
INSERT INTO public.product_variants VALUES (5, true, 450000, 99, 'ACTIVE', 1, 2, 3);
INSERT INTO public.product_variants VALUES (145, true, 820000, 100, 'ACTIVE', 9, 1, 2);
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
INSERT INTO public.product_variants VALUES (169, true, 750000, 100, 'ACTIVE', 11, 1, 1);
INSERT INTO public.product_variants VALUES (170, true, 750000, 100, 'ACTIVE', 11, 4, 2);
INSERT INTO public.product_variants VALUES (171, true, 750000, 100, 'ACTIVE', 11, 1, 6);
INSERT INTO public.product_variants VALUES (173, true, 750000, 100, 'ACTIVE', 11, 2, 4);
INSERT INTO public.product_variants VALUES (174, true, 750000, 100, 'ACTIVE', 11, 4, 3);
INSERT INTO public.product_variants VALUES (175, true, 750000, 100, 'ACTIVE', 11, 1, 5);
INSERT INTO public.product_variants VALUES (176, true, 750000, 100, 'ACTIVE', 11, 4, 6);
INSERT INTO public.product_variants VALUES (177, true, 750000, 100, 'ACTIVE', 11, 1, 3);
INSERT INTO public.product_variants VALUES (178, true, 750000, 100, 'ACTIVE', 11, 4, 5);
INSERT INTO public.product_variants VALUES (179, true, 750000, 100, 'ACTIVE', 11, 2, 1);
INSERT INTO public.product_variants VALUES (180, true, 750000, 100, 'ACTIVE', 11, 2, 2);
INSERT INTO public.product_variants VALUES (156, true, 880000, 99, 'ACTIVE', 10, 2, 4);
INSERT INTO public.product_variants VALUES (91, true, 770000, 98, 'ACTIVE', 6, 4, 2);
INSERT INTO public.product_variants VALUES (181, true, 750000, 100, 'ACTIVE', 11, 4, 1);
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
INSERT INTO public.product_variants VALUES (102, true, 900000, 97, 'ACTIVE', 7, 2, 1);
INSERT INTO public.product_variants VALUES (7, true, 450000, 96, 'ACTIVE', 1, 3, 1);
INSERT INTO public.product_variants VALUES (110, true, 900000, 99, 'ACTIVE', 7, 1, 3);
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
INSERT INTO public.product_variants VALUES (92, true, 770000, 98, 'ACTIVE', 6, 4, 6);
INSERT INTO public.product_variants VALUES (105, true, 900000, 98, 'ACTIVE', 7, 4, 6);
INSERT INTO public.product_variants VALUES (82, true, 770000, 99, 'ACTIVE', 6, 1, 4);
INSERT INTO public.product_variants VALUES (36, true, 700000, 98, 'ACTIVE', 3, 1, 1);
INSERT INTO public.product_variants VALUES (198, true, 780000, 99, 'ACTIVE', 12, 2, 2);
INSERT INTO public.product_variants VALUES (259, true, 900000, 100, 'ACTIVE', 16, 1, 5);
INSERT INTO public.product_variants VALUES (172, true, 750000, 99, 'ACTIVE', 11, 4, 4);
INSERT INTO public.product_variants VALUES (261, true, 900000, 100, 'ACTIVE', 16, 2, 6);
INSERT INTO public.product_variants VALUES (262, true, 900000, 100, 'ACTIVE', 16, 1, 6);
INSERT INTO public.product_variants VALUES (263, true, 900000, 100, 'ACTIVE', 16, 1, 1);
INSERT INTO public.product_variants VALUES (264, true, 900000, 100, 'ACTIVE', 16, 1, 3);
INSERT INTO public.product_variants VALUES (272, true, 990000, 100, 'ACTIVE', 17, 1, 2);
INSERT INTO public.product_variants VALUES (273, true, 990000, 100, 'ACTIVE', 17, 1, 3);
INSERT INTO public.product_variants VALUES (274, true, 990000, 100, 'ACTIVE', 17, 3, 1);
INSERT INTO public.product_variants VALUES (275, true, 990000, 100, 'ACTIVE', 17, 1, 1);
INSERT INTO public.product_variants VALUES (276, true, 990000, 100, 'ACTIVE', 17, 2, 2);
INSERT INTO public.product_variants VALUES (277, true, 990000, 100, 'ACTIVE', 17, 3, 5);
INSERT INTO public.product_variants VALUES (278, true, 990000, 100, 'ACTIVE', 17, 2, 3);
INSERT INTO public.product_variants VALUES (279, true, 990000, 100, 'ACTIVE', 17, 2, 4);
INSERT INTO public.product_variants VALUES (280, true, 990000, 100, 'ACTIVE', 17, 1, 4);
INSERT INTO public.product_variants VALUES (281, true, 990000, 100, 'ACTIVE', 17, 2, 1);
INSERT INTO public.product_variants VALUES (282, true, 990000, 100, 'ACTIVE', 17, 2, 6);
INSERT INTO public.product_variants VALUES (283, true, 990000, 100, 'ACTIVE', 17, 1, 5);
INSERT INTO public.product_variants VALUES (284, true, 990000, 100, 'ACTIVE', 17, 1, 6);
INSERT INTO public.product_variants VALUES (285, true, 990000, 100, 'ACTIVE', 17, 3, 2);
INSERT INTO public.product_variants VALUES (289, true, 960000, 100, 'ACTIVE', 18, 1, 4);
INSERT INTO public.product_variants VALUES (290, true, 960000, 100, 'ACTIVE', 18, 2, 5);
INSERT INTO public.product_variants VALUES (291, true, 960000, 100, 'ACTIVE', 18, 3, 5);
INSERT INTO public.product_variants VALUES (292, true, 960000, 100, 'ACTIVE', 18, 1, 6);
INSERT INTO public.product_variants VALUES (293, true, 960000, 100, 'ACTIVE', 18, 2, 3);
INSERT INTO public.product_variants VALUES (294, true, 960000, 100, 'ACTIVE', 18, 1, 5);
INSERT INTO public.product_variants VALUES (295, true, 960000, 100, 'ACTIVE', 18, 2, 4);
INSERT INTO public.product_variants VALUES (296, true, 960000, 100, 'ACTIVE', 18, 2, 6);
INSERT INTO public.product_variants VALUES (297, true, 960000, 100, 'ACTIVE', 18, 3, 4);
INSERT INTO public.product_variants VALUES (298, true, 960000, 100, 'ACTIVE', 18, 1, 1);
INSERT INTO public.product_variants VALUES (299, true, 960000, 100, 'ACTIVE', 18, 3, 2);
INSERT INTO public.product_variants VALUES (300, true, 960000, 100, 'ACTIVE', 18, 3, 1);
INSERT INTO public.product_variants VALUES (2, true, 400000, 97, 'ACTIVE', 1, 3, 2);
INSERT INTO public.product_variants VALUES (3, true, 400000, 99, 'ACTIVE', 1, 1, 3);
INSERT INTO public.product_variants VALUES (14, true, 500000, 100, 'ACTIVE', 1, 2, 5);
INSERT INTO public.product_variants VALUES (15, true, 500000, 100, 'ACTIVE', 1, 2, 2);
INSERT INTO public.product_variants VALUES (16, true, 450000, 100, 'ACTIVE', 2, 1, 2);
INSERT INTO public.product_variants VALUES (17, true, 450000, 100, 'ACTIVE', 2, 3, 2);
INSERT INTO public.product_variants VALUES (29, true, 550000, 100, 'ACTIVE', 2, 3, 4);
INSERT INTO public.product_variants VALUES (30, true, 550000, 100, 'ACTIVE', 2, 1, 5);
INSERT INTO public.product_variants VALUES (32, true, 650000, 98, 'ACTIVE', 3, 2, 4);
INSERT INTO public.product_variants VALUES (33, true, 650000, 96, 'ACTIVE', 3, 1, 2);
INSERT INTO public.product_variants VALUES (46, true, 750000, 100, 'ACTIVE', 3, 2, 1);
INSERT INTO public.product_variants VALUES (47, true, 750000, 100, 'ACTIVE', 3, 1, 4);
INSERT INTO public.product_variants VALUES (48, true, 750000, 100, 'ACTIVE', 3, 4, 5);
INSERT INTO public.product_variants VALUES (49, true, 600000, 100, 'ACTIVE', 4, 1, 6);
INSERT INTO public.product_variants VALUES (50, true, 600000, 100, 'ACTIVE', 4, 1, 2);
INSERT INTO public.product_variants VALUES (51, true, 600000, 100, 'ACTIVE', 4, 2, 2);
INSERT INTO public.product_variants VALUES (61, true, 700000, 100, 'ACTIVE', 4, 3, 6);
INSERT INTO public.product_variants VALUES (62, true, 700000, 100, 'ACTIVE', 4, 3, 3);
INSERT INTO public.product_variants VALUES (63, true, 700000, 100, 'ACTIVE', 4, 2, 4);
INSERT INTO public.product_variants VALUES (64, true, 780000, 100, 'ACTIVE', 5, 1, 5);
INSERT INTO public.product_variants VALUES (65, true, 780000, 100, 'ACTIVE', 5, 3, 6);
INSERT INTO public.product_variants VALUES (66, true, 780000, 100, 'ACTIVE', 5, 1, 3);
INSERT INTO public.product_variants VALUES (67, true, 780000, 100, 'ACTIVE', 5, 1, 6);
INSERT INTO public.product_variants VALUES (76, true, 830000, 100, 'ACTIVE', 5, 3, 2);
INSERT INTO public.product_variants VALUES (77, true, 830000, 100, 'ACTIVE', 5, 2, 2);
INSERT INTO public.product_variants VALUES (78, true, 830000, 100, 'ACTIVE', 5, 2, 6);
INSERT INTO public.product_variants VALUES (79, true, 750000, 100, 'ACTIVE', 6, 1, 1);
INSERT INTO public.product_variants VALUES (80, true, 750000, 100, 'ACTIVE', 6, 4, 3);
INSERT INTO public.product_variants VALUES (81, true, 750000, 100, 'ACTIVE', 6, 4, 1);
INSERT INTO public.product_variants VALUES (95, true, 790000, 100, 'ACTIVE', 6, 2, 4);
INSERT INTO public.product_variants VALUES (96, true, 790000, 100, 'ACTIVE', 6, 2, 5);
INSERT INTO public.product_variants VALUES (97, true, 880000, 100, 'ACTIVE', 7, 1, 5);
INSERT INTO public.product_variants VALUES (98, true, 880000, 100, 'ACTIVE', 7, 2, 6);
INSERT INTO public.product_variants VALUES (100, true, 880000, 100, 'ACTIVE', 7, 4, 3);
INSERT INTO public.product_variants VALUES (113, true, 920000, 100, 'ACTIVE', 7, 1, 4);
INSERT INTO public.product_variants VALUES (114, true, 920000, 100, 'ACTIVE', 7, 2, 4);
INSERT INTO public.product_variants VALUES (115, true, 930000, 100, 'ACTIVE', 8, 2, 6);
INSERT INTO public.product_variants VALUES (116, true, 930000, 100, 'ACTIVE', 8, 3, 3);
INSERT INTO public.product_variants VALUES (117, true, 930000, 100, 'ACTIVE', 8, 1, 1);
INSERT INTO public.product_variants VALUES (129, true, 980000, 100, 'ACTIVE', 8, 2, 5);
INSERT INTO public.product_variants VALUES (130, true, 980000, 100, 'ACTIVE', 8, 1, 5);
INSERT INTO public.product_variants VALUES (131, true, 980000, 100, 'ACTIVE', 8, 2, 3);
INSERT INTO public.product_variants VALUES (132, true, 980000, 100, 'ACTIVE', 8, 3, 6);
INSERT INTO public.product_variants VALUES (133, true, 800000, 100, 'ACTIVE', 9, 2, 4);
INSERT INTO public.product_variants VALUES (134, true, 800000, 98, 'ACTIVE', 9, 1, 5);
INSERT INTO public.product_variants VALUES (146, true, 840000, 100, 'ACTIVE', 9, 4, 4);
INSERT INTO public.product_variants VALUES (147, true, 840000, 100, 'ACTIVE', 9, 2, 6);
INSERT INTO public.product_variants VALUES (148, true, 860000, 100, 'ACTIVE', 10, 2, 2);
INSERT INTO public.product_variants VALUES (149, true, 860000, 100, 'ACTIVE', 10, 3, 5);
INSERT INTO public.product_variants VALUES (150, true, 860000, 98, 'ACTIVE', 10, 1, 6);
INSERT INTO public.product_variants VALUES (164, true, 900000, 100, 'ACTIVE', 10, 1, 5);
INSERT INTO public.product_variants VALUES (165, true, 900000, 100, 'ACTIVE', 10, 3, 1);
INSERT INTO public.product_variants VALUES (166, true, 720000, 100, 'ACTIVE', 11, 1, 4);
INSERT INTO public.product_variants VALUES (167, true, 720000, 100, 'ACTIVE', 11, 2, 5);
INSERT INTO public.product_variants VALUES (168, true, 720000, 100, 'ACTIVE', 11, 2, 6);
INSERT INTO public.product_variants VALUES (99, true, 880000, 98, 'ACTIVE', 7, 2, 5);
INSERT INTO public.product_variants VALUES (1, true, 400000, 99, 'ACTIVE', 1, 1, 2);
INSERT INTO public.product_variants VALUES (182, true, 780000, 100, 'ACTIVE', 11, 1, 2);
INSERT INTO public.product_variants VALUES (183, true, 780000, 100, 'ACTIVE', 11, 2, 3);
INSERT INTO public.product_variants VALUES (184, true, 760000, 100, 'ACTIVE', 12, 1, 1);
INSERT INTO public.product_variants VALUES (185, true, 760000, 100, 'ACTIVE', 12, 2, 6);
INSERT INTO public.product_variants VALUES (186, true, 760000, 100, 'ACTIVE', 12, 1, 6);
INSERT INTO public.product_variants VALUES (200, true, 810000, 99, 'ACTIVE', 12, 3, 1);
INSERT INTO public.product_variants VALUES (202, true, 580000, 100, 'ACTIVE', 13, 2, 5);
INSERT INTO public.product_variants VALUES (203, true, 580000, 100, 'ACTIVE', 13, 2, 1);
INSERT INTO public.product_variants VALUES (204, true, 580000, 100, 'ACTIVE', 13, 1, 3);
INSERT INTO public.product_variants VALUES (218, true, 620000, 100, 'ACTIVE', 13, 1, 2);
INSERT INTO public.product_variants VALUES (219, true, 620000, 100, 'ACTIVE', 13, 3, 1);
INSERT INTO public.product_variants VALUES (221, true, 660000, 100, 'ACTIVE', 14, 1, 4);
INSERT INTO public.product_variants VALUES (222, true, 660000, 100, 'ACTIVE', 14, 1, 6);
INSERT INTO public.product_variants VALUES (235, true, 720000, 100, 'ACTIVE', 14, 2, 4);
INSERT INTO public.product_variants VALUES (236, true, 720000, 100, 'ACTIVE', 14, 3, 3);
INSERT INTO public.product_variants VALUES (237, true, 720000, 100, 'ACTIVE', 14, 3, 4);
INSERT INTO public.product_variants VALUES (238, true, 730000, 100, 'ACTIVE', 15, 2, 5);
INSERT INTO public.product_variants VALUES (239, true, 730000, 100, 'ACTIVE', 15, 1, 1);
INSERT INTO public.product_variants VALUES (240, true, 730000, 100, 'ACTIVE', 15, 1, 2);
INSERT INTO public.product_variants VALUES (254, true, 780000, 100, 'ACTIVE', 15, 3, 4);
INSERT INTO public.product_variants VALUES (255, true, 780000, 100, 'ACTIVE', 15, 3, 6);
INSERT INTO public.product_variants VALUES (256, true, 880000, 100, 'ACTIVE', 16, 2, 3);
INSERT INTO public.product_variants VALUES (257, true, 880000, 100, 'ACTIVE', 16, 2, 1);
INSERT INTO public.product_variants VALUES (258, true, 880000, 100, 'ACTIVE', 16, 1, 4);
INSERT INTO public.product_variants VALUES (265, true, 930000, 100, 'ACTIVE', 16, 2, 5);
INSERT INTO public.product_variants VALUES (266, true, 930000, 100, 'ACTIVE', 16, 1, 2);
INSERT INTO public.product_variants VALUES (267, true, 930000, 100, 'ACTIVE', 16, 2, 4);
INSERT INTO public.product_variants VALUES (268, true, 920000, 100, 'ACTIVE', 17, 3, 4);
INSERT INTO public.product_variants VALUES (269, true, 920000, 100, 'ACTIVE', 17, 2, 5);
INSERT INTO public.product_variants VALUES (271, true, 920000, 100, 'ACTIVE', 17, 3, 6);
INSERT INTO public.product_variants VALUES (286, true, 930000, 100, 'ACTIVE', 18, 3, 3);
INSERT INTO public.product_variants VALUES (287, true, 930000, 100, 'ACTIVE', 18, 1, 3);
INSERT INTO public.product_variants VALUES (288, true, 930000, 100, 'ACTIVE', 18, 2, 2);
INSERT INTO public.product_variants VALUES (301, true, 970000, 100, 'ACTIVE', 18, 3, 6);
INSERT INTO public.product_variants VALUES (302, true, 970000, 100, 'ACTIVE', 18, 1, 2);
INSERT INTO public.product_variants VALUES (303, true, 970000, 100, 'ACTIVE', 18, 2, 1);
INSERT INTO public.product_variants VALUES (304, true, 900000, 100, 'ACTIVE', 19, 1, 6);
INSERT INTO public.product_variants VALUES (305, true, 850000, 100, 'ACTIVE', 19, 1, 3);
INSERT INTO public.product_variants VALUES (306, true, 850000, 100, 'ACTIVE', 19, 2, 3);
INSERT INTO public.product_variants VALUES (307, true, 850000, 100, 'ACTIVE', 19, 2, 4);
INSERT INTO public.product_variants VALUES (308, true, 820000, 100, 'ACTIVE', 19, 2, 2);
INSERT INTO public.product_variants VALUES (309, true, 820000, 100, 'ACTIVE', 19, 1, 1);
INSERT INTO public.product_variants VALUES (310, true, 820000, 100, 'ACTIVE', 19, 1, 2);
INSERT INTO public.product_variants VALUES (311, true, 850000, 100, 'ACTIVE', 19, 1, 4);
INSERT INTO public.product_variants VALUES (312, true, 900000, 100, 'ACTIVE', 19, 1, 5);
INSERT INTO public.product_variants VALUES (313, true, 900000, 100, 'ACTIVE', 19, 2, 5);
INSERT INTO public.product_variants VALUES (314, true, 900000, 100, 'ACTIVE', 19, 2, 6);
INSERT INTO public.product_variants VALUES (315, true, 820000, 100, 'ACTIVE', 19, 2, 1);
INSERT INTO public.product_variants VALUES (316, true, 910000, 100, 'ACTIVE', 20, 4, 2);
INSERT INTO public.product_variants VALUES (317, true, 930000, 100, 'ACTIVE', 20, 2, 3);
INSERT INTO public.product_variants VALUES (318, true, 980000, 100, 'ACTIVE', 20, 4, 5);
INSERT INTO public.product_variants VALUES (319, true, 980000, 100, 'ACTIVE', 20, 1, 6);
INSERT INTO public.product_variants VALUES (321, true, 980000, 100, 'ACTIVE', 20, 2, 5);
INSERT INTO public.product_variants VALUES (322, true, 930000, 100, 'ACTIVE', 20, 4, 3);
INSERT INTO public.product_variants VALUES (323, true, 980000, 100, 'ACTIVE', 20, 1, 5);
INSERT INTO public.product_variants VALUES (324, true, 930000, 100, 'ACTIVE', 20, 1, 4);
INSERT INTO public.product_variants VALUES (325, true, 910000, 100, 'ACTIVE', 20, 4, 1);
INSERT INTO public.product_variants VALUES (326, true, 930000, 100, 'ACTIVE', 20, 4, 4);
INSERT INTO public.product_variants VALUES (327, true, 930000, 100, 'ACTIVE', 20, 1, 3);
INSERT INTO public.product_variants VALUES (328, true, 910000, 100, 'ACTIVE', 20, 1, 2);
INSERT INTO public.product_variants VALUES (329, true, 910000, 100, 'ACTIVE', 20, 1, 1);
INSERT INTO public.product_variants VALUES (330, true, 930000, 100, 'ACTIVE', 20, 2, 4);
INSERT INTO public.product_variants VALUES (331, true, 910000, 100, 'ACTIVE', 20, 2, 2);
INSERT INTO public.product_variants VALUES (332, true, 910000, 100, 'ACTIVE', 20, 2, 1);
INSERT INTO public.product_variants VALUES (333, true, 980000, 100, 'ACTIVE', 20, 4, 6);
INSERT INTO public.product_variants VALUES (24, true, 500000, 99, 'ACTIVE', 2, 1, 4);
INSERT INTO public.product_variants VALUES (31, true, 650000, 98, 'ACTIVE', 3, 4, 6);
INSERT INTO public.product_variants VALUES (334, true, 830000, 100, 'ACTIVE', 21, 1, 4);
INSERT INTO public.product_variants VALUES (335, true, 880000, 100, 'ACTIVE', 21, 1, 5);
INSERT INTO public.product_variants VALUES (336, true, 810000, 100, 'ACTIVE', 21, 1, 2);
INSERT INTO public.product_variants VALUES (337, true, 810000, 100, 'ACTIVE', 21, 1, 1);
INSERT INTO public.product_variants VALUES (338, true, 830000, 100, 'ACTIVE', 21, 1, 3);
INSERT INTO public.product_variants VALUES (339, true, 810000, 100, 'ACTIVE', 21, 2, 1);
INSERT INTO public.product_variants VALUES (340, true, 880000, 100, 'ACTIVE', 21, 2, 5);
INSERT INTO public.product_variants VALUES (341, true, 880000, 100, 'ACTIVE', 21, 1, 6);
INSERT INTO public.product_variants VALUES (342, true, 810000, 100, 'ACTIVE', 21, 2, 2);
INSERT INTO public.product_variants VALUES (343, true, 880000, 100, 'ACTIVE', 21, 2, 6);
INSERT INTO public.product_variants VALUES (344, true, 830000, 100, 'ACTIVE', 21, 2, 4);
INSERT INTO public.product_variants VALUES (345, true, 830000, 100, 'ACTIVE', 21, 2, 3);
INSERT INTO public.product_variants VALUES (346, true, 920000, 100, 'ACTIVE', 22, 1, 2);
INSERT INTO public.product_variants VALUES (347, true, 950000, 100, 'ACTIVE', 22, 2, 4);
INSERT INTO public.product_variants VALUES (348, true, 950000, 100, 'ACTIVE', 22, 1, 4);
INSERT INTO public.product_variants VALUES (349, true, 920000, 100, 'ACTIVE', 22, 1, 1);
INSERT INTO public.product_variants VALUES (350, true, 990000, 100, 'ACTIVE', 22, 1, 6);
INSERT INTO public.product_variants VALUES (270, true, 920000, 99, 'ACTIVE', 17, 3, 3);
INSERT INTO public.product_variants VALUES (220, true, 660000, 99, 'ACTIVE', 14, 2, 5);
INSERT INTO public.product_variants VALUES (320, true, 980000, 97, 'ACTIVE', 20, 2, 6);
INSERT INTO public.product_variants VALUES (351, true, 950000, 100, 'ACTIVE', 22, 2, 3);
INSERT INTO public.product_variants VALUES (352, true, 950000, 100, 'ACTIVE', 22, 2, 5);
INSERT INTO public.product_variants VALUES (353, true, 990000, 100, 'ACTIVE', 22, 2, 6);
INSERT INTO public.product_variants VALUES (354, true, 950000, 100, 'ACTIVE', 22, 1, 5);
INSERT INTO public.product_variants VALUES (355, true, 950000, 100, 'ACTIVE', 22, 1, 3);
INSERT INTO public.product_variants VALUES (356, true, 920000, 100, 'ACTIVE', 22, 2, 1);
INSERT INTO public.product_variants VALUES (357, true, 920000, 100, 'ACTIVE', 22, 2, 2);
INSERT INTO public.product_variants VALUES (358, true, 900000, 100, 'ACTIVE', 23, 2, 3);
INSERT INTO public.product_variants VALUES (359, true, 900000, 100, 'ACTIVE', 23, 2, 4);
INSERT INTO public.product_variants VALUES (361, true, 930000, 100, 'ACTIVE', 23, 1, 5);
INSERT INTO public.product_variants VALUES (362, true, 900000, 100, 'ACTIVE', 23, 1, 4);
INSERT INTO public.product_variants VALUES (363, true, 900000, 100, 'ACTIVE', 23, 1, 3);
INSERT INTO public.product_variants VALUES (364, true, 880000, 100, 'ACTIVE', 23, 2, 2);
INSERT INTO public.product_variants VALUES (365, true, 880000, 100, 'ACTIVE', 23, 3, 2);
INSERT INTO public.product_variants VALUES (366, true, 930000, 100, 'ACTIVE', 23, 3, 6);
INSERT INTO public.product_variants VALUES (367, true, 930000, 100, 'ACTIVE', 23, 3, 5);
INSERT INTO public.product_variants VALUES (368, true, 930000, 100, 'ACTIVE', 23, 2, 6);
INSERT INTO public.product_variants VALUES (371, true, 880000, 100, 'ACTIVE', 23, 3, 1);
INSERT INTO public.product_variants VALUES (372, true, 930000, 100, 'ACTIVE', 23, 1, 6);
INSERT INTO public.product_variants VALUES (373, true, 900000, 100, 'ACTIVE', 23, 3, 3);
INSERT INTO public.product_variants VALUES (374, true, 930000, 100, 'ACTIVE', 23, 2, 5);
INSERT INTO public.product_variants VALUES (375, true, 880000, 100, 'ACTIVE', 23, 2, 1);
INSERT INTO public.product_variants VALUES (376, true, 810000, 100, 'ACTIVE', 24, 1, 5);
INSERT INTO public.product_variants VALUES (377, true, 850000, 100, 'ACTIVE', 24, 1, 6);
INSERT INTO public.product_variants VALUES (378, true, 790000, 100, 'ACTIVE', 24, 2, 2);
INSERT INTO public.product_variants VALUES (379, true, 810000, 100, 'ACTIVE', 24, 1, 4);
INSERT INTO public.product_variants VALUES (380, true, 790000, 100, 'ACTIVE', 24, 1, 2);
INSERT INTO public.product_variants VALUES (381, true, 810000, 100, 'ACTIVE', 24, 1, 3);
INSERT INTO public.product_variants VALUES (382, true, 810000, 100, 'ACTIVE', 24, 3, 5);
INSERT INTO public.product_variants VALUES (383, true, 790000, 100, 'ACTIVE', 24, 3, 1);
INSERT INTO public.product_variants VALUES (384, true, 810000, 100, 'ACTIVE', 24, 3, 3);
INSERT INTO public.product_variants VALUES (385, true, 850000, 100, 'ACTIVE', 24, 3, 6);
INSERT INTO public.product_variants VALUES (386, true, 790000, 100, 'ACTIVE', 24, 1, 1);
INSERT INTO public.product_variants VALUES (387, true, 810000, 100, 'ACTIVE', 24, 2, 5);
INSERT INTO public.product_variants VALUES (388, true, 790000, 100, 'ACTIVE', 24, 2, 1);
INSERT INTO public.product_variants VALUES (389, true, 810000, 100, 'ACTIVE', 24, 2, 3);
INSERT INTO public.product_variants VALUES (390, true, 810000, 100, 'ACTIVE', 24, 2, 4);
INSERT INTO public.product_variants VALUES (391, true, 790000, 100, 'ACTIVE', 24, 3, 2);
INSERT INTO public.product_variants VALUES (392, true, 850000, 100, 'ACTIVE', 24, 2, 6);
INSERT INTO public.product_variants VALUES (393, true, 810000, 100, 'ACTIVE', 24, 3, 4);
INSERT INTO public.product_variants VALUES (394, true, 660000, 100, 'ACTIVE', 25, 2, 3);
INSERT INTO public.product_variants VALUES (395, true, 660000, 100, 'ACTIVE', 25, 3, 5);
INSERT INTO public.product_variants VALUES (396, true, 660000, 100, 'ACTIVE', 25, 1, 5);
INSERT INTO public.product_variants VALUES (397, true, 700000, 100, 'ACTIVE', 25, 2, 6);
INSERT INTO public.product_variants VALUES (398, true, 660000, 100, 'ACTIVE', 25, 3, 3);
INSERT INTO public.product_variants VALUES (399, true, 660000, 100, 'ACTIVE', 25, 2, 4);
INSERT INTO public.product_variants VALUES (400, true, 620000, 100, 'ACTIVE', 25, 3, 2);
INSERT INTO public.product_variants VALUES (401, true, 620000, 100, 'ACTIVE', 25, 2, 1);
INSERT INTO public.product_variants VALUES (402, true, 700000, 100, 'ACTIVE', 25, 3, 6);
INSERT INTO public.product_variants VALUES (403, true, 620000, 100, 'ACTIVE', 25, 1, 1);
INSERT INTO public.product_variants VALUES (404, true, 700000, 100, 'ACTIVE', 25, 1, 6);
INSERT INTO public.product_variants VALUES (405, true, 660000, 100, 'ACTIVE', 25, 1, 3);
INSERT INTO public.product_variants VALUES (407, true, 620000, 100, 'ACTIVE', 25, 1, 2);
INSERT INTO public.product_variants VALUES (408, true, 660000, 100, 'ACTIVE', 25, 2, 5);
INSERT INTO public.product_variants VALUES (409, true, 620000, 100, 'ACTIVE', 25, 3, 1);
INSERT INTO public.product_variants VALUES (411, true, 660000, 100, 'ACTIVE', 25, 1, 4);
INSERT INTO public.product_variants VALUES (412, true, 550000, 100, 'ACTIVE', 26, 1, 1);
INSERT INTO public.product_variants VALUES (413, true, 580000, 100, 'ACTIVE', 26, 1, 3);
INSERT INTO public.product_variants VALUES (414, true, 580000, 100, 'ACTIVE', 26, 2, 4);
INSERT INTO public.product_variants VALUES (415, true, 600000, 100, 'ACTIVE', 26, 1, 6);
INSERT INTO public.product_variants VALUES (416, true, 550000, 100, 'ACTIVE', 26, 2, 2);
INSERT INTO public.product_variants VALUES (417, true, 580000, 100, 'ACTIVE', 26, 2, 5);
INSERT INTO public.product_variants VALUES (418, true, 550000, 100, 'ACTIVE', 26, 1, 2);
INSERT INTO public.product_variants VALUES (419, true, 580000, 100, 'ACTIVE', 26, 1, 4);
INSERT INTO public.product_variants VALUES (420, true, 600000, 100, 'ACTIVE', 26, 2, 6);
INSERT INTO public.product_variants VALUES (421, true, 580000, 100, 'ACTIVE', 26, 1, 5);
INSERT INTO public.product_variants VALUES (422, true, 580000, 100, 'ACTIVE', 26, 2, 3);
INSERT INTO public.product_variants VALUES (423, true, 550000, 100, 'ACTIVE', 26, 2, 1);
INSERT INTO public.product_variants VALUES (424, true, 520000, 100, 'ACTIVE', 27, 2, 6);
INSERT INTO public.product_variants VALUES (425, true, 490000, 100, 'ACTIVE', 27, 2, 4);
INSERT INTO public.product_variants VALUES (426, true, 520000, 100, 'ACTIVE', 27, 2, 5);
INSERT INTO public.product_variants VALUES (427, true, 490000, 100, 'ACTIVE', 27, 1, 3);
INSERT INTO public.product_variants VALUES (428, true, 450000, 100, 'ACTIVE', 27, 2, 1);
INSERT INTO public.product_variants VALUES (429, true, 450000, 100, 'ACTIVE', 27, 2, 2);
INSERT INTO public.product_variants VALUES (430, true, 490000, 100, 'ACTIVE', 27, 2, 3);
INSERT INTO public.product_variants VALUES (431, true, 490000, 100, 'ACTIVE', 27, 1, 4);
INSERT INTO public.product_variants VALUES (432, true, 520000, 100, 'ACTIVE', 27, 1, 6);
INSERT INTO public.product_variants VALUES (433, true, 450000, 100, 'ACTIVE', 27, 1, 1);
INSERT INTO public.product_variants VALUES (434, true, 450000, 100, 'ACTIVE', 27, 1, 2);
INSERT INTO public.product_variants VALUES (435, true, 520000, 100, 'ACTIVE', 27, 1, 5);
INSERT INTO public.product_variants VALUES (436, true, 530000, 100, 'ACTIVE', 28, 1, 3);
INSERT INTO public.product_variants VALUES (437, true, 530000, 100, 'ACTIVE', 28, 1, 4);
INSERT INTO public.product_variants VALUES (438, true, 560000, 100, 'ACTIVE', 28, 1, 6);
INSERT INTO public.product_variants VALUES (406, true, 660000, 98, 'ACTIVE', 25, 3, 4);
INSERT INTO public.product_variants VALUES (370, true, 880000, 98, 'ACTIVE', 23, 1, 2);
INSERT INTO public.product_variants VALUES (369, true, 900000, 97, 'ACTIVE', 23, 3, 4);
INSERT INTO public.product_variants VALUES (410, true, 620000, 94, 'ACTIVE', 25, 2, 2);
INSERT INTO public.product_variants VALUES (439, true, 530000, 100, 'ACTIVE', 28, 2, 4);
INSERT INTO public.product_variants VALUES (440, true, 510000, 100, 'ACTIVE', 28, 2, 2);
INSERT INTO public.product_variants VALUES (441, true, 530000, 100, 'ACTIVE', 28, 2, 3);
INSERT INTO public.product_variants VALUES (442, true, 510000, 100, 'ACTIVE', 28, 2, 1);
INSERT INTO public.product_variants VALUES (443, true, 560000, 100, 'ACTIVE', 28, 2, 5);
INSERT INTO public.product_variants VALUES (444, true, 560000, 100, 'ACTIVE', 28, 2, 6);
INSERT INTO public.product_variants VALUES (445, true, 510000, 100, 'ACTIVE', 28, 1, 2);
INSERT INTO public.product_variants VALUES (446, true, 560000, 100, 'ACTIVE', 28, 1, 5);
INSERT INTO public.product_variants VALUES (447, true, 510000, 100, 'ACTIVE', 28, 1, 1);
INSERT INTO public.product_variants VALUES (448, true, 650000, 100, 'ACTIVE', 29, 1, 3);
INSERT INTO public.product_variants VALUES (449, true, 630000, 100, 'ACTIVE', 29, 2, 1);
INSERT INTO public.product_variants VALUES (450, true, 650000, 100, 'ACTIVE', 29, 2, 4);
INSERT INTO public.product_variants VALUES (451, true, 630000, 100, 'ACTIVE', 29, 2, 2);
INSERT INTO public.product_variants VALUES (452, true, 650000, 100, 'ACTIVE', 29, 2, 3);
INSERT INTO public.product_variants VALUES (453, true, 630000, 100, 'ACTIVE', 29, 1, 1);
INSERT INTO public.product_variants VALUES (454, true, 650000, 100, 'ACTIVE', 29, 1, 4);
INSERT INTO public.product_variants VALUES (455, true, 670000, 100, 'ACTIVE', 29, 2, 6);
INSERT INTO public.product_variants VALUES (456, true, 670000, 100, 'ACTIVE', 29, 2, 5);
INSERT INTO public.product_variants VALUES (457, true, 630000, 100, 'ACTIVE', 29, 1, 2);
INSERT INTO public.product_variants VALUES (458, true, 670000, 100, 'ACTIVE', 29, 1, 5);
INSERT INTO public.product_variants VALUES (459, true, 670000, 100, 'ACTIVE', 29, 1, 6);
INSERT INTO public.product_variants VALUES (360, true, 880000, 97, 'ACTIVE', 23, 1, 1);
INSERT INTO public.product_variants VALUES (201, true, 810000, 98, 'ACTIVE', 12, 3, 4);
INSERT INTO public.product_variants VALUES (260, true, 900000, 97, 'ACTIVE', 16, 2, 2);


--
-- Data for Name: cart_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cart_items VALUES (1, 450000, 2, '2025-08-07 00:44:32.315133', 2, 4);
INSERT INTO public.cart_items VALUES (2, 450000, 2, '2025-08-07 00:44:35.68613', 2, 5);
INSERT INTO public.cart_items VALUES (3, 770000, 3, '2025-08-07 00:44:43.638035', 2, 92);
INSERT INTO public.cart_items VALUES (4, 880000, 1, '2025-08-07 00:44:49.636277', 2, 152);
INSERT INTO public.cart_items VALUES (5, 810000, 1, '2025-08-07 00:44:53.850785', 2, 200);
INSERT INTO public.cart_items VALUES (6, 750000, 1, '2025-08-07 00:44:57.232129', 2, 252);
INSERT INTO public.cart_items VALUES (7, 820000, 1, '2025-08-07 00:45:02.710618', 2, 142);
INSERT INTO public.cart_items VALUES (8, 800000, 1, '2025-08-07 00:45:28.353529', 5, 134);
INSERT INTO public.cart_items VALUES (9, 900000, 1, '2025-08-07 00:45:33.499734', 5, 102);
INSERT INTO public.cart_items VALUES (10, 780000, 2, '2025-08-07 00:45:41.677083', 5, 199);
INSERT INTO public.cart_items VALUES (11, 720000, 2, '2025-08-07 00:45:45.379949', 5, 235);
INSERT INTO public.cart_items VALUES (12, 400000, 2, '2025-08-07 00:45:48.643016', 5, 3);
INSERT INTO public.cart_items VALUES (13, 880000, 2, '2025-08-07 00:46:30.504936', 3, 99);
INSERT INTO public.cart_items VALUES (14, 650000, 1, '2025-08-07 00:46:35.09888', 3, 33);
INSERT INTO public.cart_items VALUES (15, 820000, 1, '2025-08-07 00:46:38.900641', 3, 145);
INSERT INTO public.cart_items VALUES (16, 950000, 1, '2025-08-07 00:46:43.097921', 3, 120);
INSERT INTO public.cart_items VALUES (17, 600000, 1, '2025-08-07 00:46:48.716872', 3, 205);
INSERT INTO public.cart_items VALUES (18, 690000, 1, '2025-08-07 00:46:53.140799', 3, 223);


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
INSERT INTO public.files VALUES (99, 'adam-store/images/zr4saxryyvom26sur28c', '1.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328648/adam-store/images/zr4saxryyvom26sur28c.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (100, 'adam-store/images/vi0tnkyupjrzqmabjbph', '2.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328650/adam-store/images/vi0tnkyupjrzqmabjbph.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (101, 'adam-store/images/md0vv0m5xmeyhsbpeltr', '3.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328652/adam-store/images/md0vv0m5xmeyhsbpeltr.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (102, 'adam-store/images/hyemogxe3wcfok68wplc', '4.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328654/adam-store/images/hyemogxe3wcfok68wplc.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (103, 'adam-store/images/uctjo7f5x9v8jrqfp27p', '5.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328760/adam-store/images/uctjo7f5x9v8jrqfp27p.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (104, 'adam-store/images/r3qaeazpl1qcjqmurqga', '7.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328761/adam-store/images/r3qaeazpl1qcjqmurqga.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (105, 'adam-store/images/wzgb2uw2wsiqbpvfga32', '8.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328762/adam-store/images/wzgb2uw2wsiqbpvfga32.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (106, 'adam-store/images/sqesoue5gah9e4qpu2tv', '9.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328763/adam-store/images/sqesoue5gah9e4qpu2tv.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (107, 'adam-store/images/xveqso2nutmpd0nh1fxm', '10.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328878/adam-store/images/xveqso2nutmpd0nh1fxm.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (108, 'adam-store/images/hevkggrfawsqdqowrvci', '11.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328879/adam-store/images/hevkggrfawsqdqowrvci.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (109, 'adam-store/images/fyd3f2utfj0mbbdxk9dw', '12.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328880/adam-store/images/fyd3f2utfj0mbbdxk9dw.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (110, 'adam-store/images/wqslb8yi3v3u2ihcuzne', '13.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328882/adam-store/images/wqslb8yi3v3u2ihcuzne.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (111, 'adam-store/images/akimbri2xreetvqnqlnb', '14.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328966/adam-store/images/akimbri2xreetvqnqlnb.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (112, 'adam-store/images/ajb2fnplrg3wewzvibn7', '15.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328967/adam-store/images/ajb2fnplrg3wewzvibn7.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (113, 'adam-store/images/fd3apxfg9ny1a5igtdyy', '16.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328968/adam-store/images/fd3apxfg9ny1a5igtdyy.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (114, 'adam-store/images/uzhfq5kdiam1lhwy6h9o', '17.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328969/adam-store/images/uzhfq5kdiam1lhwy6h9o.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (115, 'adam-store/images/hglbgbmjc6xzfnakkfbg', '18.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329044/adam-store/images/hglbgbmjc6xzfnakkfbg.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (116, 'adam-store/images/artuqvltwysslawlnun2', '19.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329045/adam-store/images/artuqvltwysslawlnun2.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (117, 'adam-store/images/oc8utol0qasqdguotzgi', '20.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329047/adam-store/images/oc8utol0qasqdguotzgi.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (118, 'adam-store/images/o4jxpnhjtykcxocvlnp5', '21.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329048/adam-store/images/o4jxpnhjtykcxocvlnp5.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (119, 'adam-store/images/qeodzffelk9o9zsz6qtf', '22.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329113/adam-store/images/qeodzffelk9o9zsz6qtf.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (120, 'adam-store/images/qowxumdv9nr8k3czdimw', '23.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329114/adam-store/images/qowxumdv9nr8k3czdimw.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (121, 'adam-store/images/dqjl9lwsdrsm9uhsnrmd', '24.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329116/adam-store/images/dqjl9lwsdrsm9uhsnrmd.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (122, 'adam-store/images/r30aolfbrkuzmzisblcm', '25.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329118/adam-store/images/r30aolfbrkuzmzisblcm.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (123, 'adam-store/images/kl1t6grojxe02nof3ls5', '28.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329184/adam-store/images/kl1t6grojxe02nof3ls5.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (124, 'adam-store/images/gchiljgl6lazehg506wd', '29.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329185/adam-store/images/gchiljgl6lazehg506wd.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (125, 'adam-store/images/lprdae4bfdyclfxi1urv', '30.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329187/adam-store/images/lprdae4bfdyclfxi1urv.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (126, 'adam-store/images/b2kvhs4fcxzmrqggsyvu', '31.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329188/adam-store/images/b2kvhs4fcxzmrqggsyvu.webp', 'admin@gmail.com', '2025-08-05', NULL);
INSERT INTO public.files VALUES (127, 'adam-store/images/ccx2wcsh138mqwiadjz2', '3.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329332/adam-store/images/ccx2wcsh138mqwiadjz2.jpg', 'admin@gmail.com', '2025-08-05', 17);
INSERT INTO public.files VALUES (128, 'adam-store/images/l5kqbcfxxmcjgxohonbx', '3.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329334/adam-store/images/l5kqbcfxxmcjgxohonbx.jpg', 'admin@gmail.com', '2025-08-05', 17);
INSERT INTO public.files VALUES (129, 'adam-store/images/flsra9oopcozxcovfoml', '3.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329336/adam-store/images/flsra9oopcozxcovfoml.jpg', 'admin@gmail.com', '2025-08-05', 17);
INSERT INTO public.files VALUES (130, 'adam-store/images/bdpp9uqnxulczo78qwcu', '3.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329337/adam-store/images/bdpp9uqnxulczo78qwcu.jpg', 'admin@gmail.com', '2025-08-05', 17);
INSERT INTO public.files VALUES (131, 'adam-store/images/rvmkfzlgc4kzc00ux1vd', '4.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329641/adam-store/images/rvmkfzlgc4kzc00ux1vd.jpg', 'admin@gmail.com', '2025-08-05', 18);
INSERT INTO public.files VALUES (132, 'adam-store/images/uazvlqtbjnnvoed8gevu', '4.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329643/adam-store/images/uazvlqtbjnnvoed8gevu.jpg', 'admin@gmail.com', '2025-08-05', 18);
INSERT INTO public.files VALUES (133, 'adam-store/images/uivlw4xnrdtbws1txto6', '4.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329645/adam-store/images/uivlw4xnrdtbws1txto6.jpg', 'admin@gmail.com', '2025-08-05', 18);
INSERT INTO public.files VALUES (134, 'adam-store/images/uz1ae0eqr12tyaotxl6q', '4.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329646/adam-store/images/uz1ae0eqr12tyaotxl6q.jpg', 'admin@gmail.com', '2025-08-05', 18);
INSERT INTO public.files VALUES (135, 'adam-store/images/oo7qvqq6skjr3p1o2ext', '3.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754501923/adam-store/images/oo7qvqq6skjr3p1o2ext.jpg', 'admin@gmail.com', '2025-08-07', 19);
INSERT INTO public.files VALUES (136, 'adam-store/images/oai0ourvab47xhcndrsm', '3.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754501925/adam-store/images/oai0ourvab47xhcndrsm.jpg', 'admin@gmail.com', '2025-08-07', 19);
INSERT INTO public.files VALUES (137, 'adam-store/images/ffyhrgo2q6wcnufyr3nh', '3.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754501927/adam-store/images/ffyhrgo2q6wcnufyr3nh.jpg', 'admin@gmail.com', '2025-08-07', 19);
INSERT INTO public.files VALUES (138, 'adam-store/images/iiwglbiopqozbqxtrjdz', '3.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754501929/adam-store/images/iiwglbiopqozbqxtrjdz.jpg', 'admin@gmail.com', '2025-08-07', 19);
INSERT INTO public.files VALUES (139, 'adam-store/images/h28asddwvyh63ifwv4na', '4.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754502141/adam-store/images/h28asddwvyh63ifwv4na.jpg', 'admin@gmail.com', '2025-08-07', 20);
INSERT INTO public.files VALUES (140, 'adam-store/images/jqszlemx29dtzide0wjo', '4.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754502143/adam-store/images/jqszlemx29dtzide0wjo.jpg', 'admin@gmail.com', '2025-08-07', 20);
INSERT INTO public.files VALUES (141, 'adam-store/images/sxou53jtppkicfipyusx', '4.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754502145/adam-store/images/sxou53jtppkicfipyusx.jpg', 'admin@gmail.com', '2025-08-07', 20);
INSERT INTO public.files VALUES (142, 'adam-store/images/ln0cognwxqlmzlfiqpgf', '4.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754502147/adam-store/images/ln0cognwxqlmzlfiqpgf.jpg', 'admin@gmail.com', '2025-08-07', 20);
INSERT INTO public.files VALUES (143, 'adam-store/images/flff7vmz8spwflh8jrzb', '4.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641340/adam-store/images/flff7vmz8spwflh8jrzb.jpg', 'admin@gmail.com', '2025-08-08', 21);
INSERT INTO public.files VALUES (144, 'adam-store/images/no3n6kymd36m2oqhhyia', '4.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641342/adam-store/images/no3n6kymd36m2oqhhyia.jpg', 'admin@gmail.com', '2025-08-08', 21);
INSERT INTO public.files VALUES (145, 'adam-store/images/thfjqntvi6jv3rzxktrv', '4.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641344/adam-store/images/thfjqntvi6jv3rzxktrv.jpg', 'admin@gmail.com', '2025-08-08', 21);
INSERT INTO public.files VALUES (146, 'adam-store/images/xicggkltgozsp74dvtoz', '4.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641345/adam-store/images/xicggkltgozsp74dvtoz.jpg', 'admin@gmail.com', '2025-08-08', 21);
INSERT INTO public.files VALUES (147, 'adam-store/images/r5xm2aat0iqmgj5bbmej', '5.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641443/adam-store/images/r5xm2aat0iqmgj5bbmej.jpg', 'admin@gmail.com', '2025-08-08', 22);
INSERT INTO public.files VALUES (148, 'adam-store/images/y1tfaicmvwv3zxtwmmuw', '5.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641444/adam-store/images/y1tfaicmvwv3zxtwmmuw.jpg', 'admin@gmail.com', '2025-08-08', 22);
INSERT INTO public.files VALUES (149, 'adam-store/images/axiixag3fyfov0jlmncb', '5.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641446/adam-store/images/axiixag3fyfov0jlmncb.jpg', 'admin@gmail.com', '2025-08-08', 22);
INSERT INTO public.files VALUES (150, 'adam-store/images/q9bwz2eeddg118wfjpu2', '5.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641448/adam-store/images/q9bwz2eeddg118wfjpu2.jpg', 'admin@gmail.com', '2025-08-08', 22);
INSERT INTO public.files VALUES (151, 'adam-store/images/oreg7k0botilqmldsrzi', '6.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641609/adam-store/images/oreg7k0botilqmldsrzi.jpg', 'admin@gmail.com', '2025-08-08', 23);
INSERT INTO public.files VALUES (152, 'adam-store/images/vx12yowwlftbibn3kltr', '6.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641612/adam-store/images/vx12yowwlftbibn3kltr.jpg', 'admin@gmail.com', '2025-08-08', 23);
INSERT INTO public.files VALUES (153, 'adam-store/images/iqcimnxsyppyyqeesevx', '6.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641613/adam-store/images/iqcimnxsyppyyqeesevx.jpg', 'admin@gmail.com', '2025-08-08', 23);
INSERT INTO public.files VALUES (154, 'adam-store/images/t6e3p0c5ljec33prc6di', '6.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641615/adam-store/images/t6e3p0c5ljec33prc6di.jpg', 'admin@gmail.com', '2025-08-08', 23);
INSERT INTO public.files VALUES (155, 'adam-store/images/i2dafdedic9n61r9oyaf', '7.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641865/adam-store/images/i2dafdedic9n61r9oyaf.jpg', 'admin@gmail.com', '2025-08-08', 24);
INSERT INTO public.files VALUES (156, 'adam-store/images/xwvvkcsnlvsr90trxm0g', '7.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641867/adam-store/images/xwvvkcsnlvsr90trxm0g.jpg', 'admin@gmail.com', '2025-08-08', 24);
INSERT INTO public.files VALUES (157, 'adam-store/images/tnq6gipgunz9tmjdacce', '7.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641868/adam-store/images/tnq6gipgunz9tmjdacce.jpg', 'admin@gmail.com', '2025-08-08', 24);
INSERT INTO public.files VALUES (158, 'adam-store/images/vfhjhhli7tslivjhns2s', '7.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754641870/adam-store/images/vfhjhhli7tslivjhns2s.jpg', 'admin@gmail.com', '2025-08-08', 24);
INSERT INTO public.files VALUES (159, 'adam-store/images/jigawd3m4us2arn2fvei', '3.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642023/adam-store/images/jigawd3m4us2arn2fvei.jpg', 'admin@gmail.com', '2025-08-08', 25);
INSERT INTO public.files VALUES (160, 'adam-store/images/lq0eicpw2cvlfmmbjegq', '3.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642025/adam-store/images/lq0eicpw2cvlfmmbjegq.jpg', 'admin@gmail.com', '2025-08-08', 25);
INSERT INTO public.files VALUES (161, 'adam-store/images/c0ilbvmbvmyvu9itorwy', '3.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642027/adam-store/images/c0ilbvmbvmyvu9itorwy.jpg', 'admin@gmail.com', '2025-08-08', 25);
INSERT INTO public.files VALUES (162, 'adam-store/images/br59b9itrjaho1kv0bws', '3.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642029/adam-store/images/br59b9itrjaho1kv0bws.jpg', 'admin@gmail.com', '2025-08-08', 25);
INSERT INTO public.files VALUES (163, 'adam-store/images/yw9nixnmilqhcededaho', '4.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642153/adam-store/images/yw9nixnmilqhcededaho.jpg', 'admin@gmail.com', '2025-08-08', 26);
INSERT INTO public.files VALUES (164, 'adam-store/images/c9htr2pfg9ujpg0smy5a', '4.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642155/adam-store/images/c9htr2pfg9ujpg0smy5a.jpg', 'admin@gmail.com', '2025-08-08', 26);
INSERT INTO public.files VALUES (165, 'adam-store/images/nx31z2wrfiiss3pcttew', '4.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642157/adam-store/images/nx31z2wrfiiss3pcttew.jpg', 'admin@gmail.com', '2025-08-08', 26);
INSERT INTO public.files VALUES (166, 'adam-store/images/kij3hsfxij4w9jmjrjrb', '4.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642158/adam-store/images/kij3hsfxij4w9jmjrjrb.jpg', 'admin@gmail.com', '2025-08-08', 26);
INSERT INTO public.files VALUES (167, 'adam-store/images/mth1axjldr7inityyhnm', '3.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642312/adam-store/images/mth1axjldr7inityyhnm.jpg', 'admin@gmail.com', '2025-08-08', 27);
INSERT INTO public.files VALUES (168, 'adam-store/images/ha5sbe7rsj6bxi2pqipd', '3.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642314/adam-store/images/ha5sbe7rsj6bxi2pqipd.jpg', 'admin@gmail.com', '2025-08-08', 27);
INSERT INTO public.files VALUES (169, 'adam-store/images/n9nh42lusitq6bfilnqx', '3.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642315/adam-store/images/n9nh42lusitq6bfilnqx.jpg', 'admin@gmail.com', '2025-08-08', 27);
INSERT INTO public.files VALUES (170, 'adam-store/images/mlh4zdjn6kbbyhlkhfts', '3.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642318/adam-store/images/mlh4zdjn6kbbyhlkhfts.jpg', 'admin@gmail.com', '2025-08-08', 27);
INSERT INTO public.files VALUES (171, 'adam-store/images/jo9pjxzbeknmippvbdj3', '4.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642544/adam-store/images/jo9pjxzbeknmippvbdj3.jpg', 'admin@gmail.com', '2025-08-08', 28);
INSERT INTO public.files VALUES (172, 'adam-store/images/ljz1bfitgnka12bbhwaz', '4.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642546/adam-store/images/ljz1bfitgnka12bbhwaz.jpg', 'admin@gmail.com', '2025-08-08', 28);
INSERT INTO public.files VALUES (173, 'adam-store/images/yvtkjmavejpu8fvmplz3', '4.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642547/adam-store/images/yvtkjmavejpu8fvmplz3.jpg', 'admin@gmail.com', '2025-08-08', 28);
INSERT INTO public.files VALUES (174, 'adam-store/images/rnctjqncwxo1bhkfb4t8', '4.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642549/adam-store/images/rnctjqncwxo1bhkfb4t8.jpg', 'admin@gmail.com', '2025-08-08', 28);
INSERT INTO public.files VALUES (175, 'adam-store/images/liuqqy2yhtx0n3po27t8', '6.1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642709/adam-store/images/liuqqy2yhtx0n3po27t8.jpg', 'admin@gmail.com', '2025-08-08', 29);
INSERT INTO public.files VALUES (176, 'adam-store/images/vyuqh5aytu98kiwsetzv', '6.2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642711/adam-store/images/vyuqh5aytu98kiwsetzv.jpg', 'admin@gmail.com', '2025-08-08', 29);
INSERT INTO public.files VALUES (177, 'adam-store/images/ch05lwhhhrlq8uzspmsc', '6.3.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642712/adam-store/images/ch05lwhhhrlq8uzspmsc.jpg', 'admin@gmail.com', '2025-08-08', 29);
INSERT INTO public.files VALUES (178, 'adam-store/images/hdxem2kjc5tv17t8ebce', '6.4.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754642714/adam-store/images/hdxem2kjc5tv17t8ebce.jpg', 'admin@gmail.com', '2025-08-08', 29);
INSERT INTO public.files VALUES (179, 'adam-store/images/ax13v0ooslvvb28to6ys', 'moi1.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643232/adam-store/images/ax13v0ooslvvb28to6ys.jpg', 'mai123@gmail.com', '2025-08-08', NULL);
INSERT INTO public.files VALUES (180, 'adam-store/images/jhofxt8jbrucujkiweci', '36.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643353/adam-store/images/jhofxt8jbrucujkiweci.webp', 'mai123@gmail.com', '2025-08-08', NULL);
INSERT INTO public.files VALUES (181, 'adam-store/images/tjzwjvqhfwmzz3akn54v', '37.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643354/adam-store/images/tjzwjvqhfwmzz3akn54v.webp', 'mai123@gmail.com', '2025-08-08', NULL);
INSERT INTO public.files VALUES (182, 'adam-store/images/dass7ytiesxpy2n4mofg', '38.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643355/adam-store/images/dass7ytiesxpy2n4mofg.webp', 'mai123@gmail.com', '2025-08-08', NULL);
INSERT INTO public.files VALUES (183, 'adam-store/images/fm7yrrh8samlwi6x92j1', '39.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643357/adam-store/images/fm7yrrh8samlwi6x92j1.webp', 'mai123@gmail.com', '2025-08-08', NULL);
INSERT INTO public.files VALUES (184, 'adam-store/images/k7yzyf6zhh3qgebbkeaw', 'moi2.jpg', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643704/adam-store/images/k7yzyf6zhh3qgebbkeaw.jpg', 'manh123@gmail.com', '2025-08-08', NULL);
INSERT INTO public.files VALUES (185, 'adam-store/images/wlqx85wpx4zm65qh1anj', '40.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643842/adam-store/images/wlqx85wpx4zm65qh1anj.webp', 'manh123@gmail.com', '2025-08-08', NULL);
INSERT INTO public.files VALUES (186, 'adam-store/images/qrrt9e0tklxlzwcvuhko', '41.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643843/adam-store/images/qrrt9e0tklxlzwcvuhko.webp', 'manh123@gmail.com', '2025-08-08', NULL);
INSERT INTO public.files VALUES (187, 'adam-store/images/zpcsf3dj1lzgsaxiynfr', '42.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643845/adam-store/images/zpcsf3dj1lzgsaxiynfr.webp', 'manh123@gmail.com', '2025-08-08', NULL);
INSERT INTO public.files VALUES (188, 'adam-store/images/wvp0xst0phkvqizcwafx', '43.webp', 'http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643846/adam-store/images/wvp0xst0phkvqizcwafx.webp', 'manh123@gmail.com', '2025-08-08', NULL);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders VALUES (21, '2025-08-04', 3390000, 'PROCESSING', '2025-08-04', 1, 2);
INSERT INTO public.orders VALUES (22, '2025-08-04', 1950000, 'PROCESSING', '2025-08-04', 2, 2);
INSERT INTO public.orders VALUES (23, '2025-08-04', 2230000, 'PROCESSING', '2025-08-04', 5, 3);
INSERT INTO public.orders VALUES (24, '2025-08-04', 2470000, 'PROCESSING', '2025-08-04', 9, 9);
INSERT INTO public.orders VALUES (25, '2025-08-04', 1430000, 'PROCESSING', '2025-08-04', 9, 9);
INSERT INTO public.orders VALUES (1, '2025-08-01', 450000, 'SHIPPED', '2025-08-05', 1, 2);
INSERT INTO public.orders VALUES (2, '2025-08-01', 1351500, 'SHIPPED', '2025-08-05', 2, 2);
INSERT INTO public.orders VALUES (3, '2025-08-01', 2077500, 'SHIPPED', '2025-08-05', 1, 2);
INSERT INTO public.orders VALUES (4, '2025-08-01', 1260000, 'SHIPPED', '2025-08-05', 3, 3);
INSERT INTO public.orders VALUES (5, '2025-08-01', 1368500, 'SHIPPED', '2025-08-05', 4, 3);
INSERT INTO public.orders VALUES (6, '2025-08-01', 846000, 'SHIPPED', '2025-08-05', 5, 5);
INSERT INTO public.orders VALUES (7, '2025-08-01', 2006000, 'SHIPPED', '2025-08-05', 5, 5);
INSERT INTO public.orders VALUES (8, '2025-08-01', 1190000, 'SHIPPED', '2025-08-05', 6, 6);
INSERT INTO public.orders VALUES (10, '2025-08-01', 630000, 'SHIPPED', '2025-08-05', 6, 6);
INSERT INTO public.orders VALUES (11, '2025-08-01', 1810000, 'SHIPPED', '2025-08-05', 6, 6);
INSERT INTO public.orders VALUES (12, '2025-08-03', 1665000, 'SHIPPED', '2025-08-05', 7, 7);
INSERT INTO public.orders VALUES (13, '2025-08-03', 697000, 'SHIPPED', '2025-08-05', 7, 7);
INSERT INTO public.orders VALUES (14, '2025-08-03', 1260000, 'SHIPPED', '2025-08-05', 8, 8);
INSERT INTO public.orders VALUES (15, '2025-08-03', 2850000, 'SHIPPED', '2025-08-05', 8, 8);
INSERT INTO public.orders VALUES (16, '2025-08-03', 2560000, 'SHIPPED', '2025-08-05', 8, 8);
INSERT INTO public.orders VALUES (17, '2025-08-03', 710000, 'SHIPPED', '2025-08-05', 8, 8);
INSERT INTO public.orders VALUES (18, '2025-08-03', 960000, 'SHIPPED', '2025-08-05', 8, 8);
INSERT INTO public.orders VALUES (19, '2025-08-03', 3285000, 'SHIPPED', '2025-08-05', 9, 9);
INSERT INTO public.orders VALUES (20, '2025-08-03', 697000, 'SHIPPED', '2025-08-05', 9, 9);
INSERT INTO public.orders VALUES (26, '2025-08-05', 3000000, 'PROCESSING', '2025-08-05', 1, 2);
INSERT INTO public.orders VALUES (27, '2025-08-07', 1850000, 'PROCESSING', '2025-08-07', 4, 3);
INSERT INTO public.orders VALUES (28, '2025-08-08', 4310000, 'PROCESSING', '2025-08-08', 10, 7);
INSERT INTO public.orders VALUES (29, '2025-08-08', 3870000, 'PROCESSING', '2025-08-08', 10, 7);
INSERT INTO public.orders VALUES (30, '2025-08-08', 5580000, 'PROCESSING', '2025-08-08', 10, 7);
INSERT INTO public.orders VALUES (31, '2025-08-08', 710000, 'PROCESSING', '2025-08-08', 10, 7);
INSERT INTO public.orders VALUES (32, '2025-08-08', 2750000, 'PROCESSING', '2025-08-08', 10, 7);
INSERT INTO public.orders VALUES (33, '2025-08-08', 3500000, 'PROCESSING', '2025-08-08', 11, 5);
INSERT INTO public.orders VALUES (34, '2025-08-08', 2890000, 'PROCESSING', '2025-08-08', 11, 5);
INSERT INTO public.orders VALUES (35, '2025-08-08', 1921000, 'PROCESSING', '2025-08-08', 12, 10);
INSERT INTO public.orders VALUES (36, '2025-08-08', 1504500, 'PROCESSING', '2025-08-08', 13, 11);


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
INSERT INTO public.order_items VALUES (32, 2, 770000, 91, 26);
INSERT INTO public.order_items VALUES (33, 2, 700000, 32, 26);
INSERT INTO public.order_items VALUES (34, 1, 500000, 24, 27);
INSERT INTO public.order_items VALUES (35, 2, 650000, 31, 27);
INSERT INTO public.order_items VALUES (36, 3, 880000, 360, 28);
INSERT INTO public.order_items VALUES (37, 2, 810000, 201, 28);
INSERT INTO public.order_items VALUES (38, 2, 980000, 320, 29);
INSERT INTO public.order_items VALUES (39, 3, 620000, 410, 29);
INSERT INTO public.order_items VALUES (40, 1, 920000, 270, 30);
INSERT INTO public.order_items VALUES (41, 3, 950000, 120, 30);
INSERT INTO public.order_items VALUES (42, 2, 880000, 370, 30);
INSERT INTO public.order_items VALUES (43, 1, 660000, 220, 31);
INSERT INTO public.order_items VALUES (44, 3, 900000, 260, 32);
INSERT INTO public.order_items VALUES (45, 3, 900000, 369, 33);
INSERT INTO public.order_items VALUES (46, 1, 750000, 172, 33);
INSERT INTO public.order_items VALUES (47, 3, 620000, 410, 34);
INSERT INTO public.order_items VALUES (48, 1, 980000, 320, 34);
INSERT INTO public.order_items VALUES (49, 1, 450000, 5, 35);
INSERT INTO public.order_items VALUES (50, 2, 880000, 99, 35);
INSERT INTO public.order_items VALUES (51, 2, 660000, 406, 36);
INSERT INTO public.order_items VALUES (52, 1, 400000, 1, 36);


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
INSERT INTO public.payment_history VALUES (25, true, 'VNPAY', 3000000, 'PAID', '2025-08-05 00:49:26.185455', 26);
INSERT INTO public.payment_history VALUES (26, true, 'VNPAY', 1850000, 'PAID', '2025-08-07 00:47:41.900844', 27);
INSERT INTO public.payment_history VALUES (27, true, 'VNPAY', 4310000, 'PAID', '2025-08-08 15:47:20.375633', 28);
INSERT INTO public.payment_history VALUES (28, true, 'VNPAY', 3870000, 'PAID', '2025-08-08 15:47:46.72853', 29);
INSERT INTO public.payment_history VALUES (29, true, 'VNPAY', 5580000, 'PAID', '2025-08-08 15:48:25.165895', 30);
INSERT INTO public.payment_history VALUES (30, true, 'VNPAY', 710000, 'PAID', '2025-08-08 15:48:45.181535', 31);
INSERT INTO public.payment_history VALUES (31, true, 'VNPAY', 2750000, 'PAID', '2025-08-08 15:49:04.916345', 32);
INSERT INTO public.payment_history VALUES (32, true, 'VNPAY', 3500000, 'PAID', '2025-08-08 15:51:53.76941', 33);
INSERT INTO public.payment_history VALUES (33, true, 'VNPAY', 2890000, 'PAID', '2025-08-08 15:51:56.190329', 34);
INSERT INTO public.payment_history VALUES (34, true, 'VNPAY', 1921000, 'PAID', '2025-08-08 15:56:56.517764', 35);
INSERT INTO public.payment_history VALUES (35, true, 'VNPAY', 1504500, 'PAID', '2025-08-08 16:02:39.834584', 36);


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
INSERT INTO public.promotion_usages VALUES (15, 339000, '2025-08-08 15:56:50.518891', 10, 2, 35);
INSERT INTO public.promotion_usages VALUES (16, 265500, '2025-08-08 16:02:32.020081', 11, 2, 36);


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
INSERT INTO public.refresh_tokens VALUES (25, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbkBnbWFpbC5jb20iLCJyb2xlcyI6WyJBRE1JTiJdLCJpc3MiOiJBZG1pbiIsImV4cCI6MTc1NjA1MjAwOSwiaWF0IjoxNzU0MzI0MDA5LCJqdGkiOiI2NGQ1M2NlOS1kNzFhLTRkMzAtYjBjYS1iOTc0M2Y3NjkyNGMifQ.z7ql2jhAJ8-tolICNhpMPjyijkuhcK2zPlpCv5xeNlZ6mIhrEH34oKLJmHUVpStKUfOf8qiPi-oLagx4nOPwXw', '2025-08-24 23:13:29.163916');
INSERT INTO public.refresh_tokens VALUES (26, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbkBnbWFpbC5jb20iLCJyb2xlcyI6WyJBRE1JTiJdLCJpc3MiOiJBZG1pbiIsImV4cCI6MTc1NjA1NjYzNCwiaWF0IjoxNzU0MzI4NjM0LCJqdGkiOiIxNmVkYWU5NC1kY2Y1LTRiYTAtODFhMC05YjdjYTAyMmZlNzkifQ.k-ZD-xrShumWaGsEDAd267Km2Ix7TTIgz-yL_4suQuVnwsnC3Y5nA-M372HR75Cb3PKQPTjFRuwBAo-UyybovA', '2025-08-25 00:30:34.410547');
INSERT INTO public.refresh_tokens VALUES (27, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJsZWFuMjcwODA0QGdtYWlsLmNvbSIsInJvbGVzIjpbIkFETUlOIiwiVVNFUiJdLCJpc3MiOiJMw6ogVsSDbiBBbiIsImV4cCI6MTc1NjA1NzcxOCwiaWF0IjoxNzU0MzI5NzE4LCJqdGkiOiJkZWYwM2NlNC0xNzMxLTQwMDMtYjFkMS1hNTNlZDljM2YxZWYifQ.UJsfGrnhuPAXgTok8COxSDB0RXYEL_NhkasEWsh8NDpj3emvvmMFXtlCOC8hvZCdcg6rkWJSatdGjIjmRbLYZQ', '2025-08-25 00:48:38.419429');
INSERT INTO public.refresh_tokens VALUES (28, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJsZWFuMjcwODA0QGdtYWlsLmNvbSIsInJvbGVzIjpbIkFETUlOIiwiVVNFUiJdLCJpc3MiOiJMw6ogVsSDbiBBbiIsImV4cCI6MTc1NjIzMDIzNywiaWF0IjoxNzU0NTAyMjM3LCJqdGkiOiI2ZTMzYzE1My0yOGE2LTQwMTAtODk1MC1kZWRlOTE3YzlhMDcifQ._nPWhiZgPe8IVuAh6tEK_7VWJLow-u7wWWmdugtLrRaS8tZbKidO0dSXJuFLuJDFt8V0W6mHn-TKATBCA2rczw', '2025-08-27 00:43:57.946772');
INSERT INTO public.refresh_tokens VALUES (29, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aHV5ZHVuZzIxMDNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IlRow7l5IER1bmciLCJleHAiOjE3NTYyMzAzMTEsImlhdCI6MTc1NDUwMjMxMSwianRpIjoiOTMzYmE3NGMtY2QxMC00YjhhLWEyMDUtYzQ3ZDAyZTk5YTEyIn0.FqTuGZy5RuMuiLOphFZYUpCV9onXyzV33QmaU00G4T7IpfnjTlUCugD5E6A6OKlNIHu1vrPo5ZxknTmhPTusEg', '2025-08-27 00:45:11.315098');
INSERT INTO public.refresh_tokens VALUES (30, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtYWltaW5odHUxMzA4MDNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6Ik1haSBNaW5oIFTDuiIsImV4cCI6MTc1NjIzMDM3NiwiaWF0IjoxNzU0NTAyMzc2LCJqdGkiOiI1Y2RhNjA5NS1lYjA0LTQxYjUtYWJlYy1kMjFjYmU5NTlkOTQifQ.da2M1FZ9mISJGjPcYxwZKjJ29X1LZOM7ChHH6c-p6nQOIbTMmpg4Ek75PBVkIwHA-gCFvjEiM3mCvwJlP5Zn9w', '2025-08-27 00:46:16.155599');
INSERT INTO public.refresh_tokens VALUES (31, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbkBnbWFpbC5jb20iLCJyb2xlcyI6WyJBRE1JTiJdLCJpc3MiOiJBZG1pbiIsImV4cCI6MTc1NjM2OTEyMywiaWF0IjoxNzU0NjQxMTIzLCJqdGkiOiIxNzZkNmI3Zi0wYTIyLTRjMTYtYmJhMy1jOTFhZWRiOWVlODIifQ.y0ox8VoH4_x14gG36-h5FXvPmRxP_HX_KwZ7fOebr7EBJat52ROfyBtI_y4AiD18-UIu9ChzW9q-8qaVa-Pvwg', '2025-08-28 15:18:43.751968');
INSERT INTO public.refresh_tokens VALUES (32, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aGFuaG1hbmgxMjNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IlRow6BuaCBN4bqhbmgiLCJleHAiOjE3NTYzNzA3NjksImlhdCI6MTc1NDY0Mjc2OSwianRpIjoiYTRjYTUwMDAtMDQzNS00YzZkLWI0MDktOGM3MjQ0YWY1NjM5In0.uA5qwJv7rPJtEWN_ZBD6J0VDZq30xpYNA4jupTxReRbHbLO29sFcm4KLadyZlYmH9pQsTXK9663vmdjzxvb3Xw', '2025-08-28 15:46:09.422923');
INSERT INTO public.refresh_tokens VALUES (33, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aHV5ZHVuZzIxMDNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IlRow7l5IER1bmciLCJleHAiOjE3NTYzNzA5OTMsImlhdCI6MTc1NDY0Mjk5MywianRpIjoiNjYwODBkNGEtZWJlOC00NDMzLTlkZTUtNWIyOThmYjk4MDQxIn0.m2YmdFB5-yMkOUscz_BJfXfuTIyyTQ1aUWyANDB7Ami2jB7ARDmLKtmn_0e3tqq-IPQgV0rQWSFH-siwEW8YUw', '2025-08-28 15:49:53.055414');
INSERT INTO public.refresh_tokens VALUES (34, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbkBnbWFpbC5jb20iLCJyb2xlcyI6WyJBRE1JTiJdLCJpc3MiOiJBZG1pbiIsImV4cCI6MTc1NjM3MTE1MSwiaWF0IjoxNzU0NjQzMTUxLCJqdGkiOiJhNGM2OWYyMS02OTA3LTRhMDgtYTgzZC1iZjFiZWY3NGU3MjcifQ.gn8IdI16AJFq7HBwSTSX1fZ7eqE_nVH2_a75pk1N01fLTfRdMdrI0_pgBkFnnJsc0OUIdLLMMgwrYZEJrwIZSQ', '2025-08-28 15:52:31.635331');
INSERT INTO public.refresh_tokens VALUES (35, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtYWkxMjNAZ21haWwuY29tIiwicm9sZXMiOlsiQURNSU4iLCJVU0VSIl0sImlzcyI6IlRo4buLIE1haSIsImV4cCI6MTc1NjM3MTE4NSwiaWF0IjoxNzU0NjQzMTg1LCJqdGkiOiIzNGEzZDhhNS0wYTllLTQ1OWUtOThjNy0zMjdiNzNhZTIyYjUifQ.QuCUbJkJnQjrPOSmP1H9kshybEpEMAJUirre7OMp3SakamGJKuUykN64nS2Yj6rjcHeuYWA7MgWtxiWAnxYuSA', '2025-08-28 15:53:05.460117');
INSERT INTO public.refresh_tokens VALUES (36, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtYW5oMTIzQGdtYWlsLmNvbSIsInJvbGVzIjpbIkFETUlOIiwiVVNFUiJdLCJpc3MiOiJUaeG6v24gTeG6oW5oIiwiZXhwIjoxNzU2MzcxNjU4LCJpYXQiOjE3NTQ2NDM2NTgsImp0aSI6ImEwZjI3YzAyLTEzNmEtNGZjMi05NjNhLWQ1YTMwNWYzZWI4ZSJ9.dyiUtsePuzp7xSdu0jyBxSoEgDsVJJiY1qLSscAy2tGsTCdEi5AHBsfmXft3TIXPyTrua08bTyc-aZWvh1T-Qw', '2025-08-28 16:00:58.153401');


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reviews VALUES (5, 3.5, 'Sản phẩm ổn trong tầm giá, giao hơi chậm một chút.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328761/adam-store/images/r3qaeazpl1qcjqmurqga.webp"]', '2025-08-04', '2025-08-04', 2, 3, 25);
INSERT INTO public.reviews VALUES (2, 3.9, 'Sản phẩm như mô tả, tuy nhiên chất vải chưa thực sự ưng ý.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294228/adam-store/images/average1.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754294229/adam-store/images/average2.webp"]', '2025-08-04', '2025-08-04', 2, 6, 2);
INSERT INTO public.reviews VALUES (22, 4, 'Sản phẩm giống mô tả, chất lượng ổn định với mức giá này.', '[]', '2025-08-04', '2025-08-04', 8, 7, 18);
INSERT INTO public.reviews VALUES (24, 2.5, 'Hàng khác ảnh quảng cáo, form hơi lỏng, đường may chưa đẹp.', '[]', '2025-08-04', '2025-08-04', 9, 6, 20);
INSERT INTO public.reviews VALUES (1, 4.7, 'Sản phẩm rất tốt, giao hàng nhanh!', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328648/adam-store/images/zr4saxryyvom26sur28c.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328650/adam-store/images/vi0tnkyupjrzqmabjbph.webp"]', '2025-08-04', '2025-08-04', 2, 1, 1);
INSERT INTO public.reviews VALUES (3, 4.5, 'Sản phẩm vượt mong đợi, đóng gói cẩn thận và chất lượng tuyệt vời!', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328652/adam-store/images/md0vv0m5xmeyhsbpeltr.webp"]', '2025-08-04', '2025-08-04', 2, 7, 3);
INSERT INTO public.reviews VALUES (4, 3.7, 'Chất lượng sản phẩm rất tốt, đúng như mô tả. Sẽ ủng hộ lần sau!', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328760/adam-store/images/uctjo7f5x9v8jrqfp27p.webp"]', '2025-08-04', '2025-08-04', 2, 7, 22);
INSERT INTO public.reviews VALUES (6, 2.8, 'Sản phẩm không giống mô tả, cần cải thiện khâu kiểm tra hàng.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328762/adam-store/images/wzgb2uw2wsiqbpvfga32.webp"]', '2025-08-04', '2025-08-04', 3, 1, 4);
INSERT INTO public.reviews VALUES (7, 2.9, 'Giao sai màu, chất lượng chưa như mong đợi.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328763/adam-store/images/sqesoue5gah9e4qpu2tv.webp"]', '2025-08-04', '2025-08-04', 3, 6, 5);
INSERT INTO public.reviews VALUES (8, 3.5, 'Tạm ổn, cần cải thiện chất lượng đóng gói.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328762/adam-store/images/wzgb2uw2wsiqbpvfga32.webp"]', '2025-08-04', '2025-08-04', 3, 12, 26);
INSERT INTO public.reviews VALUES (9, 4.7, 'Hàng giống mô tả, giá hợp lý, chất lượng ổn.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328878/adam-store/images/xveqso2nutmpd0nh1fxm.webp"]', '2025-08-04', '2025-08-04', 3, 3, 27);
INSERT INTO public.reviews VALUES (10, 1, 'Rất thất vọng, hàng bị lỗi, không giống mô tả.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328879/adam-store/images/hevkggrfawsqdqowrvci.webp"]', '2025-08-04', '2025-08-04', 5, 1, 6);
INSERT INTO public.reviews VALUES (11, 4, 'Mọi thứ đều ổn, chỉ tiếc là giao hơi chậm một chút.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328880/adam-store/images/fyd3f2utfj0mbbdxk9dw.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328882/adam-store/images/wqslb8yi3v3u2ihcuzne.webp"]', '2025-08-04', '2025-08-04', 5, 1, 6);
INSERT INTO public.reviews VALUES (12, 3.1, 'Chất lượng trung bình, không quá nổi bật.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328880/adam-store/images/fyd3f2utfj0mbbdxk9dw.webp"]', '2025-08-04', '2025-08-04', 6, 1, 8);
INSERT INTO public.reviews VALUES (13, 4.2, 'Hàng đúng mô tả, phù hợp với nhu cầu của mình.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328966/adam-store/images/akimbri2xreetvqnqlnb.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328967/adam-store/images/ajb2fnplrg3wewzvibn7.webp"]', '2025-08-04', '2025-08-04', 6, 10, 11);
INSERT INTO public.reviews VALUES (14, 2.5, 'Chưa đúng kỳ vọng, vải hơi mỏng và màu không giống ảnh.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328967/adam-store/images/ajb2fnplrg3wewzvibn7.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328969/adam-store/images/uzhfq5kdiam1lhwy6h9o.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754328969/adam-store/images/uzhfq5kdiam1lhwy6h9o.webp"]', '2025-08-04', '2025-08-04', 6, 4, 10);
INSERT INTO public.reviews VALUES (15, 4.9, 'Không có gì để chê, sản phẩm quá tuyệt vời từ chất lượng đến thiết kế.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329044/adam-store/images/hglbgbmjc6xzfnakkfbg.webp"]', '2025-08-04', '2025-08-04', 7, 1, 12);
INSERT INTO public.reviews VALUES (16, 4.3, 'Nhân viên hỗ trợ nhiệt tình, giao hàng đúng hẹn. Sẽ tiếp tục ủng hộ.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329045/adam-store/images/artuqvltwysslawlnun2.webp"]', '2025-08-04', '2025-08-04', 7, 2, 24);
INSERT INTO public.reviews VALUES (17, 4.3, 'Nhân viên hỗ trợ nhiệt tình, giao hàng đúng hẹn. Sẽ tiếp tục ủng hộ.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329047/adam-store/images/oc8utol0qasqdguotzgi.webp"]', '2025-08-04', '2025-08-04', 7, 6, 13);
INSERT INTO public.reviews VALUES (18, 3.8, 'Đóng gói chắc chắn, nhưng màu sản phẩm thực tế hơi khác ảnh một chút.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329048/adam-store/images/o4jxpnhjtykcxocvlnp5.webp"]', '2025-08-04', '2025-08-04', 8, 1, 14);
INSERT INTO public.reviews VALUES (19, 2.1, 'Chất lượng vải không tốt như quảng cáo, form không chuẩn.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329113/adam-store/images/qeodzffelk9o9zsz6qtf.webp"]', '2025-08-04', '2025-08-04', 8, 3, 15);
INSERT INTO public.reviews VALUES (20, 4.9, 'Mặc lên cực kỳ đẹp, size chuẩn, giá hợp lý. Mình rất hài lòng.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329114/adam-store/images/qowxumdv9nr8k3czdimw.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329116/adam-store/images/dqjl9lwsdrsm9uhsnrmd.webp"]', '2025-08-04', '2025-08-04', 8, 2, 16);
INSERT INTO public.reviews VALUES (21, 4.7, 'Tôi đã mua nhiều lần và lần nào cũng hài lòng tuyệt đối!', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329118/adam-store/images/r30aolfbrkuzmzisblcm.webp"]', '2025-08-04', '2025-08-04', 8, 4, 17);
INSERT INTO public.reviews VALUES (23, 3.5, 'Giao hàng trễ 1 ngày, nhưng sản phẩm thì không có vấn đề gì.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329184/adam-store/images/kl1t6grojxe02nof3ls5.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329185/adam-store/images/gchiljgl6lazehg506wd.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754329187/adam-store/images/lprdae4bfdyclfxi1urv.webp"]', '2025-08-04', '2025-08-04', 9, 1, 19);
INSERT INTO public.reviews VALUES (25, 3.5, 'Vải ổn, mặc lên vừa nhưng đóng gói chưa kỹ.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643353/adam-store/images/jhofxt8jbrucujkiweci.webp", "http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643354/adam-store/images/tjzwjvqhfwmzz3akn54v.webp"]', '2025-08-08', '2025-08-08', 10, 1, 49);
INSERT INTO public.reviews VALUES (26, 4.2, 'Mặc vừa vặn, màu đẹp, giao hàng nhanh.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643357/adam-store/images/fm7yrrh8samlwi6x92j1.webp"]', '2025-08-08', '2025-08-08', 10, 7, 50);
INSERT INTO public.reviews VALUES (27, 4.5, 'Mặc thoải mái, chất vải mịn, màu chuẩn.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643845/adam-store/images/zpcsf3dj1lzgsaxiynfr.webp"]', '2025-08-08', '2025-08-08', 11, 25, 51);
INSERT INTO public.reviews VALUES (28, 2, 'Chất vải không như mong đợi, giao hàng chậm.', '["http://res.cloudinary.com/dz5wejuuf/image/upload/v1754643843/adam-store/images/qrrt9e0tklxlzwcvuhko.webp"]', '2025-08-08', '2025-08-08', 11, 1, 52);


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
INSERT INTO public.user_has_role VALUES (10, 1, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (10, 2, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (11, 1, 'ACTIVE');
INSERT INTO public.user_has_role VALUES (11, 2, 'ACTIVE');


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addresses_id_seq', 13, true);


--
-- Name: branches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.branches_id_seq', 3, true);


--
-- Name: cart_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_items_id_seq', 18, true);


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carts_id_seq', 11, true);


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

SELECT pg_catalog.setval('public.files_id_seq', 188, true);


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_id_seq', 52, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 36, true);


--
-- Name: payment_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_history_id_seq', 35, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);


--
-- Name: product_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_variants_id_seq', 459, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 29, true);


--
-- Name: promotion_usages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotion_usages_id_seq', 16, true);


--
-- Name: promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotions_id_seq', 7, true);


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.refresh_tokens_id_seq', 36, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_id_seq', 28, true);


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

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- PostgreSQL database dump complete
--

