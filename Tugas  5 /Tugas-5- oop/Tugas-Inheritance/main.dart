import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  ArmorTitan armorTitan = ArmorTitan();
  AttackTitan attackTitan = AttackTitan();
  BeastTitan beastTitan = BeastTitan();
  Human human = Human();

  // Set power points
  armorTitan.setPowerPoint(4.5);
  attackTitan.setPowerPoint(8.0);
  beastTitan.setPowerPoint(6.0);
  human.setPowerPoint(3.0);

  // Print power points
  print("Armor Titan Power Point: ${armorTitan.getPowerPoint()}");
  print("Attack Titan Power Point: ${attackTitan.getPowerPoint()}");
  print("Beast Titan Power Point: ${beastTitan.getPowerPoint()}");
  print("Human Power Point: ${human.getPowerPoint()}");

  // Print actions
  print("Armor Titan: ${armorTitan.terjang()}");
  print("Attack Titan: ${attackTitan.punch()}");
  print("Beast Titan: ${beastTitan.lempar()}");
  print("Human: ${human.killAllTitan()}");
}
