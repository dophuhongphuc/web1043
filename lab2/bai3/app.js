 //nhap ho ten tu ban phim
 var hoTen = prompt("nhap vao ho va ten can tach: ");
 //nhap gioi tinh tu ban phim
 var gioiTinh = prompt("nhap vao gioi tinh: ");
 //khai bao bien theo yeu cau cua bai toan
 var hoTenHopLe = hoTen.trim();
 var ho = null;
 var tenDem = null;
 var ten = null;
 //kiem tra ho voi ten dem va ten bang dau cach
 for(var i=0;i<hoTenHopLe.length;i++)
 {
  if(hoTenHopLe[i]==" ")
  {
      //tach ho tu ho va ten nhap tu ban phim 
      ho = hoTenHopLe.slice(0,i);
      hoTenHopLe = hoTenHopLe.slice(i).trim();
      break;
  }
 }
//kiem tra co ton tai ten dem
//gia su ten nhap ban dau khong co ten dem
  var check = false;
  for(var i=hoTenHopLe.length-1;i>=0;i--)
 {
  if(hoTenHopLe[i]==" ")
  {
      //ton tai ten dem
      check = true;  
      //tach ten tu ho va ten        
      ten = hoTenHopLe.slice(i).trim();
      //tach ten dem tu ho va ten
      tenDem = hoTenHopLe.slice(0,i);
      break;
  }
 }
 //xet truong hop khong ten dem
 if(check==false)
 {
  ten = hoTenHopLe;
  console.log("Ho: "+ho);
  console.log("Ten: "+ten);
  console.log("Ho va ten: "+ho+" "+ten);
 }
 //xet truong hop co ten dem
 else
 {
  console.log("Ho: "+ho);
  console.log("Ten dem: "+tenDem);
  console.log("Ten: "+ten);
  //kiem tra gioi tinh nhap tu ban phim va thay doi theo yeu cau cua de bai
  //neu la nam va co ten dem thi doi ten dem thanh Van
  if(gioiTinh.toLowerCase()=="nam")
  {
      tenDem = "Van";
  }
  //neu la nu va co ten dem thi doi ten dem thanh Ve
  else if(gioiTinh.toLowerCase()=="nu")
  {
      tenDem = "Ve";    
  }
  console.log("Ho va ten: "+ho+" "+tenDem+" "+ten);
 }