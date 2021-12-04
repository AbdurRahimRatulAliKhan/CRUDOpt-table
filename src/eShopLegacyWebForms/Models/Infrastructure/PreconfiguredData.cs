using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eShopLegacyWebForms.Models.Infrastructure
{
    public static class PreconfiguredData
    {
        public static List<CatalogItem> GetPreconfiguredCatalogItems()
        {
            return new List<CatalogItem>()
            {
                new CatalogItem { Id =1, CatalogTypeId = 2, CatalogBrandId = 2, AvailableStock = 100, Description = "", Name = "", PictureFileName = "" },
                new CatalogItem { Id =2, CatalogTypeId = 1, CatalogBrandId = 2, AvailableStock = 100, Description = "", Name = "", PictureFileName = "" },
            };
        }

        public static IEnumerable<CatalogBrand> GetPreconfiguredCatalogBrands()
        {
            return new List<CatalogBrand>()
            {
                new CatalogBrand() { Id =1, Brand = "DHA"},
                new CatalogBrand() { Id =2, Brand = "RAJ" },
                new CatalogBrand() { Id =3, Brand = "SYLH" },
                new CatalogBrand() { Id =4, Brand = "KHU" }
            };
        }

        public static IEnumerable<CatalogType> GetPreconfiguredCatalogTypes()
        {
            return new List<CatalogType>()
            {
                new CatalogType() { Id =1, Type = "Active"},
                new CatalogType() { Id =2, Type = "Inactive" },
               
            };
        }
    }
}