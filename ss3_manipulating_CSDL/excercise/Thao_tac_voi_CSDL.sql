use quan_ly_ban_hang;

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT 
    order_id, order_date, order_total_price
FROM
    `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách 
SELECT 
    c.customer_id, customer_name, product_name
FROM
    customer c
        JOIN
    `order` o ON c.customer_id = o.customer_id
        JOIN
    order_detail od ON o.order_id = od.order_id
        JOIN
    product p ON od.product_id = p.product_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào 
SELECT 
    c.customer_id, customer_name
FROM
    customer c
        LEFT JOIN
    `order` o ON c.customer_id = o.customer_id
WHERE
    o.order_id IS NULL;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
--  Giá bán của từng loại được tính = odQTY*pPrice) 
SELECT 
    o.order_id,
    order_date,
    SUM(order_quantity * product_price) AS total
FROM
    `order` o
        JOIN
    order_detail od ON o.order_id = od.order_id
        JOIN
    product p ON od.product_id = p.product_id
GROUP BY order_id;