//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WpfApp1.DataBase
{
    using System;
    using System.Collections.Generic;

    public partial class Tovars
    {
        public string IdT { get; set; }
        public string Name { get; set; }
        public string UnitOnes { get; set; }
        public string Price { get; set; }
        public string PossibleDiscount { get; set; }
        public Nullable<int> IdProizvoditel { get; set; }
        public Nullable<int> IdPostavshik { get; set; }
        public Nullable<int> IdTypeT { get; set; }
        public string Discount { get; set; }
        public string CountStock { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
    
        public virtual Postavshik Postavshik { get; set; }
        public virtual Proizvoditel Proizvoditel { get; set; }
        public virtual TypeT TypeT { get; set; }
    }
}