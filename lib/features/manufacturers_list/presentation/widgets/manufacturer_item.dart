part of manufactures_list;

class _ManufacturerItem extends StatelessWidget {
  final ManufacturersPageResult item;

  const _ManufacturerItem(this.item);

  @override
  Widget build(BuildContext context) {
    if (item.commonName == null || item.country == null) {
      return const SizedBox();
    }
    return Card(
      child: ListTile(
        onTap: () => appNavigation.pushManufacturerDetails(item),
        title: Text(item.commonName!),
        subtitle: Text(item.country!),
      ),
    );
  }
}
