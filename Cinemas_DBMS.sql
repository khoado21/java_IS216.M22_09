
--------------------------------------------------------
--  File created - Sunday-June-28-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BAOCAO
--------------------------------------------------------

  CREATE TABLE "BAOCAO" 
   (	"MABC" NVARCHAR2(10), 
	"MANV" NVARCHAR2(10), 
	"NGAYLAP" DATE, 
	"TUNGAY" DATE, 
	"DENNGAY" DATE, 
	"TONGDOANHTHU" NUMBER(30,0), 
	"GHICHU" NVARCHAR2(50)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CTHD
--------------------------------------------------------

  CREATE TABLE "CTHD" 
   (	"MASP" NVARCHAR2(10), 
	"SOHD" NUMBER, 
	"THANHTIEN" NUMBER(30,0), 
	"SOLUONG" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DATVE
--------------------------------------------------------

  CREATE TABLE "DATVE" 
   (	"MAGHE" NVARCHAR2(10), 
	"MASC" NVARCHAR2(10), 
	"SOHD" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GHE
--------------------------------------------------------

  CREATE TABLE "GHE" 
   (	"MAGHE" NVARCHAR2(10), 
	"MARAP" NVARCHAR2(10), 
	"VITRI" NVARCHAR2(5), 
	"LOAIGHE" NVARCHAR2(20), 
	"GIA" NUMBER(30,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOADON
--------------------------------------------------------
--drop table "HOADON" ;
  CREATE TABLE "HOADON" 
   (	"SOHD" NUMBER,
	"MANV" NVARCHAR2(10), 
	"MATV" NVARCHAR2(10), 
	"NGAYHD" DATE, 
	"TONGTIEN" NUMBER(30,0), 
	"MAKM" NVARCHAR2(20), 
	"DTL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KHUYENMAI
--------------------------------------------------------

  CREATE TABLE "KHUYENMAI" 
   (	"MAKM" NVARCHAR2(10), 
	"TENKM" NVARCHAR2(50), 
	"TYLEKM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOAIPHIM
--------------------------------------------------------

  CREATE TABLE "LOAIPHIM" 
   (	"MALP" NVARCHAR2(10), 
	"TENLP" NVARCHAR2(10), 
	"HINHTHUC" NVARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NHANVIEN
--------------------------------------------------------

  CREATE TABLE "NHANVIEN" 
   (	"MANV" NVARCHAR2(10), 
	"MANQL" NVARCHAR2(50), 
	"MATK" NVARCHAR2(10), 
	"HOTENNV" NVARCHAR2(30), 
	"GIOITINH" NVARCHAR2(3), 
	"NGAYSINH" DATE, 
	"DIACHI" NVARCHAR2(50), 
	"SDT" NVARCHAR2(12), 
	"LUONG" NUMBER(30,0), 
	"NGAYVAOLAM" DATE, 
	"CHUCVU" NVARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PHIM
--------------------------------------------------------

  CREATE TABLE "PHIM" 
   (	"MAPHIM" NVARCHAR2(10), 
	"MALP" NVARCHAR2(10), 
	"TENPHIM" NVARCHAR2(50), 
	"THOILUONG" NUMBER(5,0), 
	"QUOCGIA" NVARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RAPCHIEU
--------------------------------------------------------

  CREATE TABLE "RAPCHIEU" 
   (	"MARAP" NVARCHAR2(10), 
	"SLGHE" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SANPHAM
--------------------------------------------------------

  CREATE TABLE "SANPHAM" 
   (	"MASP" NVARCHAR2(10), 
	"TENSP" NVARCHAR2(50), 
	"GIA" NUMBER(30,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SUATCHIEU
--------------------------------------------------------

  CREATE TABLE "SUATCHIEU" 
   (	"MASC" NVARCHAR2(10), 
	"MARAP" NVARCHAR2(10), 
	"MAPHIM" NVARCHAR2(10), 
	"NGAYCHIEU" DATE, 
	"THOIGIANCHIEU" NVARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TAIKHOAN
--------------------------------------------------------

  CREATE TABLE "TAIKHOAN" 
   (	"MATK" NVARCHAR2(10), 
	"MANGUOIDUNG" NVARCHAR2(10), 
	"TENTK" NVARCHAR2(30), 
	"PASSWORD" NVARCHAR2(30), 
	"LOAITK" NVARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table THANHVIEN
--------------------------------------------------------

  CREATE TABLE "THANHVIEN" 
   (	"MATV" NVARCHAR2(10), 
	"TENTV" NVARCHAR2(50), 
	"GIOITINH" NVARCHAR2(3), 
	"NGAYSINH" DATE, 
	"DIACHI" NVARCHAR2(50), 
	"SDT" NVARCHAR2(12), 
	"CMND" NVARCHAR2(12), 
	"NGAYDANGKY" DATE, 
	"DIEMTICHLUY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;


REM INSERTING into LOAIPHIM
SET DEFINE OFF;
Insert into LOAIPHIM (MALP,TENLP,HINHTHUC) values ('1lp','3D VSUB','Vietsub');
Insert into LOAIPHIM (MALP,TENLP,HINHTHUC) values ('2lp','3D LTIENG','Long Tieng');
Insert into LOAIPHIM (MALP,TENLP,HINHTHUC) values ('3lp','2D VSUB','Vietsub');

REM INSERTING into PHIM
SET DEFINE OFF;
Insert into PHIM (MAPHIM,MALP,TENPHIM,THOILUONG,QUOCGIA) values ('2p','3lp','CRUELLA',180,'USA');
Insert into PHIM (MAPHIM,MALP,TENPHIM,THOILUONG,QUOCGIA) values ('4p','3lp','Dua be',135,'KOREA');
Insert into PHIM (MAPHIM,MALP,TENPHIM,THOILUONG,QUOCGIA) values ('5p','3lp','SPIRIT: CHU NGUA BAT KHAM',135,'USA');
Insert into PHIM (MAPHIM,MALP,TENPHIM,THOILUONG,QUOCGIA) values ('1p','3lp','Stand By Me 2',120,'Japan');
Insert into PHIM (MAPHIM,MALP,TENPHIM,THOILUONG,QUOCGIA) values ('6p','1lp',' FAST and FURIOUS 9',180,'USA');
Insert into PHIM (MAPHIM,MALP,TENPHIM,THOILUONG,QUOCGIA) values ('7p','2lp','Dem Troi Buoc',145,'USA');

REM INSERTING into SANPHAM
SET DEFINE OFF;
Insert into SANPHAM (MASP,TENSP,GIA) values ('SP1','Bap rang',45000);
Insert into SANPHAM (MASP,TENSP,GIA) values ('SP2','Bap rang bo',55000);
Insert into SANPHAM (MASP,TENSP,GIA) values ('SP3','Bap pho mai',55000);
Insert into SANPHAM (MASP,TENSP,GIA) values ('SP4','Coca nho',25000);
Insert into SANPHAM (MASP,TENSP,GIA) values ('SP5','Coca lon',40000);
Insert into SANPHAM (MASP,TENSP,GIA) values ('SP6','Pepsi nho',25000);
Insert into SANPHAM (MASP,TENSP,GIA) values ('SP7','Pepsi lon',40000);

REM INSERTING into RAPCHIEU
SET DEFINE OFF;
Insert into RAPCHIEU (MARAP,SLGHE) values ('1r',30);
Insert into RAPCHIEU (MARAP,SLGHE) values ('2r',30);
Insert into RAPCHIEU (MARAP,SLGHE) values ('3r',30);
Insert into RAPCHIEU (MARAP,SLGHE) values ('4r',30);
Insert into RAPCHIEU (MARAP,SLGHE) values ('5r',30);


REM INSERTING into KHUYENMAI
SET DEFINE OFF;
Insert into KHUYENMAI (MAKM,TENKM,TYLEKM) values ('KM_SP10','GIAM GIA SP 10%',10);
Insert into KHUYENMAI (MAKM,TENKM,TYLEKM) values ('KM_SP30','GIAM GIA SP 30%',30);
Insert into KHUYENMAI (MAKM,TENKM,TYLEKM) values ('KM_SP50','GIAM GIA SP 50%',50);
Insert into KHUYENMAI (MAKM,TENKM,TYLEKM) values ('KM_VE10','GIAM GIA VE 10%',10);
Insert into KHUYENMAI (MAKM,TENKM,TYLEKM) values ('KM_VE30','GIAM GIA VE 30%',30);
Insert into KHUYENMAI (MAKM,TENKM,TYLEKM) values ('KM_VE100','GIAM GIA VE 100%',100);

REM INSERTING into GHE
SET DEFINE OFF;
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a1r1','1r','ha c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a2r1','1r','ha c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a3r1','1r','ha c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a4r1','1r','ha c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a5r1','1r','ha c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a6r1','1r','ha c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b1r1','1r','hb c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b2r1','1r','hb c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b3r1','1r','hb c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b4r1','1r','hb c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b5r1','1r','hb c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b6r1','1r','hb c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c1r1','1r','hc c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c2r1','1r','hc c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c3r1','1r','hc c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c4r1','1r','hc c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c5r1','1r','hc c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c6r1','1r','hc c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d1r1','1r','hd c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d2r1','1r','hd c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d3r1','1r','hd c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d4r1','1r','hd c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d5r1','1r','hd c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d6r1','1r','hd c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e1r1','1r','he c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e2r1','1r','he c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e3r1','1r','he c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e4r1','1r','he c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e5r1','1r','he c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e6r1','1r','he c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a1r2','2r','ha c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a2r2','2r','ha c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a3r2','2r','ha c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a4r2','2r','ha c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a5r2','2r','ha c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a6r2','2r','ha c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b1r2','2r','hb c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b2r2','2r','hb c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b3r2','2r','hb c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b4r2','2r','hb c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b5r2','2r','hb c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b6r2','2r','hb c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c1r2','2r','hc c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c2r2','2r','hc c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c3r2','2r','hc c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c4r2','2r','hc c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c5r2','2r','hc c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c6r2','2r','hc c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d1r2','2r','hd c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d2r2','2r','hd c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d3r2','2r','hd c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d4r2','2r','hd c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d5r2','2r','hd c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d6r2','2r','hd c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e1r2','2r','he c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e2r2','2r','he c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e3r2','2r','he c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e4r2','2r','he c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e5r2','2r','he c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e6r2','2r','he c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a1r3','3r','ha c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a2r3','3r','ha c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a3r3','3r','ha c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a4r3','3r','ha c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a5r3','3r','ha c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a6r3','3r','ha c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b1r3','3r','hb c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b2r3','3r','hb c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b3r3','3r','hb c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b4r3','3r','hb c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b5r3','3r','hb c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b6r3','3r','hb c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c1r3','3r','hc c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c2r3','3r','hc c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c3r3','3r','hc c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c4r3','3r','hc c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c5r3','3r','hc c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c6r3','3r','hc c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d1r3','3r','hd c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d2r3','3r','hd c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d3r3','3r','hd c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d4r3','3r','hd c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d5r3','3r','hd c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d6r3','3r','hd c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e1r3','3r','he c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e2r3','3r','he c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e3r3','3r','he c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e4r3','3r','he c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e5r3','3r','he c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e6r3','3r','he c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a1r4','4r','ha c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a2r4','4r','ha c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a3r4','4r','ha c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a4r4','4r','ha c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a5r4','4r','ha c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a6r4','4r','ha c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b1r4','4r','hb c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b2r4','4r','hb c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b3r4','4r','hb c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b4r4','4r','hb c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b5r4','4r','hb c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b6r4','4r','hb c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c1r4','4r','hc c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c2r4','4r','hc c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c3r4','4r','hc c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c4r4','4r','hc c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c5r4','4r','hc c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c6r4','4r','hc c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d1r4','4r','hd c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d2r4','4r','hd c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d3r4','4r','hd c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d4r4','4r','hd c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d5r4','4r','hd c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d6r4','4r','hd c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e1r4','4r','he c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e2r4','4r','he c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e3r4','4r','he c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e4r4','4r','he c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e5r4','4r','he c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e6r4','4r','he c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a1r5','5r','ha c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a2r5','5r','ha c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a3r5','5r','ha c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a4r5','5r','ha c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a5r5','5r','ha c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('a6r5','5r','ha c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b1r5','5r','hb c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b2r5','5r','hb c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b3r5','5r','hb c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b4r5','5r','hb c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b5r5','5r','hb c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('b6r5','5r','hb c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c1r5','5r','hc c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c2r5','5r','hc c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c3r5','5r','hc c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c4r5','5r','hc c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c5r5','5r','hc c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('c6r5','5r','hc c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d1r5','5r','hd c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d2r5','5r','hd c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d3r5','5r','hd c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d4r5','5r','hd c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d5r5','5r','hd c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('d6r5','5r','hd c6','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e1r5','5r','he c1','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e2r5','5r','he c2','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e3r5','5r','he c3','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e4r5','5r','he c4','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e5r5','5r','he c5','thuong',65000);
Insert into GHE (MAGHE,MARAP,VITRI,LOAIGHE,GIA) values ('e6r5','5r','he c6','thuong',65000);

REM INSERTING into SUATCHIEU
SET DEFINE OFF;
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('14sc','5r','6p',to_date('29-06-2022','dd-MM-yyyy'),'15:00');
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('12sc','3r','2p',to_date('12-06-2022','dd-MM-yyyy'),'12:00');
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('1sc','1r','1p',to_date('30-06-2022','dd-MM-yyyy'),'10:30');
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('2sc','1r','1p',to_date('30-06-2022','dd-MM-yyyy'),'12:30');
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('3sc','1r','1p',to_date('30-06-2022','dd-MM-yyyy'),'17:00');
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('4sc','2r','2p',to_date('30-06-2022','dd-MM-yyyy'),'10:30');
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('5sc','2r','2p',to_date('30-06-2022','dd-MM-yyyy'),'12:30');
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('6sc','2r','2p',to_date('30-06-2022','dd-MM-yyyy'),'17:00');
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('9sc','1r','4p',to_date('01-07-2022','dd-MM-yyyy'),'10:30');
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('10sc','1r','4p',to_date('01-07-2022','dd-MM-yyyy'),'12:30');
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('11sc','1r','4p',to_date('01-07-2022','dd-MM-yyyy'),'17:00');
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('13sc','4r','5p',to_date('29-06-2022','dd-MM-yyyy'),'13:00');
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('7sc','3r','4p',to_date('01-07-2022','dd-MM-yyyy'),'15:00');
Insert into SUATCHIEU (MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values ('8sc','4r','4p',to_date('01-07-2022','dd-MM-yyyy'),'15:00');

REM INSERTING into HOADON
SET DEFINE OFF;
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (122,'NV1','UIT01',to_date('28-06-2022','dd-MM-yyyy'),65000,null,10000);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (142,'NV1','UIT01',to_date('28-06-2022','dd-MM-yyyy'),40000,null,15000);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (181,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (203,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),25000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (211,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (221,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (1,'NV1',null,to_date('26-06-2022','dd-MM-yyyy'),65000,null,null);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (21,'NV1',null,to_date('26-06-2022','dd-MM-yyyy'),65000,null,null);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (22,'NV1',null,to_date('26-06-2022','dd-MM-yyyy'),65000,null,null);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (23,'NV1',null,to_date('27-06-2022','dd-MM-yyyy'),65000,null,null);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (81,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (141,'NV1','UIT01',to_date('28-06-2022','dd-MM-yyyy'),60000,null,5000);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (182,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (207,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (123,'NV1','UIT01',to_date('28-06-2022','dd-MM-yyyy'),65000,null,10000);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (183,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (205,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),55000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (208,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (209,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (215,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (41,'NV1',null,to_date('27-06-2022','dd-MM-yyyy'),65000,null,null);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (42,'NV1',null,to_date('27-06-2022','dd-MM-yyyy'),65000,null,null);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (43,'NV1',null,to_date('27-06-2022','dd-MM-yyyy'),65000,null,null);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (44,'NV1',null,to_date('27-06-2022','dd-MM-yyyy'),65000,null,null);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (61,'NV1',null,to_date('27-06-2022','dd-MM-yyyy'),65000,null,null);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (101,'NV1','UIT01',to_date('28-06-2022','dd-MM-yyyy'),48500,'KM_SP10',10000);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (121,'NV1','UIT01',to_date('28-06-2022','dd-MM-yyyy'),65000,null,10000);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (161,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (162,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (164,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (202,'NV1','UIT02',to_date('28-06-2022','dd-MM-yyyy'),25000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (204,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),25000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (206,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (213,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (124,'NV1','UIT01',to_date('28-06-2022','dd-MM-yyyy'),65000,null,10000);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (163,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (201,'NV1','UIT02',to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (210,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (212,'NV1','UIT03',to_date('28-06-2022','dd-MM-yyyy'),55000,null,10000);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (214,'NV1','UIT02',to_date('28-06-2022','dd-MM-yyyy'),65000,null,0);
Insert into HOADON (SOHD,MANV,MATV,NGAYHD,TONGTIEN,MAKM,DTL) values (216,'NV1',null,to_date('28-06-2022','dd-MM-yyyy'),0,null,0);


REM INSERTING into DATVE
SET DEFINE OFF;
Insert into DATVE (MAGHE,MASC,SOHD) values ('a1r1','1sc',1);
Insert into DATVE (MAGHE,MASC,SOHD) values ('a1r1','9sc',21);
Insert into DATVE (MAGHE,MASC,SOHD) values ('a1r2','5sc',215);
Insert into DATVE (MAGHE,MASC,SOHD) values ('a2r1','1sc',161);
Insert into DATVE (MAGHE,MASC,SOHD) values ('a2r1','9sc',22);
Insert into DATVE (MAGHE,MASC,SOHD) values ('a3r1','9sc',23);
Insert into DATVE (MAGHE,MASC,SOHD) values ('b1r2','4sc',213);
Insert into DATVE (MAGHE,MASC,SOHD) values ('b2r1','1sc',101);
Insert into DATVE (MAGHE,MASC,SOHD) values ('b3r1','1sc',81);
Insert into DATVE (MAGHE,MASC,SOHD) values ('b3r1','2sc',212);
Insert into DATVE (MAGHE,MASC,SOHD) values ('b3r2','4sc',183);
Insert into DATVE (MAGHE,MASC,SOHD) values ('b4r2','4sc',164);
Insert into DATVE (MAGHE,MASC,SOHD) values ('b5r1','1sc',206);
Insert into DATVE (MAGHE,MASC,SOHD) values ('b5r2','4sc',181);
Insert into DATVE (MAGHE,MASC,SOHD) values ('b6r2','4sc',182);
Insert into DATVE (MAGHE,MASC,SOHD) values ('c1r1','1sc',141);
Insert into DATVE (MAGHE,MASC,SOHD) values ('c1r4','13sc',61);
Insert into DATVE (MAGHE,MASC,SOHD) values ('c2r1','1sc',207);
Insert into DATVE (MAGHE,MASC,SOHD) values ('c2r2','5sc',215);
Insert into DATVE (MAGHE,MASC,SOHD) values ('c3r2','4sc',210);
Insert into DATVE (MAGHE,MASC,SOHD) values ('c4r1','1sc',201);
Insert into DATVE (MAGHE,MASC,SOHD) values ('c4r2','4sc',162);
Insert into DATVE (MAGHE,MASC,SOHD) values ('c5r1','1sc',208);
Insert into DATVE (MAGHE,MASC,SOHD) values ('c5r2','4sc',163);
Insert into DATVE (MAGHE,MASC,SOHD) values ('c5r2','5sc',221);
Insert into DATVE (MAGHE,MASC,SOHD) values ('c6r1','1sc',41);
Insert into DATVE (MAGHE,MASC,SOHD) values ('c6r2','12sc',44);
Insert into DATVE (MAGHE,MASC,SOHD) values ('c6r2','4sc',43);
Insert into DATVE (MAGHE,MASC,SOHD) values ('d1r2','4sc',211);
Insert into DATVE (MAGHE,MASC,SOHD) values ('d2r2','4sc',214);
Insert into DATVE (MAGHE,MASC,SOHD) values ('d2r2','5sc',215);
Insert into DATVE (MAGHE,MASC,SOHD) values ('d6r1','1sc',42);
Insert into DATVE (MAGHE,MASC,SOHD) values ('e1r1','1sc',209);

REM INSERTING into CTHD
SET DEFINE OFF;
Insert into CTHD (MASP,SOHD,THANHTIEN,SOLUONG) values ('SP2',142,1,55000);
Insert into CTHD (MASP,SOHD,THANHTIEN,SOLUONG) values ('SP6',204,1,25000);
Insert into CTHD (MASP,SOHD,THANHTIEN,SOLUONG) values ('SP6',203,1,25000);
Insert into CTHD (MASP,SOHD,THANHTIEN,SOLUONG) values ('SP2',205,1,55000);
Insert into CTHD (MASP,SOHD,THANHTIEN,SOLUONG) values ('SP6',202,1,25000);


REM INSERTING into TAIKHOAN
SET DEFINE OFF;
Insert into TAIKHOAN (MATK,MANGUOIDUNG,TENTK,PASSWORD,LOAITK) values ('TK1','NV1','khoa','khoa','quanly');
Insert into TAIKHOAN (MATK,MANGUOIDUNG,TENTK,PASSWORD,LOAITK) values ('TK2','NV2','acc2','acc2','nhanvien');
Insert into TAIKHOAN (MATK,MANGUOIDUNG,TENTK,PASSWORD,LOAITK) values ('TK3','NV3','acc3','acc3','nhanvien');
Insert into TAIKHOAN (MATK,MANGUOIDUNG,TENTK,PASSWORD,LOAITK) values ('TK4','NV4','acc4','acc4','quanly');
Insert into TAIKHOAN (MATK,MANGUOIDUNG,TENTK,PASSWORD,LOAITK) values ('TK5','NV5','acc5','acc5','quanly');
Insert into TAIKHOAN (MATK,MANGUOIDUNG,TENTK,PASSWORD,LOAITK) values ('TK6','NV6','acc6','acc6','nhanvien');

REM INSERTING into NHANVIEN
SET DEFINE OFF;
Insert into NHANVIEN (MANV,MANQL,MATK,HOTENNV,GIOITINH,NGAYSINH,DIACHI,SDT,LUONG,NGAYVAOLAM,CHUCVU) values ('NV1','NV1','TK1','Do Le Anh Khoa','Nam',to_date('03-01-2001','dd-MM-yyyy'),'TPHCM','012345678',1709992,to_date('19-09-2017','dd-MM-yyyy'),'Quan Ly Ban Hang');
Insert into NHANVIEN (MANV,MANQL,MATK,HOTENNV,GIOITINH,NGAYSINH,DIACHI,SDT,LUONG,NGAYVAOLAM,CHUCVU) values ('NV2','NV1','TK2','Hoang Thai Duong','Nam',to_date('10-10-2000','dd-MM-yyyy'),'TPHCM','087501221',123455,to_date('12-02-2010','dd-MM-yyyy'),'Nhan Vien Ban Hang');
Insert into NHANVIEN (MANV,MANQL,MATK,HOTENNV,GIOITINH,NGAYSINH,DIACHI,SDT,LUONG,NGAYVAOLAM,CHUCVU) values ('NV3','NV1','TK3','Tran Gia Phong','Nam',to_date('03-06-1997','dd-MM-yyyy'),'TPHCM','0586505029',10000000,to_date('01-06-2022','dd-MM-yyyy'),'Nhan Vien Ban Ve');
Insert into NHANVIEN (MANV,MANQL,MATK,HOTENNV,GIOITINH,NGAYSINH,DIACHI,SDT,LUONG,NGAYVAOLAM,CHUCVU) values ('NV4','NV1','TK4','Than Trung Hieu','Nam',to_date('17-10-1998','dd-MM-yyyy'),'Long An','0897273821',1709992,to_date('19-09-2017','dd-MM-yyyy'),'Quan Ly Hang Hoa');
Insert into NHANVIEN (MANV,MANQL,MATK,HOTENNV,GIOITINH,NGAYSINH,DIACHI,SDT,LUONG,NGAYVAOLAM,CHUCVU) values ('NV5','NV1','TK5','Nguyen Van Hoan','Nam',to_date('12-10-2001','dd-MM-yyyy'),'TPHCM','012345687',1709992,to_date('19-09-2017','dd-MM-yyyy'),'Quan Ly Ban Ve');
Insert into NHANVIEN (MANV,MANQL,MATK,HOTENNV,GIOITINH,NGAYSINH,DIACHI,SDT,LUONG,NGAYVAOLAM,CHUCVU) values ('NV6','NV1','TK6','Do Viet Bach','Nam',to_date('10-10-2001','dd-MM-yyyy'),'TPHCM','012345678',1709992,to_date('19-09-2017','dd-MM-yyyy'),'Nhan Vien');

REM INSERTING into THANHVIEN
SET DEFINE OFF;

Insert into THANHVIEN (MATV,TENTV,GIOITINH,NGAYSINH,DIACHI,SDT,CMND,NGAYDANGKY,DIEMTICHLUY) values ('UIT01','Ngo Kha Vy','Nu',to_date('21-04-2000','dd-MM-yyyy'),'TP HCM','0835946878','301728991112',to_date('28-06-2022','dd-MM-yyyy'),85000);
Insert into THANHVIEN (MATV,TENTV,GIOITINH,NGAYSINH,DIACHI,SDT,CMND,NGAYDANGKY,DIEMTICHLUY) values ('UIT02','Nguyen Thanh Tai','Nam',to_date('01-06-2001','dd-MM-yyyy'),'Ha Noi','0756483234','123123123',to_date('10-06-2022','dd-MM-yyyy'),85000);
Insert into THANHVIEN (MATV,TENTV,GIOITINH,NGAYSINH,DIACHI,SDT,CMND,NGAYDANGKY,DIEMTICHLUY) values ('UIT05','Tran Quoc Phong','Nam',to_date('01-06-2001','dd-MM-yyyy'),'Ha Noi','0987453789','111231',to_date('11-06-2022','dd-MM-yyyy'),490000);
Insert into THANHVIEN (MATV,TENTV,GIOITINH,NGAYSINH,DIACHI,SDT,CMND,NGAYDANGKY,DIEMTICHLUY) values ('UIT06','Nguyen Chau Truc','Nu',to_date('01-11-2000','dd-MM-yyyy'),'Hoi An','0972878293','2728783702',to_date('28-06-2022','dd-MM-yyyy'),70000);
Insert into THANHVIEN (MATV,TENTV,GIOITINH,NGAYSINH,DIACHI,SDT,CMND,NGAYDANGKY,DIEMTICHLUY) values ('UIT07','Tran Duc Anh','Nam',to_date('14-05-1993','dd-MM-yyyy'),'Tay Ninh','0312867549','2777383922',to_date('11-06-2022','dd-MM-yyyy'),50000);
Insert into THANHVIEN (MATV,TENTV,GIOITINH,NGAYSINH,DIACHI,SDT,CMND,NGAYDANGKY,DIEMTICHLUY) values ('UIT08','Nguyen Nhat Anh','Nam',to_date('12-08-1989','dd-MM-yyyy'),'TP HCM','0312456549','2423383922',to_date('12-06-2022','dd-MM-yyyy'),0);
Insert into THANHVIEN (MATV,TENTV,GIOITINH,NGAYSINH,DIACHI,SDT,CMND,NGAYDANGKY,DIEMTICHLUY) values ('UIT09','Tran Duc Anh','Nam',to_date('12-08-1991','dd-MM-yyyy'),'Tay Ninh','0312898749','2775273922',to_date('13-06-2022','dd-MM-yyyy'),20000);
Insert into THANHVIEN (MATV,TENTV,GIOITINH,NGAYSINH,DIACHI,SDT,CMND,NGAYDANGKY,DIEMTICHLUY) values ('UIT03','Tran Manh Linh','Nam',to_date('12-08-1993','dd-MM-yyyy'),'TP HCM','0312348749','09756273922',to_date('05-06-2022','dd-MM-yyyy'),30000);



  --------------------------------------------------------
--  DDL for Index CHK_UQ_TENPHIM
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHK_UQ_TENPHIM" ON "PHIM" ("TENPHIM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MABC
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MABC" ON "BAOCAO" ("MABC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MAGHE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MAGHE" ON "GHE" ("MAGHE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MAPHIM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MAPHIM" ON "PHIM" ("MAPHIM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MARAP
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MARAP" ON "RAPCHIEU" ("MARAP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MASC
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MASC" ON "SUATCHIEU" ("MASC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MASP
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MASP" ON "SANPHAM" ("MASP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MATK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MATK" ON "TAIKHOAN" ("MATK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MATV
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MATV" ON "THANHVIEN" ("MATV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010715
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0010715" ON "CTHD" ("MASP", "SOHD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

  
  --------------------------------------------------------
--  Constraints for Table GHE
--------------------------------------------------------

  ALTER TABLE "GHE" MODIFY ("MAGHE" NOT NULL ENABLE);
  ALTER TABLE "GHE" MODIFY ("MARAP" NOT NULL ENABLE);
  ALTER TABLE "GHE" MODIFY ("VITRI" NOT NULL ENABLE);
  ALTER TABLE "GHE" ADD CONSTRAINT "PK_MAGHE" PRIMARY KEY ("MAGHE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NHANVIEN
--------------------------------------------------------

  ALTER TABLE "NHANVIEN" MODIFY ("MANV" NOT NULL ENABLE);
  ALTER TABLE "NHANVIEN" MODIFY ("HOTENNV" NOT NULL ENABLE);
  ALTER TABLE "NHANVIEN" MODIFY ("GIOITINH" NOT NULL ENABLE);
  ALTER TABLE "NHANVIEN" MODIFY ("NGAYSINH" NOT NULL ENABLE);
  ALTER TABLE "NHANVIEN" MODIFY ("DIACHI" NOT NULL ENABLE);
  ALTER TABLE "NHANVIEN" MODIFY ("SDT" NOT NULL ENABLE);
  ALTER TABLE "NHANVIEN" MODIFY ("LUONG" NOT NULL ENABLE);
  ALTER TABLE "NHANVIEN" MODIFY ("NGAYVAOLAM" NOT NULL ENABLE);
  ALTER TABLE "NHANVIEN" MODIFY ("CHUCVU" NOT NULL ENABLE);
  ALTER TABLE "NHANVIEN" ADD PRIMARY KEY ("MANV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NHANVIEN" ADD CONSTRAINT "CHK_GIOITINH_NV" CHECK (GioiTinh = 'Nam' OR GioiTinh = 'Nu') ENABLE;
  ALTER TABLE "NHANVIEN" ADD CONSTRAINT "CHK_NGAYSINH_NV" CHECK (NgaySinh < NgayVaoLam) ENABLE;
--------------------------------------------------------
--  Constraints for Table CTHD
--------------------------------------------------------

  ALTER TABLE "CTHD" MODIFY ("SOHD" NOT NULL ENABLE);
  ALTER TABLE "CTHD" MODIFY ("THANHTIEN" NOT NULL ENABLE);
  ALTER TABLE "CTHD" ADD CONSTRAINT "SYS_C0010715" PRIMARY KEY ("MASP", "SOHD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HOADON
--------------------------------------------------------

  ALTER TABLE "HOADON" MODIFY ("SOHD" NOT NULL ENABLE);
  ALTER TABLE "HOADON" MODIFY ("MANV" NOT NULL ENABLE);
  ALTER TABLE "HOADON" MODIFY ("NGAYHD" NOT NULL ENABLE);
  ALTER TABLE "HOADON" MODIFY ("TONGTIEN" NOT NULL ENABLE);
  ALTER TABLE "HOADON" ADD PRIMARY KEY ("SOHD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table THANHVIEN
--------------------------------------------------------

  ALTER TABLE "THANHVIEN" MODIFY ("MATV" NOT NULL ENABLE);
  ALTER TABLE "THANHVIEN" MODIFY ("TENTV" NOT NULL ENABLE);
  ALTER TABLE "THANHVIEN" MODIFY ("GIOITINH" NOT NULL ENABLE);
  ALTER TABLE "THANHVIEN" MODIFY ("NGAYSINH" NOT NULL ENABLE);
  ALTER TABLE "THANHVIEN" MODIFY ("DIACHI" NOT NULL ENABLE);
  ALTER TABLE "THANHVIEN" MODIFY ("SDT" NOT NULL ENABLE);
  ALTER TABLE "THANHVIEN" MODIFY ("CMND" NOT NULL ENABLE);
  ALTER TABLE "THANHVIEN" MODIFY ("NGAYDANGKY" NOT NULL ENABLE);
  ALTER TABLE "THANHVIEN" ADD CONSTRAINT "PK_MATV" PRIMARY KEY ("MATV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "THANHVIEN" ADD CONSTRAINT "CHK_NGAYSINH_LT_NGAYDANGKY" CHECK (NgaySinh < NgayDangKy) ENABLE;
  ALTER TABLE "THANHVIEN" ADD CONSTRAINT "CHK_GIOITINH_TV" CHECK (GioiTinh = 'Nam' OR GioiTinh = 'Nu') ENABLE;
--------------------------------------------------------
--  Constraints for Table KHUYENMAI
--------------------------------------------------------

  ALTER TABLE "KHUYENMAI" MODIFY ("MAKM" NOT NULL ENABLE);
  ALTER TABLE "KHUYENMAI" MODIFY ("TENKM" NOT NULL ENABLE);
  ALTER TABLE "KHUYENMAI" MODIFY ("TYLEKM" NOT NULL ENABLE);
  ALTER TABLE "KHUYENMAI" ADD PRIMARY KEY ("MAKM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHIM
--------------------------------------------------------

  ALTER TABLE "PHIM" MODIFY ("MAPHIM" NOT NULL ENABLE);
  ALTER TABLE "PHIM" MODIFY ("MALP" NOT NULL ENABLE);
  ALTER TABLE "PHIM" MODIFY ("TENPHIM" NOT NULL ENABLE);
  ALTER TABLE "PHIM" MODIFY ("THOILUONG" NOT NULL ENABLE);
  ALTER TABLE "PHIM" MODIFY ("QUOCGIA" NOT NULL ENABLE);
  ALTER TABLE "PHIM" ADD CONSTRAINT "PK_MAPHIM" PRIMARY KEY ("MAPHIM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PHIM" ADD CONSTRAINT "CHK_UQ_TENPHIM" UNIQUE ("TENPHIM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TAIKHOAN
--------------------------------------------------------

  ALTER TABLE "TAIKHOAN" MODIFY ("MATK" NOT NULL ENABLE);
  ALTER TABLE "TAIKHOAN" MODIFY ("MANGUOIDUNG" NOT NULL ENABLE);
  ALTER TABLE "TAIKHOAN" MODIFY ("TENTK" NOT NULL ENABLE);
  ALTER TABLE "TAIKHOAN" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "TAIKHOAN" MODIFY ("LOAITK" NOT NULL ENABLE);
  ALTER TABLE "TAIKHOAN" ADD CONSTRAINT "PK_MATK" PRIMARY KEY ("MATK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOAIPHIM
--------------------------------------------------------

  ALTER TABLE "LOAIPHIM" MODIFY ("MALP" NOT NULL ENABLE);
  ALTER TABLE "LOAIPHIM" MODIFY ("TENLP" NOT NULL ENABLE);
  ALTER TABLE "LOAIPHIM" MODIFY ("HINHTHUC" NOT NULL ENABLE);
  ALTER TABLE "LOAIPHIM" ADD PRIMARY KEY ("MALP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RAPCHIEU
--------------------------------------------------------

  ALTER TABLE "RAPCHIEU" MODIFY ("MARAP" NOT NULL DISABLE);
  ALTER TABLE "RAPCHIEU" MODIFY ("SLGHE" NOT NULL DISABLE);
  ALTER TABLE "RAPCHIEU" ADD CONSTRAINT "PK_MARAP" PRIMARY KEY ("MARAP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BAOCAO
--------------------------------------------------------

  ALTER TABLE "BAOCAO" MODIFY ("MABC" NOT NULL ENABLE);
  ALTER TABLE "BAOCAO" MODIFY ("MANV" NOT NULL ENABLE);
  ALTER TABLE "BAOCAO" MODIFY ("NGAYLAP" NOT NULL ENABLE);
  ALTER TABLE "BAOCAO" MODIFY ("TUNGAY" NOT NULL ENABLE);
  ALTER TABLE "BAOCAO" MODIFY ("DENNGAY" NOT NULL ENABLE);
  ALTER TABLE "BAOCAO" MODIFY ("TONGDOANHTHU" NOT NULL ENABLE);
  ALTER TABLE "BAOCAO" MODIFY ("GHICHU" NOT NULL ENABLE);
  ALTER TABLE "BAOCAO" ADD CONSTRAINT "PK_MABC" PRIMARY KEY ("MABC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BAOCAO" ADD CONSTRAINT "CHK_TUNGAY_LT_DENNGAY" CHECK (TuNgay < DenNgay) ENABLE;
  ALTER TABLE "BAOCAO" ADD CONSTRAINT "CHK_DENNGAY_LT_NGAYLAP" CHECK (DenNgay < NgayLap) ENABLE;
--------------------------------------------------------
--  Constraints for Table DATVE
--------------------------------------------------------

  ALTER TABLE "DATVE" MODIFY ("MAGHE" NOT NULL ENABLE);
  ALTER TABLE "DATVE" MODIFY ("MASC" NOT NULL ENABLE);
  ALTER TABLE "DATVE" ADD PRIMARY KEY ("MAGHE", "MASC", "SOHD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SANPHAM
--------------------------------------------------------

  ALTER TABLE "SANPHAM" MODIFY ("MASP" NOT NULL ENABLE);
  ALTER TABLE "SANPHAM" MODIFY ("TENSP" NOT NULL ENABLE);
  ALTER TABLE "SANPHAM" MODIFY ("GIA" NOT NULL ENABLE);
  ALTER TABLE "SANPHAM" ADD CONSTRAINT "PK_MASP" PRIMARY KEY ("MASP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SUATCHIEU
--------------------------------------------------------

  ALTER TABLE "SUATCHIEU" MODIFY ("MASC" NOT NULL ENABLE);
  ALTER TABLE "SUATCHIEU" MODIFY ("MARAP" NOT NULL ENABLE);
  ALTER TABLE "SUATCHIEU" MODIFY ("MAPHIM" NOT NULL ENABLE);
  ALTER TABLE "SUATCHIEU" MODIFY ("NGAYCHIEU" NOT NULL ENABLE);
  ALTER TABLE "SUATCHIEU" ADD CONSTRAINT "PK_MASC" PRIMARY KEY ("MASC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BAOCAO
--------------------------------------------------------

  ALTER TABLE "BAOCAO" ADD CONSTRAINT "FK_MANV_BAOCAO" FOREIGN KEY ("MANV")
	  REFERENCES "NHANVIEN" ("MANV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CTHD
--------------------------------------------------------

  ALTER TABLE "CTHD" ADD CONSTRAINT "FK_MASP_CTHD" FOREIGN KEY ("MASP")
	  REFERENCES "SANPHAM" ("MASP") ENABLE;
  ALTER TABLE "CTHD" ADD CONSTRAINT "FK_SOHD_CTHD" FOREIGN KEY ("SOHD")
	  REFERENCES "HOADON" ("SOHD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DATVE
--------------------------------------------------------

  ALTER TABLE "DATVE" ADD CONSTRAINT "FK_MAGHE_DATVE" FOREIGN KEY ("MAGHE")
	  REFERENCES "GHE" ("MAGHE") ENABLE;
  ALTER TABLE "DATVE" ADD CONSTRAINT "FK_MASC_DATVE" FOREIGN KEY ("MASC")
	  REFERENCES "SUATCHIEU" ("MASC") ENABLE;
  ALTER TABLE "DATVE" ADD CONSTRAINT "FK_SOHD_DATVE" FOREIGN KEY ("SOHD")
	  REFERENCES "HOADON" ("SOHD") ENABLE;
      
--------------------------------------------------------
--  Ref Constraints for Table GHE
--------------------------------------------------------

  ALTER TABLE "GHE" ADD CONSTRAINT "FK_MARAP_GHE" FOREIGN KEY ("MARAP")
	  REFERENCES "RAPCHIEU" ("MARAP") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HOADON
--------------------------------------------------------

  ALTER TABLE "HOADON" ADD CONSTRAINT "FK_MANV_HOADON" FOREIGN KEY ("MANV")
	  REFERENCES "NHANVIEN" ("MANV") ENABLE;
  ALTER TABLE "HOADON" ADD CONSTRAINT "FK_MATV_HOADON" FOREIGN KEY ("MATV")
	  REFERENCES "THANHVIEN" ("MATV") ENABLE;
  ALTER TABLE "HOADON" ADD CONSTRAINT "FK_HD_KM" FOREIGN KEY ("MAKM")
	  REFERENCES "KHUYENMAI" ("MAKM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NHANVIEN
--------------------------------------------------------

  ALTER TABLE "NHANVIEN" ADD CONSTRAINT "FK_MANQL_NHANVIEN" FOREIGN KEY ("MANV")
	  REFERENCES "NHANVIEN" ("MANV") ENABLE;
  ALTER TABLE "NHANVIEN" ADD CONSTRAINT "FK_MATK_NHANVIEN" FOREIGN KEY ("MATK")
	  REFERENCES "TAIKHOAN" ("MATK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PHIM
--------------------------------------------------------

  ALTER TABLE "PHIM" ADD CONSTRAINT "FK_MALP_PHIM" FOREIGN KEY ("MALP")
	  REFERENCES "LOAIPHIM" ("MALP") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SUATCHIEU
--------------------------------------------------------

  ALTER TABLE "SUATCHIEU" ADD CONSTRAINT "FK_MARAP_SUATCHIEU" FOREIGN KEY ("MARAP")
	  REFERENCES "RAPCHIEU" ("MARAP") ENABLE;
  ALTER TABLE "SUATCHIEU" ADD CONSTRAINT "FK_MAPHIM_SUATCHIEU" FOREIGN KEY ("MAPHIM")
	  REFERENCES "PHIM" ("MAPHIM") ENABLE;
  
  




--------------------------------------------------------
--  DDL for Procedure INSERT_GHE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "INSERT_GHE" (ma_rap nvarchar2)
as
begin
        for v_a in 65..69 loop
            for v_i in 1..6
            loop
                insert into Ghe values(concat(concat(ma_rap,chr(v_a)),v_i),ma_rap,concat(chr(v_a),v_i),null, null);
            end loop;
        end loop;
end;

/
--------------------------------------------------------
--  DDL for Procedure SP_DATVE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SP_DATVE" (
P_MAGHE IN NVARCHAR2,
P_MASC IN NVARCHAR2,
P_SOHD IN NUMBER)
IS
BEGIN
    INSERT INTO DATVE VALUES(P_MAGHE, P_MASC, P_SOHD);
END;

/
--------------------------------------------------------
--  DDL for Function F_CHECK_SEAT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "F_CHECK_SEAT" (
P_MAGHE in nvarchar2,
P_MASC IN NVARCHAR2)
RETURN NUMBER
IS
    CURSOR CUR IS SELECT DATVE.MAGHE FROM DATVE WHERE DATVE.MASC = p_MASC;
    V_MAGHE DATVE.MAGHE%TYPE;
    BOOL_GHEDADAT NUMBER :=0;
BEGIN
    OPEN CUR;
    LOOP
            FETCH CUR INTO V_MAGHE;
            EXIT WHEN CUR%NOTFOUND;
            IF V_MAGHE = p_MAGHE
                THEN BOOL_GHEDADAT:=1;
            END IF;
    END LOOP;
    CLOSE CUR;
    --IF BOOL_GHEDADAT = 1
    --THEN
        --RAISE_APPLICATION_ERROR(-20003, 'Ghe da duoc dat');
    --END IF;
    RETURN BOOL_GHEDADAT;
END;

/
--------------------------------------------------------
--  DDL for Function F_CREATE_HOADON
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "F_CREATE_HOADON" (
P_MANV in nvarchar2,
P_MATV in nvarchar2,
P_THANHTIEN in NUMBER,
P_MAKM IN NVARCHAR2,
P_DTL IN NUMBER
)
return NUMBER
IS
    V_SYSDATE DATE := SYSDATE;
    V_SOHD HOADON.SOHD%TYPE;
    V_DTL thanhvien.diemtichluy%TYPE;
    
BEGIN
    SELECT DIEMTICHLUY INTO V_DTL FROM THANHVIEN WHERE MATV = P_MATV;
    V_DTL:=V_DTL-P_DTL;
    UPDATE THANHVIEN SET DIEMTICHLUY = V_DTL WHERE MATV=P_MATV;
    INSERT INTO HOADON(MANV, MATV, NGAYHD, TONGTIEN, MAKM, DTL) 
        VALUES (p_MANV, p_MATV, V_SYSDATE, p_THANHTIEN,P_MAKM, P_DTL)
            RETURNING SOHD INTO V_SOHD;
    RETURN V_SOHD;
END;

/
--------------------------------------------------------
--  DDL for Function F_CREATE_HOADON_DATVE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "F_CREATE_HOADON_DATVE" (
P_MANV in nvarchar2,
P_MATV in nvarchar2,
P_THANHTIEN in NUMBER,
P_MAKM IN NVARCHAR2,
P_DTL IN NUMBER
)
return NUMBER
IS
    V_SYSDATE DATE := SYSDATE;
    V_SOHD HOADON.SOHD%TYPE;
    V_DTL thanhvien.diemtichluy%TYPE;
    
BEGIN
    IF P_MATV != 'null' THEN 
    SELECT DIEMTICHLUY INTO V_DTL FROM THANHVIEN WHERE MATV = P_MATV;
    V_DTL:=V_DTL-P_DTL;
    UPDATE THANHVIEN SET DIEMTICHLUY = V_DTL WHERE MATV=P_MATV; END IF;
    INSERT INTO HOADON(MANV, MATV, NGAYHD, TONGTIEN, MAKM, DTL) 
        VALUES (p_MANV, p_MATV, V_SYSDATE, p_THANHTIEN,P_MAKM, P_DTL)
            RETURNING SOHD INTO V_SOHD;
    RETURN V_SOHD;
END;

/

-------------------------------------------------------------
-- TRIGGER 1 Tang Tu Dong SoHD
-------------------------------------------------------------
create or replace NONEDITIONABLE TRIGGER AUTO_INCREMENT_TRIGGER
BEFORE INSERT ON
HOADON
REFERENCING NEW AS NEW
    FOR EACH ROW 
BEGIN 
    SELECT SEQ_SHD.NEXTVAL INTO :NEW.SOHD
    FROM DUAL;
END;
-------------------------------------------------------------
-- TRIGGER 2 : Nguoi quan ly phai la mot nhan vien trong cong ty
-------------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER TR_QL_LA_NV
BEFORE INSERT 
ON NHANVIEN 
FOR EACH ROW
DECLARE
    ROWCNT number;
    TONGNV number;
BEGIN
	SELECT COUNT(NV.MANV)
	INTO TONGNV
    FROM NHANVIEN NV;

    SELECT COUNT(NV.MANV)
	INTO ROWCNT
    FROM NHANVIEN NV
    WHERE NV.MANV = :new.MANQL ;

	IF ROWCNT = 0 AND TONGNV != 0
    THEN
		RAISE_APPLICATION_ERROR(-20000, 'Nguoi quan ly phai la mot nhan vien trong cong ty');
	END IF;
END;

ALTER TRIGGER TR_QL_LA_NV ENABLE;

-------------------------------------------------------------
-- TRIGGER 3: Mot nhan vien khong quan ly truc tiep chinh minh
-------------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER TR_NV_KHONG_TU_QL
BEFORE INSERT 
ON NHANVIEN 
FOR EACH ROW
BEGIN
	IF :new.MANQL = :new.MANV
    THEN
		RAISE_APPLICATION_ERROR(-20000, 'Mot nhan vien khong quan ly truc tiep chinh minh');
	END IF;
END;
ALTER TRIGGER TR_NV_KHONG_TU_QL ENABLE;
-------------------------------------------------------------
-- TRIGGER 4: Tai 1 thoi diem, 1 rap chi chieu 1 bo phim duy nhat.
-------------------------------------------------------------

CREATE OR REPLACE EDITIONABLE TRIGGER TR_THOIGIANCHIEU
BEFORE INSERT 
ON SUATCHIEU
FOR EACH ROW
DECLARE
    ROWCNT number;
BEGIN
    SELECT COUNT(SC.MASC)
	INTO ROWCNT
    FROM SUATCHIEU SC
    WHERE  SC.MARAP = :new.MARAP
    AND SC.MAPHIM = :new.MAPHIM
    AND SC.NGAYCHIEU = :new.NGAYCHIEU
    AND SC.THOIGIANCHIEU = :new.THOIGIANCHIEU;
    
	IF ROWCNT > 0
    THEN
		RAISE_APPLICATION_ERROR(-20000, 'Tai 1 thoi diem, 1 rap chi chieu 1 bo phim duy nhat.');
	END IF;
END;
ALTER TRIGGER TR_THOIGIANCHIEU ENABLE;

-------------------------------------------------------------
-- TRIGGER 5: Tong gia tien cua Hoa don phai bang tong tri gia cac san pham ma khach hang da mua.
-------------------------------------------------------------

CREATE OR REPLACE EDITIONABLE TRIGGER TR_TONGTIEN_HD
BEFORE INSERT OR UPDATE
ON HOADON
FOR EACH ROW
DECLARE
    TongTien number;
BEGIN
    SELECT SUM(CTHD.THANHTIEN)
	INTO TongTien
    FROM CTHD CTHD
    WHERE  CTHD.SOHD = :new.SOHD;
    
	IF TongTien != :new.TONGTIEN
    THEN
		RAISE_APPLICATION_ERROR(-20000, 'Tong gia tien cua Hoa don phai bang tong tri gia cac san pham ma khach hang da mua.');
	END IF;
END;
ALTER TRIGGER TR_TONGTIEN_HD ENABLE;

-------------------------------------------------------------
-- TRIGGER 6: Tong gia tien cua Hoa don phai bang tong tri gia cac san pham ma khach hang da mua.
-------------------------------------------------------------

CREATE OR REPLACE EDITIONABLE TRIGGER TR_TONGSOGHE
BEFORE INSERT OR UPDATE
ON GHE
FOR EACH ROW
DECLARE
    TongGheHt number;
    TongSlGhe number;
BEGIN
    SELECT COUNT(GHE.MAGHE)
	INTO TongGheHt
    FROM GHE GHE
    WHERE  GHE.MARAP = :new.MARAP;
    
    SELECT RC.SLGHE
	INTO TongSlGhe
    FROM RAPCHIEU RC
    WHERE  RC.MARAP = :new.MARAP;

	IF TongGheHt >= TongSlGhe
    THEN
		RAISE_APPLICATION_ERROR(-20000, 'Tong so trong he thong khong duoc lon hon so luong ghe thuc cua Rap');
	END IF;
END;

ALTER TRIGGER TR_TONGSOGHE ENABLE;

-------------------------------------------------------------
-- TRIGGER 7: Ngay dang ky cua thanh vien phai truoc ngay lap hoa don.
-------------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER TG_NGAYDANGKY_HD
BEFORE INSERT OR UPDATE
ON HOADON
FOR EACH ROW
DECLARE
    ResDate date;
    HdDate date;
BEGIN
    SELECT max(TV.NGAYDANGKY)
    INTO ResDate
    FROM THANHVIEN TV
    WHERE  TV.MATV = :new.MATV;
    
    SELECT min(HD.NGAYHD)
    INTO HdDate
    FROM HOADON HD
    WHERE  HD.MATV = :new.MATV;

    IF ResDate > HdDate
    THEN
        RAISE_APPLICATION_ERROR(-20000, 'Ngay dang ky cua thanh vien phai truoc ngay lap hoa don.');
    END IF;
END;

ALTER TRIGGER TG_NGAYDANGKY_HD ENABLE;  

-------------------------------------------------------------
-- TRIGGER 8: Nhan vien phai du 18 tuoi
-------------------------------------------------------------
create or replace trigger nhanvien18tuoi
before insert on NHANVIEN
for each row
declare tuoi number;
begin
select (extract(year from NGAYVAOLAM) - extract(year from NGAYSINH)) into tuoi
from nhanvien;
if (tuoi <18) then
raise_application_error(-2000,'nhan vien khong du tuoi');
else 
dbms_output.put_line('them thanh cong');
end if;
end;
  
--------------------------------------------------------
--  DDL for Sequence SEQ_SHD
--------------------------------------------------------

CREATE SEQUENCE  "SEQ_SHD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
REM INSERTING into BAOCAO
SET DEFINE OFF;


