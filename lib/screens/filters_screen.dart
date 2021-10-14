
import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {

  static const routeName = "/filters";

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {

  bool _glutenFree = false;
  bool _vegetrian = false;
  bool _vegan= false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTile(String title, String description, bool currentValue, Function(bool?) updateValue) {
     return SwitchListTile(
                  title: Text(title),
                  value: currentValue,
                  subtitle: Text(description),
                  onChanged: updateValue,
                  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("your filters"),),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Adjusting your meal selection",
            style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                  "Gluteen-free",
                  "Only include gluteen-free meals",
                  _glutenFree,
                  (newValue) {
                    setState(() {
                      _glutenFree = newValue ?? true;
                    });
                  },
                  ),
                  _buildSwitchListTile(
                  "Lactose-free",
                  "Only include lactose-free meals",
                  _lactoseFree,
                  (newValue) {
                    setState(() {
                      _lactoseFree = newValue ?? true;
                    });
                  },
                  ),
                  _buildSwitchListTile(
                  "Vegetrian",
                  "Only include Vegetrian meals",
                  _vegetrian,
                  (newValue) {
                    setState(() {
                      _vegetrian = newValue ?? true;
                    });
                  },
                  ),
                  _buildSwitchListTile(
                  "Vegan",
                  "Only include Vegan meals",
                  _vegan,
                  (newValue) {
                    setState(() {
                      _vegan = newValue ?? true;
                    });
                  },
                ),
              ],
            ),
          ),
      ],),
    );
  }
}