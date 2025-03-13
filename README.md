# Game-Development/tutorial-3
## https://csui-game-development.github.io/tutorials/tutorial-3/

### Latihan Mandiri: Eksplorasi Mekanika Pergerakan
- **Double jump - karakter pemain bisa melakukan aksi loncat sebanyak dua kali.**   
Proses pengerjaannya dengan membuat variabel yang berfungsi sebagai jumlah maksimal
lompatan di udara yang dapat digunakan oleh karakter, setelah itu membuat variabel salinan 
dari variabel pertama yang digunakan saat proses permainan. Saat tombol arah atas ditekan,
jika variabel salinan lebih dari 0 dan is_on_floor() adalah false, maka karakter akan lompat 
kembali dan variabel salinan berkurang 1. Ketika karakter mencapai lantai 
(is_on_floor() adalah true) maka variabel salinan akan salin dari variabel original kembali.

- **Tampilan karakter sesuai dengan arah jalannya**  
Proses pengerjaanya dengan cara mengambil child node Sprite2D dengan @onready dan 
merubah atribut flip_h menjadi true ketika bergerak ke kiri dan flip_h menjadi 
false ketika bergerak ke kanan.

### Referensi
- https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html
- https://docs.godotengine.org/en/stable/classes/class_sprite2d.html#class-sprite2d-property-flip-h
