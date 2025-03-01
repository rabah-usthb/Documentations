a = 20

match a:
    case -21:
        print("negative")
    case 2|10|21:
        print("positive")
    case int() :
        print("integer")
    case default :
        print("idk")
