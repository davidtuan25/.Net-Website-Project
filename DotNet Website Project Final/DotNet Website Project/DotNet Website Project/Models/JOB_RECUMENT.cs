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
    
    public partial class JOB_RECUMENT
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public JOB_RECUMENT()
        {
            this.FEED_BACKLIST = new HashSet<FEED_BACKLIST>();
            this.JOB_RECUMENT_PROCESSING = new HashSet<JOB_RECUMENT_PROCESSING>();
            this.REFERRAL_WAGE_BILL = new HashSet<REFERRAL_WAGE_BILL>();
            this.JOB_WAGE_BILL = new HashSet<JOB_WAGE_BILL>();
        }
    
        public int RECUMENT_ID { get; set; }
        public int EMPLOYER_ID { get; set; }
        public Nullable<int> EMPLOYEE_AMOUNT { get; set; }
        public Nullable<int> JOB_ID { get; set; }
        public string START_DATE { get; set; }
        public Nullable<int> WORK_MONTH_AMOUNT { get; set; }
        public string CREATED_DATE { get; set; }
        public string APPROVAL_DEADLINE { get; set; }
        public Nullable<double> REFERRAL_WAGE_COST { get; set; }
        public Nullable<int> RECUMENT_STATUS { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FEED_BACKLIST> FEED_BACKLIST { get; set; }
        public virtual JOB JOB { get; set; }
        public virtual PROFILE PROFILE { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<JOB_RECUMENT_PROCESSING> JOB_RECUMENT_PROCESSING { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<REFERRAL_WAGE_BILL> REFERRAL_WAGE_BILL { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<JOB_WAGE_BILL> JOB_WAGE_BILL { get; set; }
    }
}
