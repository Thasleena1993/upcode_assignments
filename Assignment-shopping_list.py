shopping_list = []

products = [
    {"id":1,"title":"Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops","price":109.95,"description":"Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday","category":"men's clothing","image":"https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_t.png","rating":{"rate":3.9,"count":120}},
    {"id":2,"title":"Mens Casual Premium Slim Fit T-Shirts ","price":22.3,"description":"Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.","category":"men's clothing","image":"https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_t.png","rating":{"rate":4.1,"count":259}},
    {"id":3,"title":"Mens Cotton Jacket","price":55.99,"description":"great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.","category":"men's clothing","image":"https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_t.png","rating":{"rate":4.7,"count":500}},
    {"id":4,"title":"Mens Casual Slim Fit","price":15.99,"description":"The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.","category":"men's clothing","image":"https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_t.png","rating":{"rate":2.1,"count":430}},
    {"id":5,"title":"John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet","price":695,"description":"From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.","category":"jewelery","image":"https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_t.png","rating":{"rate":4.6,"count":400}}
    ] 

def fetch_prod():
                print("\n" + "*" * 60) 
                print("*{:^58}*".format("AVAILABLE PRODUCTS")) 
                print("*" * 60)
                count = 1
                for product in products:
                    print (f"{count:<3}. {product['title']:<80}    Rs.{product['price']:>8.2f}")
                    count = count + 1
                return products    

def add_prod():

                avail_products = fetch_prod() 
                item = int(input("\nEnter the product id :"))
                quantity = int(input("\nEnter the Quantity :"))
                selected_product = avail_products[item-1]
                shopping_list.append({
                "name": selected_product["title"],
                "price": selected_product["price"],
                "quantity": quantity
                 })
                print("\nProduct added successfully ! ")
                return avail_products

def view_cart():
                  
                if len(shopping_list)== 0:
                    print("Your cart is empty..")
                else :
                    print("*" * 105) 
                    print("*{:^100}*".format(" Your cart"))
                    print("*" * 105)
                    print(f"{'No.':<5} {'Product':<80}{'Qty':<5} {'Total Price':<10}\n")   
                    count = 1
                    grand_total = 0
          
                    for item in shopping_list : 
                        total = item['price'] * item['quantity']
                        grand_total = grand_total + total
                        print(f"{count:<5} {item['name']:<80} {item['quantity']:<5} Rs.{total :>8.2f}")
                        count = count + 1
                    
                    print(f"\n{'Grand Total : ':>88}     Rs.{grand_total:>8.2f}")  

def remove_prod() :

                if len(shopping_list) == 0:
                     print("Your cart is empty.")
                else:
                    print("\n" + "*" * 60)
                    print("*{:^58}*".format("REMOVE PRODUCT"))
                    print("*" * 60)
                    print(f"{'No.':<5} {'Product':<50} {'Qty':<5}")

                    count = 1
                    for item in shopping_list:
                         print(f"{count:<5} {item['name']:<50} {item['quantity']:<5}")
                         count = count + 1
                         
                    remove_item = int(input("\nEnter item number to remove: "))

                    if remove_item >= 1 and remove_item <= len(shopping_list):

                        removed_product = shopping_list.pop(remove_item - 1)
                        print(f"\n{removed_product['name']} removed successfully!")
                    else:
                        print("Invalid item number.")

while True:

    print("\n" + "*" * 60) 
    print("*{:^58}*".format(" SHOPPING LIST ")) 
    print("*" * 60)
    print ("\n1. View Available Products ")
    print ("2. Add Products to cart ")
    print ("3. View cart ")
    print ("4. Remove Products from cart ")
    print ("5. Exit\n ")

    choice = int(input("Enter your choice : "))

    match choice :
    
        case 1 :
              
              fetch_prod ()

            
        case 2 :
            
            add_prod()    

        case 3 :
                  
                  view_cart()
    
        case 4 :
                
                remove_prod()
    
        case 5 :
             print("\nThank you for shopping!\n")
             break

        case _ :

             print("\nInvalid choice")        









