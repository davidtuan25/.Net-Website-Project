//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DotNet_Website_Project.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class WORK_TIME
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public WORK_TIME()
        {
            this.SHIFT_WORK_SCHEDULE = new HashSet<SHIFT_WORK_SCHEDULE>();
            this.SHIFT_WORK_SCHEDULE1 = new HashSet<SHIFT_WORK_SCHEDULE>();
            this.SHIFT_WORK_SCHEDULE2 = new HashSet<SHIFT_WORK_SCHEDULE>();
            this.SHIFT_WORK_SCHEDULE3 = new HashSet<SHIFT_WORK_SCHEDULE>();
            this.SHIFT_WORK_SCHEDULE4 = new HashSet<SHIFT_WORK_SCHEDULE>();
            this.SHIFT_WORK_SCHEDULE5 = new HashSet<SHIFT_WORK_SCHEDULE>();
            this.SHIFT_WORK_SCHEDULE6 = new HashSet<SHIFT_WORK_SCHEDULE>();
        }
    
        public int WORK_TIME_ID { get; set; }
        public string START_TIME { get; set; }
        public string END_TIME { get; set; }
        public Nullable<int> FIRST_BONUSTIME_ID { get; set; }
        public Nullable<int> SECOND_BONUSTIME_ID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SHIFT_WORK_SCHEDULE> SHIFT_WORK_SCHEDULE { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SHIFT_WORK_SCHEDULE> SHIFT_WORK_SCHEDULE1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SHIFT_WORK_SCHEDULE> SHIFT_WORK_SCHEDULE2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SHIFT_WORK_SCHEDULE> SHIFT_WORK_SCHEDULE3 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SHIFT_WORK_SCHEDULE> SHIFT_WORK_SCHEDULE4 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SHIFT_WORK_SCHEDULE> SHIFT_WORK_SCHEDULE5 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SHIFT_WORK_SCHEDULE> SHIFT_WORK_SCHEDULE6 { get; set; }
    }
}