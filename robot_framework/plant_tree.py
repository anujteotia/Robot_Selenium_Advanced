import sys


class Tree:
    def __init__(self, code, height, no_of_branches):
        self.code = code
        self.height = height
        self.no_of_branches = no_of_branches


class Forest:
    list_trees = []

    def __init__(self):
        pass
    
    def add_tree_into_forest(self, tree):
        self.list_trees.append(tree)
        
    def get_trees(self):
        print("====== Trees in this forest ======\n")
        for tree in self.list_trees:
            print("===== Tree =====")
            print("Code: {}".format(tree.code))
            print("Height: {}".format(tree.height))
            print("Number of branches: {}".format(tree.no_of_branches))
            print("\n")
            
            
def plant_trees():
    forest = Forest()
    no_of_trees = int(input("How many trees you want to plant?\n"))
    if no_of_trees <= 0:
        print("Invalid input. Number of tress can't be less than or equal to zero")
        sys.exit()
    for trees in range(no_of_trees):
        print("======= Enter {} tree values =======\n".format(trees+1))
        try:
            code = int(input("Code: "))
            height = int(input("Height: "))
            no_of_branches = int(input("Number of branches: "))
            tree = Tree(code, height, no_of_branches)
            forest.add_tree_into_forest(tree)
            print("\n")
        except ValueError:
            print("Invalid input. Value must be integer")
            sys.exit()
    forest.get_trees()
    
    
plant_trees()
