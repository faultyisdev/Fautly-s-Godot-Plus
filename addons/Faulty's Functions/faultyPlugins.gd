@tool
extends EditorPlugin

class_name Faulty

##This function takes the parent node and the type of the child node being searched for
##[br]
##[code] child = findChildByName(player, CollisionShape2D) [/code]
static func findChildByType(node: Node, type) -> Node:
	for child in node.get_children():
		if is_instance_of(child, type):
			return child
	print(type," not found")
	return null

##This function takes the parent node and the name of the child node being searched for
##[br]
##[code] child = findChildByName(player, "hitbox") [/code]
static func findChildByName(node: Node, name : String) -> Node:
	
	for child in node.get_children():
		if child.name == name:
			return child
	print(name, " not found")
	return null
