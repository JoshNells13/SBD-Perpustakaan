ALTER TABLE buku
ADD CONSTRAINT uq_buku_isbn UNIQUE (isbn);