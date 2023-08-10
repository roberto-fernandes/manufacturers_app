part of manufactures_list;

class ManufacturesListScreen extends ConsumerWidget {
  const ManufacturesListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<ManufacturersPage>> state =
        ref.watch(manufacturerListProvider);
    return Scaffold(
      body: SafeArea(
        child: AsyncValueWidget<List<ManufacturersPage>>(
          value: state,
          data: (data) {
            return Column(
              children: data
                  .map((e) => Center(
                        child: Text(e.count.toString()),
                      ))
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
