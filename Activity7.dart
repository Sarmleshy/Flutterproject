 void main() {
  String flower = "rose";
  String tree = "apple";
//storing the variable in another container
  String leshy = flower;
  flower = tree;
  tree = leshy;

  print(flower);
  print(tree);
}