#FLOWCHARRT

A[Start] --> B[TAMPILKAN SALDO,MASUKKAN PILIHAN]
B --> C{Decision}
C -->|Pilihan 1| D[Tambah Saldo] --> B[TAMPILKAN SALDO,MASUKKAN PILIHAN]
C -->|Pilihan 2| E[Kurangi Saldo] --> B[TAMPILKAN SALDO,MASUKKAN PILIHAN]
C -->|Pilihan 3| F[Keluar]
F --> G[End]

// Bank_account.js tempat class dengan 
// banksystem.js tempat implementasi/running code
alur sama kyk flowchart
