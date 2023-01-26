.model small
.code
org 100h
start:
	jmp mulai
nama db 13,10,'Nama Pembeli : $'  
tampung_nama	 db 30,?,30 dup(?)  

buah db 13,10,'Buah Yang Ingin Dibeli : $'
tampung_buah	 db 13,?,13 dup(?)

kg   db 13,10,'Berapa Kilo : $' 
tampung_kg    db 13,?,13 dup(?)


lanjut	   db 13,10,'LANJUT Tekan y untuk lanjut >>>>>>>>>>>>> '




a db 01
b db 02
c db 03
d db 04
e db 05
f db 06
g db 07
h db 08
i db 09
j dw 15

daftar db 13,10,'|--------------------------------------------------------------------|'
      db 13,10,'|				               TOKO BUAH	             		      |'
      db 13,10,'|---------------------------------------------------------------------|'
      db 13,10,'+---+------------+--------------+------------+------------+-----------|'
      db 13,10,'|No | Jenis Buah | Harga(1/2kg) | Harga(1kg) | Harga(2kg) | Harga(3k) |'
      db 13,10,'+---+------------+--------------+------------+------------+-----------|'
      db 13,10,'|01 |    Apel    |   Rp 20.000  | Rp 40.000  | Rp 80.000  |Rp 120.000 |'
      db 13,10,'+---+------------+--------------+------------+------------+-----------|'
      db 13,10,'|02 |   Manggis  |   Rp 25.000  | Rp 50.000  | Rp 100.000 |Rp 150.000 |'
      db 13,10,'+---+------------+--------------+------------+------------+-----------|'
      db 13,10,'|03 |    Jeruk   |   Rp 34.000  | Rp 68.000  | Rp 136.000 |Rp 204.000 |'
      db 13,10,'+---+------------+--------------+------------+------------+-----------|'
      db 13,10,'|04 |    Pear    |   Rp 18.000  | Rp 35.000  | Rp 70.000  |Rp 105.000 |'
      db 13,10,'+---+------------+--------------+------------+------------+-----------|'
      db 13,10,'|05 |    Naga    |   Rp 20.000  | Rp 40.000  | Rp 80.000  |Rp 120.000 |'
      db 13,10,'+---+------------+--------------+------------+------------+-----------|'
      db 13,10,'|06 |   Anggur   |   Rp 50.000  | Rp 100.000 | Rp 200.000 |Rp 300.000 |'
      db 13,10,'+---+------------+--------------+------------+------------+-----------|'
      db 13,10,'|07 |   Delima   |   Rp 35.000  | Rp 70.000  | Rp 140.000 |Rp 210.000 |'
      db 13,10,'+---+------------+--------------+------------+------------+-----------|'
      db 13,10,'|08 |    Jambu   |   Rp 10.000  | Rp 20.000  | Rp 40.000  |Rp 60.000  |'
      db 13,10,'+---+------------+--------------+------------+------------+-----------|'
      db 13,10,'|09 |   Mangga   |   Rp 20.000  | Rp 40.000  | Rp 80.000  |Rp 120.000 |'
      db 13,10,'+---+------------+--------------+------------+------------+-----------|'
      db 13,10,'|10 |    Salak   |   Rp 15.000  | Rp 30.000  | Rp 60.000  |Rp 90.000  |'
      db 13,10,'+---+------------+--------------+------------+------------+-----------|','$'



error		db 13,10,'KODE YANG ANDA MASUKKAN SALAH $'
pilih_ntr	db 13,10,'Silahkan Memilih Buah Yang Anda Ingin Beli : $'
success		db 13,10,'Selamat Anda Berhasil $'

	mulai:
	mov ah,09h
	lea dx,nama
	int 21h
	mov ah,0ah
	lea dx,tampung_nama
	int 21h
	push dx 
	
	mov ah,09h
	mov dx,offset daftar
	int 21h 
	
	jmp proses

	mov ah,09h
	lea dx,buah
	int 21h
	mov ah,0ah
	lea dx,tampung_buah
	int 21h
	push dx

	mov ah,09h
	lea dx,kg
	int 21h
	mov ah,0ah
	lea dx,tampung_kg
	int 21h
	push dx
	
	
	jne error_nsg


error_nsg:
	mov ah,09h
	mov dx,offset error
	int 21h
	int 20h

proses:
	mov ah,09h
	mov dx,offset pilih_ntr
	int 21h

	mov ah,1
	int 21h
	mov bh,al
	mov ah,1
	int 21h
	mov bl,al
	cmp bh,'0'
	cmp bl,'1'
	je hasil1

	cmp bh,'0'
	cmp bl,'2'
	je hasil2

	cmp bh,'0'
	cmp bl,'3'
	je hasil3

	cmp bh,'0'
	cmp bl,'4'
	je hasil4

	cmp bh,'0'
	cmp bl,'5'
	je hasil5

	cmp bh,'0'
	cmp bl,'6'
	je hasil6

	cmp bh,'0'
	cmp bl,'7'
	je hasil7

	cmp bh,'0'
	cmp bl,'8'
	je hasil8
	
	cmp bh,'0'
	cmp bl,'9'
	je hasil9

	cmp bh,'1'
	cmp bl,'0'
	je hasil10



	jne error_nsg
;-------------------------------------------------------------------------------'

hasil1:
	mov ah,09h
	lea dx,teks1
	int 21h
	int 20h
hasil2:
	mov ah,09h
	lea dx,teks2
	int 21h
	int 20h
hasil3:
	mov ah,09h
	lea dx,teks3
	int 21h
	int 20h
hasil4:
	mov ah,09h
	lea dx,teks4
	int 21h
	int 20h
hasil5:
	mov ah,09h
	lea dx,teks5
	int 21h
	int 20h
hasil6:
	mov ah,09h
	lea dx,teks6
	int 21h
	int 20h
hasil7:
	mov ah,09h
	lea dx,teks7
	int 21h
	int 20h
hasil8:
	mov ah,09h
	lea dx,teks8
	int 21h
	int 20h
 hasil9:
	mov ah,09h
	lea dx,teks9
	int 21h
	int 20h 
	hasil10:
	mov ah,09h
	lea dx,teks10
	int 21h
	int 20h
	


;-----------------------------------------------------------------------

teks1 db 13,10,'Anda memilih buah Apel'
      db 13,10,'Jika anda membeli sebanyak 1/2 kilo maka total yang harus anda bayar Rp 20.000'
      db 13,10,'Jika anda membeli sebanyak 1 kilo maka total yang harus anda bayar Rp 40.000'
      db 13,10,'Jika anda membeli sebanyak 2 kilo maka total yang harus anda bayar Rp 80.000'
      db 13,10,'Jika anda membeli sebanyak 3 kilo maka total yang harus anda bayar Rp 120.000'
      db 13,10,'Terima kasih sudah belanja di toko kami $'

teks2 db 13,10,'Anda memilih buah Manggis'
      db 13,10,'Jika anda membeli sebanyak 1/2 kilo maka total yang harus anda bayar Rp 25.000'
      db 13,10,'Jika anda membeli sebanyak 1 kilo maka total yang harus anda bayar Rp 50.000'
      db 13,10,'Jika anda membeli sebanyak 2 kilo maka total yang harus anda bayar Rp 100.000'
      db 13,10,'Jika anda membeli sebanyak 3 kilo maka total yang harus anda bayar Rp 150.000'
      db 13,10,'Terima kasih sudah belanja di toko kami $'

teks3 db 13,10,'Anda memilih buah Jeruk'
      db 13,10,'Jika anda membeli sebanyak 1/2 kilo maka total yang harus anda bayar Rp 34.000'
      db 13,10,'Jika anda membeli sebanyak 1 kilo maka total yang harus anda bayar Rp 68.000'
      db 13,10,'Jika anda membeli sebanyak 2 kilo maka total yang harus anda bayar Rp 136.000'
      db 13,10,'Jika anda membeli sebanyak 3 kilo maka total yang harus anda bayar Rp 204.000'
      db 13,10,'Terima kasih sudah belanja di toko kami $'

teks4 db 13,10,'Anda memilih buah Pear'
      db 13,10,'Jika anda membeli sebanyak 1/2 kilo maka total yang harus anda bayar Rp 18.000'
      db 13,10,'Jika anda membeli sebanyak 1 kilo maka total yang harus anda bayar Rp 35.000'
      db 13,10,'Jika anda membeli sebanyak 2 kilo maka total yang harus anda bayar Rp 70.000'
      db 13,10,'Jika anda membeli sebanyak 3 kilo maka total yang harus anda bayar Rp 105.000'
      db 13,10,'Terima kasih sudah belanja di toko kami $'

teks5 db 13,10,'Anda memilih buah Naga'
      db 13,10,'Jika anda membeli sebanyak 1/2 kilo maka total yang harus anda bayar Rp 20.000'
      db 13,10,'Jika anda membeli sebanyak 1 kilo maka total yang harus anda bayar Rp 40.000'
      db 13,10,'Jika anda membeli sebanyak 2 kilo maka total yang harus anda bayar Rp 80.000'
      db 13,10,'Jika anda membeli sebanyak 3 kilo maka total yang harus anda bayar Rp 120.000'
      db 13,10,'Terima kasih sudah belanja di toko kami $'

teks6 db 13,10,'Anda memilih buah Anggur'
      db 13,10,'Jika anda membeli sebanyak 1/2 kilo maka total yang harus anda bayar Rp 50.000'
      db 13,10,'Jika anda membeli sebanyak 1 kilo maka total yang harus anda bayar Rp 100.000'
      db 13,10,'Jika anda membeli sebanyak 2 kilo maka total yang harus anda bayar Rp 200.000'
      db 13,10,'Jika anda membeli sebanyak 3 kilo maka total yang harus anda bayar Rp 300.000'
      db 13,10,'Terima kasih sudah belanja di toko kami $'

teks7 db 13,10,'Anda memilih buah Delima'
      db 13,10,'Jika anda membeli sebanyak 1/2 kilo maka total yang harus anda bayar Rp 35.000'
      db 13,10,'Jika anda membeli sebanyak 1 kilo maka total yang harus anda bayar Rp 70.000'
      db 13,10,'Jika anda membeli sebanyak 2 kilo maka total yang harus anda bayar Rp 140.000'
      db 13,10,'Jika anda membeli sebanyak 3 kilo maka total yang harus anda bayar Rp 210.000'
      db 13,10,'Terima kasih sudah belanja di toko kami $'

teks8 db 13,10,'Anda memilih buah Jambu'
      db 13,10,'Jika anda membeli sebanyak 1/2 kilo maka total yang harus anda bayar Rp 10.000'
      db 13,10,'Jika anda membeli sebanyak 1 kilo maka total yang harus anda bayar Rp 20.000'
      db 13,10,'Jika anda membeli sebanyak 2 kilo maka total yang harus anda bayar Rp 40.000'
      db 13,10,'Jika anda membeli sebanyak 3 kilo maka total yang harus anda bayar Rp 60.000'
      db 13,10,'Terima kasih sudah belanja di toko kami $'

teks9 db 13,10,'Anda memilih buah Mangga'
      db 13,10,'Jika anda membeli sebanyak 1/2 kilo maka total yang harus anda bayar Rp 20.000'
      db 13,10,'Jika anda membeli sebanyak 1 kilo maka total yang harus anda bayar Rp 40.000'
      db 13,10,'Jika anda membeli sebanyak 2 kilo maka total yang harus anda bayar Rp 80.000'
      db 13,10,'Jika anda membeli sebanyak 3 kilo maka total yang harus anda bayar Rp 120.000'
      db 13,10,'Terima kasih sudah belanja di toko kami $'

teks10 db 13,10,'Anda memilih buah Salak'
      db 13,10,'Jika anda membeli sebanyak 1/2 kilo maka total yang harus anda bayar Rp 15.000'
      db 13,10,'Jika anda membeli sebanyak 1 kilo maka total yang harus anda bayar Rp 30.000'
      db 13,10,'Jika anda membeli sebanyak 2 kilo maka total yang harus anda bayar Rp 60.000'
      db 13,10,'Jika anda membeli sebanyak 3 kilo maka total yang harus anda bayar Rp 90.000'
      db 13,10,'Terima kasih sudah belanja di toko kami $'
  



end start





	






