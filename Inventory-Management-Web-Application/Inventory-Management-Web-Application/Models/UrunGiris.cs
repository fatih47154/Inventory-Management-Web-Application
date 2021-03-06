namespace Inventory_Management_Web_Application.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class UrunGiris
    {
        public int ID { get; set; }

        public int? AlinanMiktar { get; set; }

        public int? KalanMiktar { get; set; }

        public int? AlanPerID { get; set; }

        [StringLength(500)]
        public string Aciklama { get; set; }

        public int? TedarikciID { get; set; }

        public int? YazilimUrunID { get; set; }

        [Column(TypeName = "date")]
        public DateTime? GirisTarihi { get; set; }

        public int? StokID { get; set; }

        public virtual Personel Personel { get; set; }

        public virtual Tedarikci Tedarikci { get; set; }

        public virtual UrunStok UrunStok { get; set; }

        public virtual YazilimUrun YazilimUrun { get; set; }
    }
}
