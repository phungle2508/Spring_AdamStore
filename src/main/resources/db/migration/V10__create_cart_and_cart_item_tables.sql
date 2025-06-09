-- Tạo bảng tbl_cart
CREATE TABLE carts (
          id BIGINT PRIMARY KEY,
          created_at DATE,
          updated_at DATE,

          user_id BIGINT NOT NULL,
          CONSTRAINT fk_cart_user FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Tạo bảng cart_item
CREATE TABLE cart_items (
           id BIGINT PRIMARY KEY,
           price DOUBLE PRECISION,
           quantity INT,

           cart_id BIGINT,
           product_variant_id BIGINT NOT NULL,
           CONSTRAINT fk_cart_item_product_variant FOREIGN KEY (product_variant_id) REFERENCES product_variants(id),
           CONSTRAINT fk_cart_item_cart FOREIGN KEY (cart_id) REFERENCES carts(id)
);
