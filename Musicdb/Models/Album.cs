//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Musicdb.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Album
    {
        public int AlbumID { get; set; }
        public string Title { get; set; }
        public System.DateTime ReleasedDate { get; set; }
        public string Genere { get; set; }
        public string AlbumPhoto { get; set; }
        public int ArtistID { get; set; }
    
        public virtual Artist Artist { get; set; }
    }
}
