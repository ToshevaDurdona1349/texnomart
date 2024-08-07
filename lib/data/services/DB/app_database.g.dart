// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  ProductDao? _productDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ModelProductsById` (`idProcuct` INTEGER PRIMARY KEY AUTOINCREMENT, `like` INTEGER, `name` TEXT, `salePrise` INTEGER, `monthlyPrice` TEXT, `smallImage` TEXT)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  ProductDao get productDao {
    return _productDaoInstance ??= _$ProductDao(database, changeListener);
  }
}

class _$ProductDao extends ProductDao {
  _$ProductDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _modelProductsByIdInsertionAdapter = InsertionAdapter(
            database,
            'ModelProductsById',
            (ModelProductsById item) => <String, Object?>{
                  'idProcuct': item.idProcuct,
                  'like': item.like == null ? null : (item.like! ? 1 : 0),
                  'name': item.name,
                  'salePrise': item.salePrise,
                  'monthlyPrice': item.monthlyPrice,
                  'smallImage': item.smallImage
                }),
        _modelProductsByIdDeletionAdapter = DeletionAdapter(
            database,
            'ModelProductsById',
            ['idProcuct'],
            (ModelProductsById item) => <String, Object?>{
                  'idProcuct': item.idProcuct,
                  'like': item.like == null ? null : (item.like! ? 1 : 0),
                  'name': item.name,
                  'salePrise': item.salePrise,
                  'monthlyPrice': item.monthlyPrice,
                  'smallImage': item.smallImage
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ModelProductsById> _modelProductsByIdInsertionAdapter;

  final DeletionAdapter<ModelProductsById> _modelProductsByIdDeletionAdapter;

  @override
  Future<List<ModelProductsById>> readAll() async {
    return _queryAdapter.queryList('SELECT * FROM ModelProductsById',
        mapper: (Map<String, Object?> row) => ModelProductsById(
            idProcuct: row['idProcuct'] as int?,
            like: row['like'] == null ? null : (row['like'] as int) != 0,
            name: row['name'] as String?,
            salePrise: row['salePrise'] as int?,
            monthlyPrice: row['monthlyPrice'] as String?,
            smallImage: row['smallImage'] as String?));
  }

  @override
  Future<void> insertProduct(ModelProductsById modelProductsById) async {
    await _modelProductsByIdInsertionAdapter.insert(
        modelProductsById, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteProduct(ModelProductsById modelProductsById) async {
    await _modelProductsByIdDeletionAdapter.delete(modelProductsById);
  }
}
