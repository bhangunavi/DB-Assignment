# DB-Assignment

**Questions**

### 1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram. ###

The given schema, there is a relationship through a foreign key.
as "ALTER TABLE product ADD FOREIGN KEY (category_id) REFERENCES product_category(id);"

Acc to this statement a foreign key constraint on the "Product" table, is linking the category_id column in the "Product" table to the id column in the "Product_Category" table.So this relationship signifies that each product in the "Product" table is closely associated to a specific category defined in the "Product_Category" table.
This relationship allows us to organize and categorize products in a structured manner, making it easier to query and manage data related to products and their respective categories.

### 2. How could you ensure that each product in the "Product" table has a valid category assigned to it? ###

ALTER TABLE product ADD FOREIGN KEY (category_id) REFERENCES product_category(id);

