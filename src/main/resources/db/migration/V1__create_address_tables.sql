-- Province
CREATE TABLE provinces (
          id INTEGER PRIMARY KEY,
          name VARCHAR(255) NOT NULL
);

-- District
CREATE TABLE districts (
          id INTEGER PRIMARY KEY,
          name VARCHAR(255) NOT NULL,
          province_id INTEGER NOT NULL,
          CONSTRAINT fk_district_province FOREIGN KEY (province_id) REFERENCES province(id)
);

-- Ward
CREATE TABLE wards (
          code VARCHAR(50) PRIMARY KEY,
          name VARCHAR(255) NOT NULL,
          district_id INTEGER NOT NULL,
          CONSTRAINT fk_ward_district FOREIGN KEY (district_id) REFERENCES district(id)
);

-- Address
CREATE TABLE addresses (
         id BIGSERIAL PRIMARY KEY,
         is_default BOOLEAN,
         is_visible BOOLEAN,
         status VARCHAR,
         phone VARCHAR(50),
         street_detail VARCHAR(255),
         ward_code VARCHAR(50),
         district_id BIGINT,
         province_id BIGINT,
         user_id BIGINT,
         created_by VARCHAR(255),
         updated_by VARCHAR(255),
         created_at TIMESTAMP,
         updated_at TIMESTAMP,

         CONSTRAINT fk_address_ward FOREIGN KEY (ward_code) REFERENCES ward(code),
         CONSTRAINT fk_address_district FOREIGN KEY (district_id) REFERENCES district(id),
         CONSTRAINT fk_address_province FOREIGN KEY (province_id) REFERENCES province(id)
);



-- Index
CREATE INDEX idx_province_id ON districts(province_id);

CREATE INDEX idx_district_id ON wards(district_id);

CREATE INDEX idx_address_ward_code ON addresses(ward_code);
CREATE INDEX idx_address_district_id ON addresses(district_id);
CREATE INDEX idx_address_province_id ON addresses(province_id);
CREATE INDEX idx_address_user_id ON addresses(user_id);