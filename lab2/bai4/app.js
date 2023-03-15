var thu_ngay = ["Tue","Thu","Sat","Nine"];
// xóa nine ra khỏi mảng
thu_ngay.pop();
// thêm sunday vào cuối mảng
thu_ngay.push("Sunday");
// thêm monday vào đầu mảngmảng
thu_ngay.unshift("Mon");
// xóa Thu khỏi mảng và thêm wed, thur, friday vào mảng
thu_ngay.splice(2,1,"Wed","Thur","Friday");
// in mảng ra màn hình
document.writeln(thu_ngay.join("--"));