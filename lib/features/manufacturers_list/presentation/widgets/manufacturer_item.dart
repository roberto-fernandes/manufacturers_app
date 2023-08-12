part of manufactures_list;

class _ManufacturerItem extends StatelessWidget {
  final ManufacturersPageResult item;

  const _ManufacturerItem(this.item);

  @override
  Widget build(BuildContext context) {
    if (item.name == null || item.country == null) {
      return const SizedBox();
    }
    return Card(
      child: ListTile(
        title: Text(item.name!),
        subtitle: Text(item.country!),
      ),
    );
  }
}
