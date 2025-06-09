-- File
CREATE TABLE files (
         id BIGSERIAL PRIMARY KEY,
         public_id VARCHAR(255),
         file_name VARCHAR(255),
         image_url VARCHAR(1000),

         product_id BIGINT,
         CONSTRAINT fk_file_product FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Index
CREATE INDEX idx_file_product_id ON files (product_id);
