import threading
import random
import time


w = threading.Semaphore(1)

r = threading.Semaphore(4)

def write(thread_id):
    while(1):
      print(thread_id," ask to write")
      w.acquire()
      print(thread_id," writes")
      w.release()

def read(thread_id):
    while(1):
      print(thread_id," ask to reads")
      w.acquire()
      r.acquire()
      print(thread_id," reads")
      w.release()
      r.release()


readers = [threading.Thread(target=read, args=(i+1,)) for i in range(4)]
writers = [threading.Thread(target=write, args=(i+1,)) for i in range(5)]

for t1 in readers:
    t1.start()
for t2 in writers:
    t2.start()

