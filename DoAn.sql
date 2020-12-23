CREATE DATABASE DO_AN_CUOI_KI
USE DO_AN_CUOI_KI
DROP DATABASE DO_AN_CUOI_KI

CREATE TABLE INFORMATION
(
	MSSV NVARCHAR(10) NOT NULL,
	HOTEN NVARCHAR(50) NOT NULL,
	NGAYSINH VARCHAR(50) NOT NULL,
)
ALTER TABLE INFORMATION ADD
	CONSTRAINT PK_MSSV_INFORMATION PRIMARY KEY(MSSV)

CREATE TABLE _IMAGE
(
	MSSV NVARCHAR(10) NOT NULL,
	LINK_IMAGE_01 VARCHAR(50) NOT NULL,
	LINK_IMAGE_02 VARCHAR(50) NOT NULL
)
ALTER TABLE _IMAGE ADD
	CONSTRAINT PK_LINK_IMAGE_02_IMAGE PRIMARY KEY(LINK_IMAGE_02),
	CONSTRAINT FK_MSSV_IMAGE FOREIGN KEY(MSSV) REFERENCES INFORMATION (MSSV)


CREATE TABLE QRCODE
(
	MSSV NVARCHAR(10) NOT NULL,
	LINK_QR VARCHAR(50) NOT NULL,
	LINK_IMAGE_02 VARCHAR(50) NOT NULL
)
ALTER TABLE QRCODE ADD
	CONSTRAINT PK_MSSV_QRCODE PRIMARY KEY(MSSV),
	CONSTRAINT FK_MSSV_QRCODE FOREIGN KEY(MSSV) REFERENCES INFORMATION (MSSV),
	CONSTRAINT FK_LINK_IMAGE_02_QRCODE FOREIGN KEY(LINK_IMAGE_02) REFERENCES _IMAGE (LINK_IMAGE_02)

SET DATEFORMAT dmy