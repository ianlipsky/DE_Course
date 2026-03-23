def total_revenue(purchases):
    total = 0

    for purchase in purchases:
       counter1 = 0
       counter2 = 0
       for key, values in purchase.items():
          if key == "price":
             counter1 += values
          if key == "quantity":
             counter2 += values
             total += counter1 * counter2
    return f"Общая выручка: {total}"

def items_by_category(purchases):
   items_dict = {}

   for purchase in purchases:
      key = purchase["category"]
      value = purchase["item"]

      items_dict.setdefault(key, []).append(value)
   return f"Товары по категориям: {items_dict}"

def expensive_purchases(purchases, min_price):
   expensive_goods = []

   for purchase in purchases:
      for key, value in purchase.items():
         if key == "price" and value >= min_price:
            expensive_goods.append(purchase)

   return f"Покупки дороже 1.0: {expensive_goods}"

def average_price_by_category(purchases):
   categories = {}

   for purchase in purchases:
      key = purchase["category"]
      value = purchase["price"]

      if key not in categories:
         categories[key] = [value, 1]
      else:
         categories[key][0] += value
         categories[key][1] += 1

   averages = {key: val[0] / val[1] for key, val in categories.items()}  

   return f"Средняя цена по категориям: {averages}"

def most_frequent_category(purchases):
   purchase_frequency = {}

   for purchase in purchases:
      cat = purchase["category"]
      if cat in purchase_frequency:
         purchase_frequency[cat] += 1
      else:
         purchase_frequency[cat] = 1
   
   most_frequent_purchase = max(purchase_frequency, key=purchase_frequency.get)

   return f"Категория с наибольшим количеством проданных товаров: {most_frequent_purchase}"

   

min_price = 1.0

purchases = [
    {"item": "apple", "category": "fruit", "price": 1.2, "quantity": 10},
    {"item": "banana", "category": "fruit", "price": 0.5, "quantity": 5},
    {"item": "milk", "category": "dairy", "price": 1.5, "quantity": 2},
    {"item": "bread", "category": "bakery", "price": 2.0, "quantity": 3},
]

print(total_revenue(purchases))
print(items_by_category(purchases))
print(expensive_purchases(purchases, min_price))
print(average_price_by_category(purchases))
print(most_frequent_category(purchases))