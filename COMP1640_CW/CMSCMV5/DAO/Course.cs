//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CMSCMV5.DAO
{
    using System;
    using System.Collections.Generic;
    
    public partial class Course
    {
        public int IDCourse { get; set; }
        public byte[] cm { get; set; }
        public Nullable<int> class_IDclass { get; set; }
        public string Dates { get; set; }
        public Nullable<short> Credits { get; set; }
        public string Days { get; set; }
        public Nullable<System.TimeSpan> BTime { get; set; }
        public Nullable<System.TimeSpan> ETime { get; set; }
        public Nullable<int> Location { get; set; }
        public Nullable<int> instructor { get; set; }
    
        public virtual Class Class { get; set; }
        public virtual Instructor Instructor1 { get; set; }
    }
}