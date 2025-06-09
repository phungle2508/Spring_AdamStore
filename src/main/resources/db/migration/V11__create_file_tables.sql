CREATE TABLE files (
         id BIGINT PRIMARY KEY,
         public_id VARCHAR(255),
         file_name VARCHAR(255),
         image_url VARCHAR(1000),

         product_id BIGINT,
         CONSTRAINT fk_file_product FOREIGN KEY (product_id) REFERENCES products(id)
);
