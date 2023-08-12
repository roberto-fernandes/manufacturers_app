part of manufactures_details;

class _ModelList extends ConsumerWidget {
  final String manufacturer;

  const _ModelList({
    required this.manufacturer,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<ManufacturerModel>> state =
        ref.watch(manufacturerModelProvider(manufacturer));
    final ManufacturerModelNotifier notifier =
        ref.read(manufacturerModelProvider(manufacturer).notifier);
    return AsyncValueWidget<List<ManufacturerModel>>(
      value: state,
      customError: RetryWidget(
        onRetry: notifier.refresh,
      ),
      data: (models) {
        return RefreshIndicator(
          onRefresh: notifier.refresh,
          child: ListView(
            children: models.isEmpty
                ? [const EmptyListWidget()]
                : models.map((e) => _MakeWidget(e)).toList(),
          ),
        );
      },
    );
  }
}

class _MakeWidget extends StatelessWidget {
  final ManufacturerModel model;

  const _MakeWidget(this.model);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(model.modelName ?? ''),
      ),
    );
  }
}
