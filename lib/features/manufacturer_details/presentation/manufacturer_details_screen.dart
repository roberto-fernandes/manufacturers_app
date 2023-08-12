part of manufactures_details;

@RoutePage()
class ManufacturesDetailsScreen extends StatelessWidget {
  final ManufacturersPageResult item;

  const ManufacturesDetailsScreen({
    required this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.commonName ?? 'Manufacturer details'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: SizeConfig.mainContentHorizontalPadding,
            right: SizeConfig.mainContentHorizontalPadding,
            top: SizeConfig.mainContentVerticalPadding,
          ),
          child: item.commonName == null
              ? const DefaultErrorMessage()
              : ModelList(
                  manufacturer: item.commonName!,
                ),
        ),
      ),
    );
  }
}
