CREATE TABLE Tedarikciler(
             tedarikci_id CHAR(5),
	         tedarikci_ismi VARCHAR(50),
	         tedarikci_adres VARCHAR (50),
	         ulasim_tarihi DATE   
);

CREATE TABLE tedarikci_ismi as SELECT ulasim_tarihi, tedarikci_ismi FROM tedarikciler;

INSERT INTO tedarikciler VALUES ('12345', 'Yunus Emre', 'TRT Mh. Istanbul/Turkiye', '2023-7-25');
INSERT INTO tedarikciler VALUES ('12346', 'Taptuk Emre', 'TRT TV Mh. Istanbul/Turkiye', '2023-7-26');

