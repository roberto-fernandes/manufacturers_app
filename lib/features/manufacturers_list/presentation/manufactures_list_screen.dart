part of manufactures_list;

class ManufacturesListScreen extends ConsumerWidget {
  final ScrollController _controller = ScrollController();

  ManufacturesListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<ManufacturersPage> manufacturers =
        ref.watch(manufacturerListProvider);
    final AsyncValue<int> pageState = ref.watch(manufacturersPageNotifier);
    final notifier = ref.read(manufacturersPageNotifier.notifier);

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: notifier.reset,
          child: ListView(
            controller: _controller,
            children: [
              ...manufacturers.map((e) => Text(e.count.toString())).toList(),
              AsyncValueWidget<int>(
                value: pageState,
                data: (data) {
                  return ElevatedButton(
                    onPressed: () async {
                      await notifier.loadNextPage();
                      _scrollDown();
                    },
                    child: const Text('Add'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _scrollDown() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
  }
}
