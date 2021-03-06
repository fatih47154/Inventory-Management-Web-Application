namespace Inventory_Management_Web_Application.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ArizaDurum")]
    public partial class ArizaDurum
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ArizaDurum()
        {
            ArizaEskiKayitlar = new HashSet<ArizaEskiKayitlar>();
        }

        public int ID { get; set; }

        public DateTime? VerilisTarihi { get; set; }

        public DateTime? TahminiGelisTarihi { get; set; }

        [StringLength(100)]
        public string GarantiFirma { get; set; }

        [StringLength(100)]
        public string KargoNo { get; set; }

        public int? GarantiVerenKisiID { get; set; }

        public bool? Aktif { get; set; }

        public int? stkID { get; set; }

        public virtual Personel Personel { get; set; }

        public virtual UrunStok UrunStok { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ArizaEskiKayitlar> ArizaEskiKayitlar { get; set; }
    }
}
