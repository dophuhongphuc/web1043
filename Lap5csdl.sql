CREATE DATABASE LAB5_QL_BAN_HANG
GO
USE LAB5_QL_BAN_HANG
GO

CREATE TABLE KHACH_HANG(
	Ma_KH CHAR(5) PRIMARY KEY,
	Ho_Va_Ten_Lot_KH NVARCHAR(50),
	Ten_KH NVARCHAR(50),
	Dia_Chi NVARCHAR(100),
	EMAIL CHAR(100),
	Dien_Thoai INT
);
CREATE TABLE SAN_PHAM(
	Ma_SP INT PRIMARY KEY IDENTITY,
	Ten_SP NVARCHAR(100),
	Mo_Ta_SP NVARCHAR(100),
	SL_SP INT CHECK(SL_SP >= 0) ,
	Don_Gia_SP MONEY CHECK (Don_Gia_SP >= 0)
);
CREATE TABLE HOA_DON(
	Ma_HD INT PRIMARY KEY,
	Ngay_Mua_Hang DATE,
	Ma_KH CHAR(5) FOREIGN KEY(Ma_KH) REFERENCES KHACH_HANG(Ma_KH),
	Trang_Thai NVARCHAR(100)
);
CREATE TABLE HOA_DON_CHI_TIET(
	Ma_HDCT int PRIMARY KEY IDENTITY, 
	Ma_HD INT FOREIGN KEY(Ma_HD) REFERENCES HOA_DON(Ma_HD),
	Ma_SP INT FOREIGN KEY(Ma_SP) REFERENCES SAN_PHAM(Ma_SP),
	So_Luong INT,
);

-- ADD dữ liệu cho bảng khách hàng
INSERT INTO KHACH_HANG VALUES('001',N'Nguyễn Văn',N'Nhật',N'Quảng Bình','nhattimo@gmail.com',0857075999);
INSERT INTO KHACH_HANG VALUES('002',N'Nguyễn Thị',N'Hà',N'Quảng Bình','hatimo@gmail.com',0857075999);
INSERT INTO KHACH_HANG VALUES('KH003',N'Nguyễn Thị',N'Hạnh',N'Quảng Bình','nhattimo@gmail.com',0857075999);
INSERT INTO KHACH_HANG VALUES('KH004',N'Hoàng Văn',N'Nhật',N'Quảng Bình','nhattimo@gmail.com',0857075999);
INSERT INTO KHACH_HANG VALUES('KH005',N'Nguyễn Văn',N'Nhật',N'Quảng Bình','nhattimo@gmail.com',0857075999);
INSERT INTO KHACH_HANG VALUES('KH006',N'Nguyễn Văn',N'Nhật',N'Quảng Bình','nhattimo@gmail.com',0857075999);
INSERT INTO KHACH_HANG VALUES('KH007',N'Trần Văn',N'Phúc',N'Quảng Bình','nhattimo@gmail.com',0857075999);
INSERT INTO KHACH_HANG VALUES('KH008',N'Hồ Phương',N'Uyên',N'Quảng Bình','nhattimo@gmail.com',0857075999);
INSERT INTO KHACH_HANG VALUES('KH009',N'Nguyễn Văn',N'Hồng',N'Quảng Bình','nhattimo@gmail.com',0857075999);
INSERT INTO KHACH_HANG VALUES('KH001',N'Nguyễn Thị',N'Hàng',N'Quảng Bình','hatimo@gmail.com',0857075999);
INSERT INTO KHACH_HANG VALUES('KH012',N'Nguyễn Thị',N'Hiếu',N'Quảng Bình','hatimo@gmail.com',0857075999);
INSERT INTO KHACH_HANG VALUES('KH111',N'Nguyễn Văn',N'Hàng',N'Đà Nẵng','hatimo@gmail.com',0857075999);
INSERT INTO KHACH_HANG VALUES('KH112',N'Nguyễn Phúc',N'Hiếu',N'Đà Nẵng','hatimo@gmail.com',0857075999);

-- ADD dữ liệu cho bảng Sản phẩm
INSERT INTO SAN_PHAM VALUES(N'thịt gà',N'vị gà',3,2000);
INSERT INTO SAN_PHAM VALUES(N'Rau',N'Xanh tuoi',150,20000);
INSERT INTO SAN_PHAM VALUES(N'Phô mai',N'ngonk',179,24000);
INSERT INTO SAN_PHAM VALUES(N'thịt nai',N'vị nai',30,20400);
INSERT INTO SAN_PHAM VALUES(N'xờ nách',N'thơm mát',90,23000);
INSERT INTO SAN_PHAM VALUES(N'lăn nách vianphone',N'thơm nhức nách',100,24000);
INSERT INTO SAN_PHAM VALUES(N'dầu ăn',N'siwwu',300,245000);
INSERT INTO SAN_PHAM VALUES(N'bánh mỳ',N'vị socolate',56,23000);
INSERT INTO SAN_PHAM VALUES(N'bánh bao',N'nhân thịt',123,204300);
INSERT INTO SAN_PHAM VALUES(N'kẹo táo',N'vị táo',167,24300);
INSERT INTO SAN_PHAM VALUES(N'súng AK47',N'1 bắn 1 mạng',293,600000);
INSERT INTO SAN_PHAM VALUES(N'đại bác tiki',N'dọn vệ sinh diện rộng',342,834000);

SELECT * FROM SAN_PHAM

-- ADD dữ liệu cho bảng Hóa đơn
INSERT INTO HOA_DON VALUES(1,'01-10-2004','KH006',N'Đã thanh toán');
INSERT INTO HOA_DON VALUES(2,'01-10-2016','KH002',N'Chưa thanh toán');
INSERT INTO HOA_DON VALUES(3,'01-10-2004','KH006',N'Đã thanh toán');
INSERT INTO HOA_DON VALUES(4,'01-12-2004','KH006',N'Chưa thanh toán');
INSERT INTO HOA_DON VALUES(5,'01-10-2004','KH001',N'Đã thanh toán');
INSERT INTO HOA_DON VALUES(6,'01-10-2004','KH003',N'Đã thanh toán');
INSERT INTO HOA_DON VALUES(7,'01-04-2016','KH002',N'Chưa thanh toán');
INSERT INTO HOA_DON VALUES(8,'01-10-2004','KH001',N'Đã thanh toán');
INSERT INTO HOA_DON VALUES(9,'01-10-2004','KH005',N'Đã thanh toán');
INSERT INTO HOA_DON VALUES(10,'01-10-2004','KH001',N'Đã thanh toán');
INSERT INTO HOA_DON VALUES(11,'01-01-2016','KH002',N'Chưa thanh toán');
INSERT INTO HOA_DON VALUES(12,'01-10-2004','KH003',N'Đã thanh toán');
INSERT INTO HOA_DON VALUES(13,'01-10-2004','KH001',N'Chưa thanh toán');
INSERT INTO HOA_DON VALUES(14,'01-10-2004','KH001',N'Đã thanh toán');
INSERT INTO HOA_DON VALUES(15,'01-03-2004','KH006',N'Chưa thanh toán');
INSERT INTO HOA_DON VALUES(16,'2006-12-30','KH006',N'Chưa thanh toán');
INSERT INTO HOA_DON VALUES(17,'2006-10-05','KH003',N'Chưa thanh toán');
INSERT INTO HOA_DON VALUES(18,'2016-10-05','KH003',N'Chưa thanh toán');
SELECT * FROM HOA_DON

-- ADD dữ liệu cho bảng Hóa đơn chi tiết
INSERT INTO HOA_DON_CHI_TIET VALUES('00033',001,1)
INSERT INTO HOA_DON_CHI_TIET VALUES('00433',002,2)
INSERT INTO HOA_DON_CHI_TIET VALUES('00533',003,3)
INSERT INTO HOA_DON_CHI_TIET VALUES('00633',004,4)
INSERT INTO HOA_DON_CHI_TIET VALUES('00733',005,5)
INSERT INTO HOA_DON_CHI_TIET VALUES('00833',006,6)
INSERT INTO HOA_DON_CHI_TIET VALUES('00933',007,7)
INSERT INTO HOA_DON_CHI_TIET VALUES('00103',008,8)
INSERT INTO HOA_DON_CHI_TIET VALUES('00503',009,9)
INSERT INTO HOA_DON_CHI_TIET VALUES('00343',010,10)
INSERT INTO HOA_DON_CHI_TIET VALUES('00563',011,11)
INSERT INTO HOA_DON_CHI_TIET VALUES('00373',001,12)
INSERT INTO HOA_DON_CHI_TIET VALUES('00373',001,12)
INSERT INTO HOA_DON_CHI_TIET VALUES(2,12,100)
SELECT * FROM HOA_DON_CHI_TIET


------------- BÀI 1 -------------------

--a. Hiển thị tất cả thông tin có trong bảng khách hàng bao gồm tất cả các cột
SELECT * FROM KHACH_HANG

--b. Hiển thị 10 khách hàng đầu tiên trong bảng khách hàng 
--bao gồm các cột: mã khách hàng, họ và tên, email, số điện thoại
SELECT TOP 10 Ma_KH AS 'Mã khách hàng',
Ho_Va_Ten_Lot_KH +' '+ Ten_KH AS 'Họ và Tên',
EMAIL AS 'Email', Dien_Thoai AS 'Số điện thoại' 
FROM KHACH_HANG

--c. Hiển thị thông tin từ bảng Sản phẩm gồm các cột: 
--mã sản phẩm, tên sản phẩm, tổng tiền tồn kho. 
--Với tổng tiền tồn kho = đơn giá* số lượng
SELECT Ma_SP AS 'Mã sản phẩm',
Ten_SP AS 'Tên sản phẩm',
Don_Gia_SP * SL_SP AS 'Tổng tiền tồn kho' 
FROM SAN_PHAM;

--d. Hiển thị danh sách khách hàng có tên bắt đầu bởi kí tự ‘H’ gồm các cột: 
-- maKhachHang, hoVaTen, diaChi. 
-- Trong đó cột hoVaTen ghép từ 2 cột hoVaTenLot và Ten
SELECT Ma_KH AS 'Mã khách hàng',
Ho_Va_Ten_Lot_KH+' '+Ten_KH AS 'Họ và Tên',
Dia_Chi AS 'Địa chỉ' 
FROM KHACH_HANG
WHERE Ten_KH LIKE '[H]%';

--e. Hiển thị tất cả thông tin các cột của khách hàng có địa chỉ chứa chuỗi ‘Đà Nẵng’
SELECT * FROM KHACH_HANG 
WHERE Dia_Chi = N'Đà Nẵng'

--f. Hiển thị các sản phẩm có số lượng nằm trong khoảng từ 100 đến 500.
SELECT * FROM SAN_PHAM
WHERE SL_SP >=100 AND SL_SP <=500

-- g. Hiển thị danh sách các hoá hơn có trạng thái là chưa thanh toán 
-- và ngày mua hàng trong năm 2016
SELECT * FROM HOA_DON
WHERE Trang_Thai  = N'Chưa thanh toán' AND Ngay_Mua_Hang >= '01-01-2016' AND Ngay_Mua_Hang <= '30-12-2016';

-- h. Hiển thị các hoá đơn có mã Khách hàng thuộc 1 trong 3 mã sau: KH001, KH003, KH006

SELECT * FROM HOA_DON 
WHERE Ma_KH = 'KH001' or Ma_KH ='KH003' OR Ma_KH = 'KH006';


------------- BÀI 2 -------------------

--a. Hiển thị số lượng khách hàng có trong bảng khách hàng
SELECT COUNT(Ma_KH) AS 'Số lượng khách hàng' FROM KHACH_HANG

--b. Hiển thị đơn giá lớn nhất trong bảng SanPham
SELECT MAX(Don_Gia_SP) AS 'Giá lớn nhất' FROM SAN_PHAM

--c. Hiển thị số lượng sản phẩm thấp nhất trong bảng sản phẩm
SELECT MIN(Don_Gia_SP) AS 'Giá lớn nhất' FROM SAN_PHAM

--d. Hiển thị tổng tất cả số lượng sản phẩm có trong bảng sản phẩm
SELECT sum(SL_SP) AS 'Tổng SL sản phẩm ' FROM SAN_PHAM

--e. Hiển thị số hoá đơn đã xuất trong tháng 10/2016 mà có trạng thái chưa thanh toán
SELECT COUNT(Ma_HD) FROM HOA_DON
WHERE Ngay_Mua_Hang >= '2016-10-01' AND Ngay_Mua_Hang <= '2016-10-29'

--g. Hiển thị mã hoá đơn và số loại sản phẩm được mua trong từng hoá đơn. Yêu cầu 
--chỉ hiển thị hàng nào có số loại sản phẩm được mua >=5.
SELECT Ma_HD AS 'Mã hóa đơn',SL_SP AS 'Số lượng sản phẩm' FROM HOA_DON,SAN_PHAM
--GROUP BY


--h. Hiển thị thông tin bảng HoaDon gồm các cột maHoaDon, ngayMuaHang, 
-- maKhachHang. Sắp xếp theo thứ tự giảm dần của ngayMuaHang
SELECT Ma_HD AS 'Mã hóa đơn', Ngay_Mua_Hang AS 'Ngày mua hàng', Ma_KH AS 'Mã khách hàng' FROM HOA_DON
ORDER BY Ngay_Mua_Hang DESC