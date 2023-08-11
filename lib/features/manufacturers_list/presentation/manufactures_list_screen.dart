part of manufactures_list;

class ManufacturesListScreen extends ConsumerWidget {
  const ManufacturesListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<ManufacturersPage>> state =
        ref.watch(manufacturerListProvider);
    final ManufacturerListNotifier notifier =
        ref.read(manufacturerListProvider.notifier);
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {},
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: AsyncValueWidget<List<ManufacturersPage>>(
              value: state,
              data: (data) {
                return Column(children: [
                  ...data
                      .map((e) => Center(
                            child: Text(e.count.toString()),
                          ))
                      .toList(),
                  ElevatedButton(
                    onPressed: () {
                      ref.read(manufacturerListProvider.notifier).addNextPage();
                    },
                    child: const Text('Add'),
                  ),
                ]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
