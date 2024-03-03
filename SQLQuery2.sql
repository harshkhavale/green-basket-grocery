SELECT PD.ProductId, COUNT(PD.ProductId) as productCount,
       P.ProductName, P.ProductPrice, P.ProductSellingPrice,P.ProductSellingPrice* COUNT(PD.ProductId) as total,I.*,B.BrandName,C.CategoryName,S.SubCatName
FROM ProductDeliveryTbl PD
INNER JOIN ProductDataTbl P ON PD.ProductId = P.ProductId
join BrandsTbl B on B.BrandId = P.BrandId
join CategoriesTbl C on C.CategoryId = P.CategoryId
join SubCatTbl S on S.SubCatId = P.SubCategoryId
CROSS APPLY(select top 1 * from ProductImageTbl I where I.ProductId = PD.ProductId order by I.ProductId desc)I
WHERE PD.DateTime BETWEEN '2023-01-01' AND '2023-05-05' 
GROUP BY PD.ProductId, P.ProductName, P.ProductPrice, P.ProductSellingPrice, 
         P.ProductStock, P.ProductDetails, P.ProductDescription, P.ProductHighlight1, 
         P.ProductHighlight2, P.FreeDelivery, P.CashOnDelivery,I.ImageExtention,I.ImageId,I.ImageName,I.ProductId,B.BrandId,B.BrandName,C.CategoryId,C.CategoryName,S.CategoryId,S.SubCatId,S.SubCatName;