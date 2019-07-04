USE PartTimeJob
GO

DBCC CHECKIDENT('dbo.BONUS_TIME',RESEED,1);
DBCC CHECKIDENT('dbo.JOB',RESEED,1);
DBCC CHECKIDENT('dbo.JOB_CATEGORY',RESEED,1);
DBCC CHECKIDENT('dbo.JOB_RECUMENT',RESEED,1);
DBCC CHECKIDENT('dbo.JOB_WAGE_BILL',RESEED,1);
DBCC CHECKIDENT('dbo.PROFILE',RESEED,1);
DBCC CHECKIDENT('dbo.PROVINCE',RESEED,1);
DBCC CHECKIDENT('dbo.REFERRAL_WAGE_BILL',RESEED,1);
DBCC CHECKIDENT('dbo.ROLE',RESEED,1);
DBCC CHECKIDENT('dbo.SHIFT_WORK_SCHEDULE',RESEED,1);
DBCC CHECKIDENT('dbo.TOWN',RESEED,1);
DBCC CHECKIDENT('dbo.USER',RESEED,1);
DBCC CHECKIDENT('dbo.USERPAYCARDS',RESEED,1);
DBCC CHECKIDENT('dbo.WORK_TIME',RESEED,1);

INSERT INTO [ROLE] VALUES(N'Quản trị viên');
INSERT INTO [ROLE] VALUES(N'Nhà tuyển dụng');
INSERT INTO [ROLE] VALUES(N'Người tìm việc');

-- Cac  tinh thanh 
INSERT INTO [PROVINCE] VALUES(N'Hồ Chí Minh'); -- ID:1
INSERT INTO [PROVINCE] VALUES(N'Bình Dương'); -- ID:2
INSERT INTO [PROVINCE] VALUES(N'Đà Nẵng'); -- ID:3
INSERT INTO [PROVINCE] VALUES(N'Huế'); -- ID:4
INSERT INTO [PROVINCE] VALUES(N'Hà Nội'); -- ID:5
INSERT INTO [PROVINCE] VALUES(N'Hải Phòng'); -- ID:6

-- Cac thi tran thuoc ve cac tinh thanh
INSERT INTO [TOWN] VALUES(1,N'Quận 1'); -- ID :1 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận 2'); -- ID :2 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận 3'); -- ID :3 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận 4'); -- ID :4 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận 5'); -- ID :5 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận 6'); -- ID :6 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận 7'); -- ID :7 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận 8'); -- ID :8 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận 9'); -- ID :9 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận 10'); -- ID :10 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận 11'); -- ID :11 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận 12'); -- ID :12 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận Bình Tân'); -- ID :13 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận Tân Bình'); -- ID :14 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận Bình Thạnh'); -- ID :15 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Quận Gò Vấp'); -- ID :16 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Huyện Củ Chi'); -- ID :17 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Thị Trấn Hóc Môn'); -- ID :18 -- Tinh thanh  Ho Chi Minh
INSERT INTO [TOWN] VALUES(1,N'Huyện Bình Chánh'); -- ID :19 -- Tinh thanh  Ho Chi Minh

INSERT INTO [TOWN] VALUES(2,N'Quận Tân Kỳ'); -- ID :20 -- Tinh thanh Bình Dương

INSERT INTO [TOWN] VALUES(3,N'Quận Ngũ Hành'); -- ID :21 -- Tinh thanh Đà Nẵng
INSERT INTO [TOWN] VALUES(3,N'Quận Tam Kỳ'); -- ID :22 -- Tinh thanh Đà Nẵng

INSERT INTO [TOWN] VALUES(4,N'Quận Thừa Thiên'); -- ID :23 -- Tinh thanh Huế
INSERT INTO [TOWN] VALUES(4,N'Quận Kỳ Đồng'); -- ID :24 -- Tinh thanh Huế

INSERT INTO [TOWN] VALUES(5,N'Quận Hoàn Kiếm'); -- ID :25 -- Tinh thanh Hà Nội
INSERT INTO [TOWN] VALUES(5,N'Quận Đông Xuân'); -- ID :26 -- Tinh thanh Hà Nội

INSERT INTO [TOWN] VALUES(6,N'Quận Chiến Đấu'); -- ID :27 -- Tinh thanh Hải Phòng
INSERT INTO [TOWN] VALUES(6,N'Quận Lạch Chay'); -- ID :28 -- Tinh thanh Hải Phòng

-- Các loại thẻ có thể dùng thanh toán cho hệ thống
INSERT INTO [TYPEPAYCARD] VALUES(N'Thẻ ATM Online'); -- ID:1
INSERT INTO [TYPEPAYCARD] VALUES(N'Thẻ E-Banking'); -- ID:2
INSERT INTO [TYPEPAYCARD] VALUES(N'Thẻ Paypal');-- ID:3
INSERT INTO [TYPEPAYCARD] VALUES(N'Thẻ Visa Mastercard');-- ID:4

-- Cac tai khoan quan tri vien
INSERT INTO [USER] VALUES('quantri1','test123456',1,1,'21/04/2019','quantri1','quantri1',NULL); -- ID:1
INSERT INTO [PROFILE] VALUES(N'Quản Trị',N'Tèo',012345678912,'25/01/1998','male','quantri1@gmail.com',0908464698,1,N'123A Đường 3C',NULL,'Quản trị viên hệ thống');

INSERT INTO [USER] VALUES('quantri2','test123456',1,1,'24/04/2019','quantri2','quantri2',NULL); -- ID:2
INSERT INTO [PROFILE] VALUES(N'Quản Trị',N'Khang',012345141912,'25/01/1998','female','quantri2@gmail.com',0908464698,2,N'199 Tỉnh Lộ 8',NULL,'Quản trị viên hệ thống');

INSERT INTO [USER] VALUES('quantri3','test123456',1,1,'11/04/2019','quantri3','quantri3',NULL); -- ID:3
INSERT INTO [PROFILE] VALUES(N'Quản Trị',N'Thạch',015155678912,'25/01/1998','female','quantri3@gmail.com',0908464698,3,N'20/5/1/1 Đường An Cúc',NULL,'Quản trị viên hệ thống');

INSERT INTO [USER] VALUES('quantri4','test123456',1,1,'21/04/2019','quantri4','quantri4',NULL); -- ID:4
INSERT INTO [PROFILE] VALUES(N'Quản Trị',N'Tuấn',015167678912,'25/01/1998','male','quantri4@gmail.com',0908464698,4,N'123A Đường 3C',NULL,'Quản trị viên hệ thống');

-- Cac tai khoan nha tuyen dung
INSERT INTO [USER] VALUES('tuyendung1','test123456',1,2,'21/04/2019','tuyendung1','tuyendung1',NULL); -- ID:5
INSERT INTO [PROFILE] VALUES(N'Tuyển Dụng',N'Tuấn',165979856321,'25/01/1998','male','tuyendung1@gmail.com',0908464698,11,N'292 Cầu Muối',NULL,'Nhà tuyển dụng việc làm');

INSERT INTO [USER] VALUES('tuyendung2','test123456',1,2,'21/04/2019','tuyendung2','tuyendung2',NULL); -- ID:6
INSERT INTO [PROFILE] VALUES(N'Tuyển Dụng',N'Khang',165979856321,'25/01/1998','male','tuyendung2@gmail.com',0908464698,11,N'292 Cầu Muối',NULL,'Nhà tuyển dụng việc làm');

INSERT INTO [USER] VALUES('tuyendung3','test123456',1,2,'26/03/2019','tuyendung3','tuyendung3',NULL); -- ID:7
INSERT INTO [PROFILE] VALUES(N'Tuyển Dụng',N'Kha',165979856321,'25/01/1998','male','tuyendung3@gmail.com',0908464698,7,N'2222 Cầu Chùa',NULL,'Nhà tuyển dụng việc làm');

INSERT INTO [USER] VALUES('tuyendung4','test123456',1,2,'31/03/2019','tuyendung4','tuyendung4',NULL); -- ID:8
INSERT INTO [PROFILE] VALUES(N'Tuyển Dụng',N'Hân',165979856321,'25/01/1998','female','tuyendung4@gmail.com',0908464698,6,N'516 Cầu Kiệu',NULL,'Nhà tuyển dụng việc làm');

INSERT INTO [USER] VALUES('tuyendung5','test123456',1,2,'21/04/2019','tuyendung5','tuyendung5',NULL); -- ID:9
INSERT INTO [PROFILE] VALUES(N'Tuyển Dụng',N'Nhã',165979856321,'25/01/1998','female','tuyendung5@gmail.com',0908464698,11,N'292 Cầu Muối',NULL,'Nhà tuyển dụng việc làm');

INSERT INTO [USER] VALUES('tuyendung6','test123456',1,2,'11/05/2019','tuyendung6','tuyendung6',NULL); -- ID:10
INSERT INTO [PROFILE] VALUES(N'Tuyển Dụng',N'Dung',165974141321,'25/01/1998','female','tuyendung6@gmail.com',0908464698,13,N'31 Cầu Chà Và',NULL,'Nhà tuyển dụng việc làm');

INSERT INTO [USER] VALUES('tuyendung7','test123456',1,2,'13/04/2019','tuyendung7','tuyendung7',NULL); -- ID:11
INSERT INTO [PROFILE] VALUES(N'Tuyển Dụng',N'Tuấn',165979856321,'25/01/1998','male','tuyendung7@gmail.com',0908464698,20,N'78 Cầu Sài Gòn',NULL,'Nhà tuyển dụng việc làm');

-- CÁC TÀI KHOẢN CỦA NGƯỜI TÌM VIỆC

INSERT INTO [USER] VALUES('timviec1','test123456',1,3,'13/04/2019','timviec1','timviec1',NULL); -- ID:12
INSERT INTO [PROFILE] VALUES(N'Tìm Việc',N'Tuấn',165979856321,'12/03/1997','male','timviec1@gmail.com',0908464698,20,N'78 An Thạnh',NULL,'Người tìm kiếm việc làm');

INSERT INTO [USER] VALUES('timviec2','test123456',1,3,'19/01/2019','timviec2','timviec2',NULL);-- ID:13
INSERT INTO [PROFILE] VALUES(N'Tìm Việc',N'Đạt',165979856321,'12/03/1997','male','timviec2@gmail.com',0908464698,20,N'278 An Thạnh',NULL,'Người tìm kiếm việc làm');

INSERT INTO [USER] VALUES('timviec3','test123456',1,3,'13/08/2019','timviec3','timviec3',NULL);-- ID:14
INSERT INTO [PROFILE] VALUES(N'Tìm Việc',N'Mẫn',165979856321,'12/03/1997','female','timviec3@gmail.com',0908464698,20,N'151 An Phú',NULL,'Người tìm kiếm việc làm');

INSERT INTO [USER] VALUES('timviec4','test123456',1,3,'21/11/2019','timviec4','timviec4',NULL);-- ID:15
INSERT INTO [PROFILE] VALUES(N'Tìm Việc',N'Nhi',165979856321,'12/03/1997','female','timviec4@gmail.com',0908464698,20,N'11 Hòa Hiệp',NULL,'Người tìm kiếm việc làm');

INSERT INTO [USER] VALUES('timviec5','test123456',1,3,'03/12/2019','timviec5','timviec5',NULL);-- ID:16
INSERT INTO [PROFILE] VALUES(N'Tìm Việc',N'Triều',165979856321,'12/03/1997','male','timviec5@gmail.com',0908464698,20,N'578 Tỉnh Lộ 10',NULL,'Người tìm kiếm việc làm');

INSERT INTO [USER] VALUES('timviec6','test123456',1,3,'13/04/2019','timviec6','timviec6',NULL); -- ID:17
INSERT INTO [PROFILE] VALUES(N'Tìm Việc',N'Đại',165979856321,'12/03/1997','male','timviec6@gmail.com',0908464698,20,N'728 An Thạnh',NULL,'Người tìm kiếm việc làm');


-- Danh sách thẻ của người tìm việc ID : 12
INSERT INTO [USERPAYCARDS] VALUES('ATM02010322',12,1,0);
INSERT INTO [USERPAYCARDS] VALUES('EBANK0441031',12,2,0);
INSERT INTO [USERPAYCARDS] VALUES('PAYPAL0241933',12,3,1); -- The nay dang la hinh thuc dang su dung

-- Danh sách thẻ của người tìm việc ID : 13
INSERT INTO [USERPAYCARDS] VALUES('ATM02011234',13,1,0);
INSERT INTO [USERPAYCARDS] VALUES('PAYPAL0241234',13,3,1); -- The nay dang la hinh thuc dang su dung

-- Danh sách thẻ của nhà tuyển dụng ID : 5
INSERT INTO [USERPAYCARDS] VALUES('ATM02011235',5,1,0);
INSERT INTO [USERPAYCARDS] VALUES('PAYPAL0241235',5,3,1); -- The nay dang la hinh thuc dang su dung

-- Danh sách thẻ của nhà tuyển dụng ID : 6
INSERT INTO [USERPAYCARDS] VALUES('EBANK0441239',6,2,0);
INSERT INTO [USERPAYCARDS] VALUES('PAYPAL0241239',6,1,1); -- The nay dang la hinh thuc dang su dung

-- Danh sách thẻ của nhà tuyển dụng ID : 7
INSERT INTO [USERPAYCARDS] VALUES('EBANK0441241',7,2,0);
INSERT INTO [USERPAYCARDS] VALUES('PAYPAL0241241',7,1,1); -- The nay dang la hinh thuc dang su dung
-- Danh sách thẻ của nhà tuyển dụng ID : 8
INSERT INTO [USERPAYCARDS] VALUES('EBANK0441243',8,2,0);
INSERT INTO [USERPAYCARDS] VALUES('PAYPAL0241243',8,1,1); -- The nay dang la hinh thuc dang su dung
-- Danh sách thẻ của nhà tuyển dụng ID : 9
INSERT INTO [USERPAYCARDS] VALUES('EBANK0441244',9,2,0);
INSERT INTO [USERPAYCARDS] VALUES('PAYPAL0241244',9,1,1); -- The nay dang la hinh thuc dang su dung
-- Danh sách thẻ của thằng tìm việc  ID : 17
INSERT INTO [USERPAYCARDS] VALUES('EBANK0446547',17,2,0);
INSERT INTO [USERPAYCARDS] VALUES('PAYPAL0246547',17,1,1); -- The nay dang la hinh thuc dang su dung

-- CÁC MÓC THỜI GIAN TĂNG CA 
INSERT INTO[BONUS_TIME] VALUES (19,21); -- ID:1
INSERT INTO[BONUS_TIME] VALUES (19,22); -- ID:2
INSERT INTO[BONUS_TIME] VALUES (19,23); -- ID:3
INSERT INTO[BONUS_TIME] VALUES (19,24); -- ID:4
INSERT INTO[BONUS_TIME] VALUES (20,22); -- ID:5
INSERT INTO[BONUS_TIME] VALUES (20,23); -- ID:6
INSERT INTO[BONUS_TIME] VALUES (20,24); -- ID:7
INSERT INTO[BONUS_TIME] VALUES (21,24); -- ID:8

-- CÁC MỐC THỜI GIAN LÀM VIỆC TRONG 1 NGÀY
-- KHÔNG CÓ TĂNG CA:
INSERT INTO[WORK_TIME] VALUES (8,17,NULL,NULL); -- ID:1 TỪ 8H ĐẾN 17H 
INSERT INTO[WORK_TIME] VALUES (6,12,NULL,NULL); -- ID:2 TỪ 6H ĐẾN 12H
INSERT INTO[WORK_TIME] VALUES (12,18,NULL,NULL);-- ID:3 TỪ 12H ĐẾN 18H
INSERT INTO[WORK_TIME] VALUES (18,24,NULL,NULL);-- ID:4 TỪ 18H ĐẾN 24H
INSERT INTO[WORK_TIME] VALUES (24,6,NULL,NULL);-- ID:5 TỪ 24H ĐẾN 6H 
-- TĂNG 1 CA :
INSERT INTO[WORK_TIME] VALUES (8,17,1,NULL); -- ID:6 TỪ 8H ĐẾN 17H TĂNG THÊM 1 CA 19H TỚI 21H (ID:1)
INSERT INTO[WORK_TIME] VALUES (8,17,2,NULL); -- ID:7 TỪ 8H ĐẾN 17H TĂNG THÊM 1 CA 19H TỚI 22H (ID:2)
INSERT INTO[WORK_TIME] VALUES (8,17,3,NULL); -- ID:8 TỪ 8H ĐẾN 17H TĂNG THÊM 1 CA 19H TỚI 23H (ID:3)
INSERT INTO[WORK_TIME] VALUES (12,18,1,NULL); -- ID:9 TỪ 12H ĐẾN 18H TĂNG THÊM 1 CA 19H TỚI 21H (ID:1)
-- TĂNG 2 CA :
INSERT INTO[WORK_TIME] VALUES (12,18,1,8); -- ID:9 TỪ 8H ĐẾN 17H TĂNG THÊM 1 CA 19H TỚI 21H (ID:1) RỒI TỪ 21H TĂNG THÊM CA TỚI 24H(ID:8)


-- CÁC MỐC THỜI GIAN LÀM VIỆC CÁC NGÀY TRONG TUẦN
-- SHIFT CHO CÔNG VIỆC NGÀY NÀO CŨNG 8H - 17H :
INSERT INTO[SHIFT_WORK_SCHEDULE] VALUES (1,1,1,1,1,1,NULL); -- ID:1

-- SHIFT CHO CÔNG VIỆC NGÀY NÀO CŨNG 8H - 17H , RIÊNG THỨ 2 THỨ 4 THỨ 6 TĂNG CA TỪ 19H-21H :
INSERT INTO[SHIFT_WORK_SCHEDULE] VALUES (6,1,6,1,6,1,NULL); -- ID:2

-- SHIFT CHO CÔNG VIỆC PARTIME TÙY CHỌN (T2-T4-T6 TỪ 6H-12H , T7-CN TỪ 12H-18H) :
INSERT INTO[SHIFT_WORK_SCHEDULE] VALUES (2,1,2,1,6,3,3); -- ID:3


-- DANH MỤC CÔNG VIỆC
INSERT INTO [JOB_CATEGORY] VALUES(N'Công Nghệ Thông Tin'); -- ID:1
INSERT INTO [JOB_CATEGORY] VALUES(N'Ẩm Thực'); -- ID:2
INSERT INTO [JOB_CATEGORY] VALUES(N'Phục Vụ'); -- ID:3
INSERT INTO [JOB_CATEGORY] VALUES(N'Quản Lý'); -- ID:4
INSERT INTO [JOB_CATEGORY] VALUES(N'Bán Hàng'); -- ID:5

-- DANH SÁCH CÔNG VIỆC CỦA CÔNG NGHỆ THÔNG TIN
INSERT INTO [JOB] VALUES(1,'CNTT001',N'Lập Trình Web C#',1250,1550,1,N'Có kinh nghiệm thực tế lĩnh vực trên 2 năm , trình độ Senior C# Web FullStack',N'Làm việc từ 8h sáng đến 5h chiều , nghĩ trưa từ 11h30 đến 1h , không Overtime .',1); -- ID:1
INSERT INTO [JOB] VALUES(1,'CNTT002',N'Lập Trình Web Java',1400,1900,1,N'Có kinh nghiệm thực tế lĩnh vực trên 2 năm , trình độ Senior C# Web FullStack',N'Làm việc từ 8h sáng đến 5h chiều , nghĩ trưa từ 11h30 đến 1h , không Overtime .',1); -- ID:2
INSERT INTO [JOB] VALUES(1,'CNTT003',N'Lập Trình Ứng Dụng C#',2100,2500,1,N'Có kinh nghiệm thực tế lĩnh vực trên 2 năm , trình độ Senior C# Web FullStack',N'Làm việc từ 8h sáng đến 5h chiều , nghĩ trưa từ 11h30 đến 1h , Overtime thứ 2-4-6  từ 19h đến 21h .',2); -- ID:3
INSERT INTO [JOB] VALUES(1,'CNTT004',N'Lập Trình Ứng Dụng Java',1100,1500,1,N'Có kinh nghiệm thực tế lĩnh vực trên 2 năm , trình độ Senior C# Web FullStack',N'Làm việc từ 8h sáng đến 5h chiều , nghĩ trưa từ 11h30 đến 1h , không Overtime .',1); -- ID:4
-- DANH SÁCH CÔNG VIỆC CỦA PHỤC VỤ
INSERT INTO [JOB] VALUES(3,'PV001',N'Phục Vụ Quán Ăn Gia Đình',300,350,1,N'Chăm chỉ , siêng năng, trung thực, trình độ phổ thông ',N'Làm việc từ 8h sáng đến 5h chiều , nghĩ trưa từ 11h30 đến 1h .',1); -- ID:5
INSERT INTO [JOB] VALUES(3,'PV002',N'Phục Vụ Quán Karaoke',300,350,1,N'Chăm chỉ , siêng năng, trung thực, trình độ phổ thông ',N'Làm việc từ 8h sáng đến 5h chiều , nghĩ trưa từ 11h30 đến 1h .',1); -- ID:6
INSERT INTO [JOB] VALUES(3,'PV003',N'Phục Vụ Quán Nhậu Gala',300,350,1,N'Chăm chỉ , siêng năng, trung thực, trình độ phổ thông ',N'Làm việc từ 8h sáng đến 5h chiều , nghĩ trưa từ 11h30 đến 1h .',1); -- ID:7

-- TIN TUYỂN DỤNG CỦA TUYỂN TRẠCH VIÊN ID:5 TUYỂN 15 NGƯỜI JOB 1 CÔNG NGHỆ THÔNG TIN
INSERT INTO [JOB_RECUMENT] VALUES(5,15,1,'21/07/2019',7,'04/07/2019','19/07/2019',1,1); -- ID:1 (ĐÃ DUYỆT,ĐÃ THANH TOÁN ĐỂ HIỆN RA)
-- TIN TUYỂN DỤNG CỦA TUYỂN TRẠCH VIÊN ID:5 TUYỂN 10 NGƯỜI JOB 2 CÔNG NGHỆ THÔNG TIN
INSERT INTO [JOB_RECUMENT] VALUES(5,10,2,'21/07/2019',7,'04/07/2019','19/07/2019',1,3); -- ID:2 (ĐÃ DUYỆT,ĐÃ THANH TOÁN ĐỂ HIỆN RA)

-- TIN TUYỂN DỤNG CỦA TUYỂN TRẠCH VIÊN ID:6 TUYỂN 7 NGƯỜI JOB 3 CÔNG NGHỆ THÔNG TIN
INSERT INTO [JOB_RECUMENT] VALUES(6,7,3,'27/07/2019',5,'15/06/2019','15/07/2019',2,2); -- ID:3 (ĐÃ DUYỆT,ĐÃ THANH TOÁN ĐỂ HIỆN RA)
-- TIN TUYỂN DỤNG CỦA TUYỂN TRẠCH VIÊN ID:6 TUYỂN 5 NGƯỜI JOB 4 CÔNG NGHỆ THÔNG TIN
INSERT INTO [JOB_RECUMENT] VALUES(6,5,4,'27/07/2019',5,'15/06/2019','15/07/2019',2,1); -- ID:4 (CHỜ DUYỆT)

-- TIN TUYỂN DỤNG CỦA TUYỂN TRẠCH VIÊN ID:7 TUYỂN 25 NGƯỜI JOB 5 NGÀNH PHỤC VỤ
INSERT INTO [JOB_RECUMENT] VALUES(7,25,5,'27/07/2019',12,'15/06/2019','15/07/2019',2,2); -- ID:5 (ĐÃ DUYỆT,ĐÃ THANH TOÁN ĐỂ HIỆN RA)
-- TIN TUYỂN DỤNG CỦA TUYỂN TRẠCH VIÊN ID:8 TUYỂN 30 NGƯỜI JOB 6 NGÀNH PHỤC VỤ
INSERT INTO [JOB_RECUMENT] VALUES(8,30,6,'27/07/2019',12,'15/06/2019','15/07/2019',2,2); -- ID:6 (ĐÃ DUYỆT,ĐÃ THANH TOÁN ĐỂ HIỆN RA)
-- TIN TUYỂN DỤNG CỦA TUYỂN TRẠCH VIÊN ID:9 TUYỂN 10 NGƯỜI JOB 7 NGÀNH PHỤC VỤ
INSERT INTO [JOB_RECUMENT] VALUES(9,10,6,'27/07/2019',12,'15/06/2019','15/07/2019',2,2); -- ID:7 (ĐÃ DUYỆT,ĐÃ THANH TOÁN ĐỂ HIỆN RA)


-- DANH SÁCH ỨNG TUYỂN
-- JOB 1 CONG NGHE THONG TIN , NGƯỜI ỨNG TUYỂN ID:12
INSERT INTO [JOB_RECUMENT_PROCESSING] VALUES(1,12,'15/07/2019',0,1,0); --  NGƯỜI NÀY CHƯA ĐƯỢC DUYỆT
-- JOB 2 CONG NGHE THONG TIN , NGƯỜI ỨNG TUYỂN ID:12
INSERT INTO [JOB_RECUMENT_PROCESSING] VALUES(2,12,'15/07/2019',0,1,0); -- NGƯỜI NÀY CHƯA ĐƯỢC DUYỆT
-- JOB 3 CONG NGHE THONG TIN , NGƯỜI ỨNG TUYỂN ID:12
INSERT INTO [JOB_RECUMENT_PROCESSING] VALUES(3,12,'15/07/2019',0,1,0); --  NGƯỜI NÀY CHƯA ĐƯỢC DUYỆT

-- JOB 1 CONG NGHE THONG TIN , NGƯỜI ỨNG TUYỂN ID:13
INSERT INTO [JOB_RECUMENT_PROCESSING] VALUES(1,13,'14/07/2019',1,2,1); -- NGƯỜI NÀY ĐƯỢC DUYỆT

-- JOB 3 CONG NGHE THONG TIN , NGƯỜI ỨNG TUYỂN ID:14
INSERT INTO [JOB_RECUMENT_PROCESSING] VALUES(3,14,'13/07/2019',0,1,0); -- NGƯỜI NÀY CHƯA ĐƯỢC DUYỆT

-- JOB 5 NGÀNH PHỤC VỤ , NGƯỜI ỨNG TUYỂN ID:15
INSERT INTO [JOB_RECUMENT_PROCESSING] VALUES(5,15,'11/07/2019',0,1,0); -- NGƯỜI NÀY CHƯA ĐƯỢC DUYỆT

-- JOB 5 NGÀNH PHỤC VỤ , NGƯỜI ỨNG TUYỂN ID:16
INSERT INTO [JOB_RECUMENT_PROCESSING] VALUES(5,16,'22/06/2019',0,1,0); -- NGƯỜI NÀY CHƯA ĐƯỢC DUYỆT

-- JOB 5 NGÀNH PHỤC VỤ , NGƯỜI ỨNG TUYỂN ID:17
INSERT INTO [JOB_RECUMENT_PROCESSING] VALUES(5,17,'13/07/2019',0,1,0); -- NGƯỜI NÀY CHƯA ĐƯỢC DUYỆT

-- JOB 6 NGÀNH PHỤC VỤ , NGƯỜI ỨNG TUYỂN ID:15
INSERT INTO [JOB_RECUMENT_PROCESSING] VALUES(6,15,'23/06/2019',1,2,1); -- NGƯỜI NÀY ĐƯỢC DUYỆT

-- JOB 7 NGÀNH PHỤC VỤ , NGƯỜI ỨNG TUYỂN ID:17
INSERT INTO [JOB_RECUMENT_PROCESSING] VALUES(7,17,'24/06/2019',1,3,2); -- NGƯỜI NÀY ĐƯỢC DUYỆT , VÀ SET HOÀN THÀNH LUÔN ĐỂ THANH TOÁN , FEEDBACK LUÔN

-- BẢNG CHI PHÍ THANH TOÁN HOA HỒNG
INSERT INTO[REFERRAL_WAGE_BILL] VALUES(2,1,'06/07/2019','PAYPAL0241235');
INSERT INTO[REFERRAL_WAGE_BILL] VALUES(2,1,'06/07/2019','PAYPAL0241235');
INSERT INTO[REFERRAL_WAGE_BILL] VALUES(3,2,'06/07/2019','PAYPAL0241239');
INSERT INTO[REFERRAL_WAGE_BILL] VALUES(5,2,'17/06/2019','PAYPAL0241241');
INSERT INTO[REFERRAL_WAGE_BILL] VALUES(6,2,'18/06/2019','PAYPAL0241243');
INSERT INTO[REFERRAL_WAGE_BILL] VALUES(7,2,'19/06/2019','PAYPAL0241244');

-- BẢNG CHI PHÍ THANH TOÁN HOÀN THÀNH CÔNG VIỆC
-- NHÀ TUYỂN DỤNG ID:9 TRẢ LƯƠNG CHO BẠN ID:17 LÀM PHỤC VỤ TRONG TIN TUYỂN DỤNG ID:7 , LƯƠNG LA 300 X 12 THÁNG = 3600
INSERT INTO[JOB_WAGE_BILL] VALUES(7,17,9,3600,'PAYPAL0246547','PAYPAL0241244');

-- FEEDBACK CỦA NHÀ TUYỂN DỤNG CHO NGƯỜI TÌM VIỆC KHI ĐÃ LÀM XONG CÔNG VIỆC 
INSERT INTO[FEED_BACKLIST] VALUES(7,9,17,4,N'Cậu này làm việc TẠM ỔN, nhiệt tình, hứa hẹn sẽ tìm đến khi có nhu cầu mới');
-- FEEDBACK CỦA NGƯỜI TÌM VIỆC VỀ NHÀ TUYỂN DỤNG 
INSERT INTO[FEED_BACKLIST] VALUES(7,17,9,0,N'Công việc không giống lắm với tin đăng nhưng có thể chấp nhận được, làm xong đã nhận lương đầy đủ , ok !');
