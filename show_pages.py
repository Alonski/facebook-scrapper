from pprint import pprint

from models import pages


def get_page_list():
    return list(pages.find())


def print_page_list():
    for p in pages.find():
        print("ID - {id}, name - {name}, fans - {fan_count}".format(**p))

def get_page_name(page_id):
    return pages.find_one({'id': page_id})['name']

def get_page_by_id(page_id):
    return pages.find_one({'id': page_id})
    # for p in pages.find_one({'id': page_id}):
    #     print("ID - {id}, name - {name}, fans - {fan_count}".format(**p))


if __name__ == '__main__':
    pprint(get_page_list())
    # pprint(get_page_name('40796308305'))
