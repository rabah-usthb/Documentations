import threading
import random
import time

def consumer(current,free,thread_id):
    while(1):
      print(f"Consumer {thread_id} waiting to consume...")
      current.acquire() 
      print(f"Consumer {thread_id} consumed a product.")
      free.release()

def producer(current,free,thread_id):
    while(1):
      free.acquire()
      print(f"Producer {thread_id} creating a product...")
      time.sleep(random.random())  
      current.release()  
      print(f"Producer {thread_id} created a product.")


n = random.randint(1, 10)
current = threading.Semaphore(n)

free = threading.Semaphore(15)

print(f"Initial semaphore value: {n}")


producers = [threading.Thread(target=producer, args=(current,free, i)) for i in range(3)]
consumers = [threading.Thread(target=consumer, args=(current,free,i)) for i in range(5)]


for p in producers:
    p.start()
for c in consumers:
    c.start()




