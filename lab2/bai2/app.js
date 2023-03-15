let a = prompt("Moi ban nhap a:");
        let a1 = parseFloat(a)
        let b = prompt("Moi ban nhap b:");
        let b1 = parseFloat(b)
        let c = prompt("Moi ban nhap c:");
        let c1 = parseFloat(c)
        if ((a + b > c) || (a + c > b) ||(b + c > a)){
            console.log("Day la hinh tam giac !");
        }else if ((a == b) || (b == c) || (c == a)){
            console.log("Day la tam giac can !");
        }else if ((a == b) && (b == c) && (c == a)){
            console.log("Day la tam giac deu !");
        }else if ((a * a == b * b + c * c) || (b * b == a * a + c * c) || ( c * c == a * a + b * b)){
            console.log("Day la tam giac vuong !");
        }else{
            console.log("Day khong phai la tam giac !")
        }