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

# Game-Development/tutorial-5
## https://csui-game-development.github.io/tutorials/tutorial-5/  

### Latihan Mandiri: Membuat dan Menambah Variasi Aset
1. Membuat minimal 1 (satu) objek baru  
- Membuat scene baru dengan root AnimatedSprite2D
- Membuat SpriteFrame baru dengan SpriteSheet pohon yang diambil dari pixelfrog-assets.itch.io  
- Memilih frame yang akan digunakan untuk animasi Default pohon  
- Menambahkan Area2D, CollisionShape2D, dan signal untuk deteksi pemain  
- Jika pemain kontak dengan pohon maka visual pohon akan menghilang    
  
2. Implementasikan interaksi antara objek baru  
- Membuat node Sprite2D baru totem yang diambil dari pixelfrog-assets.itch.io
- Menambahkan Area2D, CollisionShape2D, dan signal untuk deteksi pemain
- Menyimpan node yang memiliki semua instansi pohon dalam level
- Jika pemain kontak dengan totem maka visual setiap pohon akan kembali  
  
3. Membuat minimal 1 (satu) audio dan Implementasikan audio feedback dari interaksi antara objek baru  
- Menambah AudioStreamPlayer2D pada scene pohon
- Menambah stream suara daun yang diambil dari pixabay.com  
- Stream akan dimainkan ketika pemain kontak dengan pohon  
  
4. Membuat minimal 1 (satu) musik latar (background music)  
- Rekam suara mengetuk tangan ke meja dengan Audacity  
- Musik latar baru akan dimainkan ketika pemain kontak dengan totem  
- Jika pemain kontak dengan totem lagi maka musik latar akan kembali ke sebelumnya
  
### Referensi
- https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html
- https://docs.godotengine.org/en/stable/classes/class_sprite2d.html#class-sprite2d-property-flip-h
  
### Assets used
- Rustle Sound Effect by <a href="https://pixabay.com/users/freesound_community-46691455/?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=36789">freesound_community</a> from <a href="https://pixabay.com//?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=36789">Pixabay</a>
- Tree and Post by Pixel Frog from https://pixelfrog-assets.itch.io/tiny-swords
