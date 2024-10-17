import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_item.dart';


class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title :const Text("Flutter + material 3")
      ),
       body: _HomeView(),
    );

  }
 

}

class _HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return ListView.builder(
    itemCount: appMenuItems.length,
    itemBuilder: (context, index) {
      final item =appMenuItems[index];
      return _CustomListTitle(item: item);
    } ,

   );
  }

}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.item,
  });

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    final colors =Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(item.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
      title: Text(item.title),
      subtitle: Text(item.subTitle),
      onTap: (){
        context.go(item.link);


      
      },

    );
  }
}