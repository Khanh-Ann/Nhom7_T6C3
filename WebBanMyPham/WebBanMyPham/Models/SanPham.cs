//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebBanMyPham.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            this.CHITIETDONHANGs = new HashSet<CHITIETDONHANG>();
        }
    
        public int MaSP { get; set; }
        public string TenSP { get; set; }
        public Nullable<decimal> Giaban { get; set; }
        public string Mota { get; set; }
        public string Anhbia { get; set; }
        public Nullable<System.DateTime> Ngaycapnhat { get; set; }
        public Nullable<int> Soluongton { get; set; }
        public Nullable<int> MaLoai { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETDONHANG> CHITIETDONHANGs { get; set; }
        public virtual LoaiSP LoaiSP { get; set; }
    }
}
