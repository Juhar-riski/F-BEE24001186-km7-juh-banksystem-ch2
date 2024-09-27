const readline = require('readline');

class SaldoManager {
    constructor() {
        this.saldo = 0;
        this.rl = readline.createInterface({
            input: process.stdin,
            output: process.stdout
        });
        this.updateSaldoDisplay();
    }

    formatRupiah(angka) {
        return new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR' }).format(angka).replace('IDR', 'Rp').replace(',00', '');
    }

    updateSaldoDisplay() {
        console.log(`Saldo Anda: ${this.formatRupiah(this.saldo)}`);
    }

    askQuestion(query) {
        return new Promise((resolve) => {
            this.rl.question(query, (answer) => {
                resolve(answer);
            });
        });
    }
    
    async deposit(amount) {
        const tambah = parseInt(amount, 10);
        if (!isNaN(tambah) && tambah > 0) {
            this.saldo += tambah;
            this.updateSaldoDisplay();
        } else {
            console.log("Masukkan jumlah yang valid.");
        }
    }

    async withdraw(amount) {
        if (this.saldo === 0) {
            console.log("Saldo Anda sudah 0.");
            return;
        }
        const kurangi = parseInt(amount, 10);
        if (!isNaN(kurangi) && kurangi > 0 && kurangi <= this.saldo) {
            this.saldo -= kurangi;
            this.updateSaldoDisplay();
        } else if (kurangi > this.saldo) {
            setTimeout(() => {console.log("Saldo tidak cukup.")},100);
        } else {
            console.log("Masukkan jumlah yang valid.");
        }
    }
 
    async pilihan() {
        console.log("\nSilahkan Pilih tindakan:");
        console.log("1. Tambahkan Saldo");
        console.log("2. Kurangi Saldo");
        console.log("3. Keluar");

        const pilihan = await this.askQuestion("Masukkan pilihan Anda (1/2/3): ");
        return pilihan;
    }

    close() {
        this.rl.close();
    }

    
    async run() {
        let running = true;
        while (running) {
            const pilihan = await this.pilihan();

            switch (pilihan.trim()) {
                case '1':
                    const addAmount =await this.askQuestion("Masukkan saldo barunya boss: ");
                    await this.deposit(addAmount);
                    break;
                case '2':
                    const deductAmount = await this.askQuestion("Banyak pengeluaran nih : ");
                    await this.withdrawdo(deductAmount);
                    break;
                case '3':
                    running = false;
                    console.log("Program selesai ya bruh.");
                    this.close();
                    break;
                default:
                    console.log("Pilihan tidak valid. Silakan coba lagi.");
            }
        }
    }
}

module.exports = SaldoManager;