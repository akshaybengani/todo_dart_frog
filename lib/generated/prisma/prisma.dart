// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

class TodoWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoWhereUniqueInput({this.id});

  final String? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class TodoSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? title;

  final bool? description;

  final bool? isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final String? equals;

  final _i1.PrismaUnion<Iterable<String>, String>? $in;

  final _i1.PrismaUnion<Iterable<String>, String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final String? equals;

  final _i1.PrismaUnion<Iterable<String>, String>? $in;

  final _i1.PrismaUnion<Iterable<String>, String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final DateTime? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final DateTime? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedBoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolFilter({
    this.equals,
    this.not,
  });

  final bool? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class BoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFilter({
    this.equals,
    this.not,
  });

  final bool? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class TodoWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  final _i1.PrismaUnion<_i2.TodoWhereInput, Iterable<_i2.TodoWhereInput>>? AND;

  final Iterable<_i2.TodoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TodoWhereInput, Iterable<_i2.TodoWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringFilter, String>? description;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

class TodoOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoOrderByWithRelationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

enum TodoScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Todo'),
  createdAt<DateTime>('createdAt', 'Todo'),
  updatedAt<DateTime>('updatedAt', 'Todo'),
  title<String>('title', 'Todo'),
  description<String>('description', 'Todo'),
  isCompleted<bool>('isCompleted', 'Todo');

  const TodoScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class TodoCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoCreateInput({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.title,
    required this.description,
    required this.isCompleted,
  });

  final String id;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String title;

  final String description;

  final bool isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class TodoUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoUncheckedCreateInput({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.title,
    required this.description,
    required this.isCompleted,
  });

  final String id;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String title;

  final String description;

  final bool isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class TodoCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoCreateManyInput({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.title,
    required this.description,
    required this.isCompleted,
  });

  final String id;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String title;

  final String description;

  final bool isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class BoolFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFieldUpdateOperationsInput({this.set});

  final bool? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class TodoUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoUpdateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class TodoUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoUncheckedUpdateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class TodoUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoUpdateManyMutationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class TodoUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoUncheckedUpdateManyInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class TodoCountAggregateOutputType {
  const TodoCountAggregateOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
    this.$all,
  });

  factory TodoCountAggregateOutputType.fromJson(Map json) =>
      TodoCountAggregateOutputType(
        id: json['id'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        title: json['title'],
        description: json['description'],
        isCompleted: json['isCompleted'],
        $all: json['_all'],
      );

  final int? id;

  final int? createdAt;

  final int? updatedAt;

  final int? title;

  final int? description;

  final int? isCompleted;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
        '_all': $all,
      };
}

class TodoMinAggregateOutputType {
  const TodoMinAggregateOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  factory TodoMinAggregateOutputType.fromJson(Map json) =>
      TodoMinAggregateOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        title: json['title'],
        description: json['description'],
        isCompleted: json['isCompleted'],
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? title;

  final String? description;

  final bool? isCompleted;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class TodoMaxAggregateOutputType {
  const TodoMaxAggregateOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  factory TodoMaxAggregateOutputType.fromJson(Map json) =>
      TodoMaxAggregateOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        title: json['title'],
        description: json['description'],
        isCompleted: json['isCompleted'],
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? title;

  final String? description;

  final bool? isCompleted;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class TodoGroupByOutputType {
  const TodoGroupByOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
    this.$count,
    this.$min,
    this.$max,
  });

  factory TodoGroupByOutputType.fromJson(Map json) => TodoGroupByOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        title: json['title'],
        description: json['description'],
        isCompleted: json['isCompleted'],
        $count: json['_count'] is Map
            ? _i2.TodoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TodoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TodoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? title;

  final String? description;

  final bool? isCompleted;

  final _i2.TodoCountAggregateOutputType? $count;

  final _i2.TodoMinAggregateOutputType? $min;

  final _i2.TodoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class TodoCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoCountOrderByAggregateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class TodoMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoMaxOrderByAggregateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class TodoMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoMinOrderByAggregateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class TodoOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoOrderByWithAggregationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? isCompleted;

  final _i2.TodoCountOrderByAggregateInput? $count;

  final _i2.TodoMaxOrderByAggregateInput? $max;

  final _i2.TodoMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final int? equals;

  final _i1.PrismaUnion<Iterable<int>, int>? $in;

  final _i1.PrismaUnion<Iterable<int>, int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final String? equals;

  final _i1.PrismaUnion<Iterable<String>, String>? $in;

  final _i1.PrismaUnion<Iterable<String>, String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final String? equals;

  final _i1.PrismaUnion<Iterable<String>, String>? $in;

  final _i1.PrismaUnion<Iterable<String>, String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final DateTime? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final DateTime? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedBoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class BoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class TodoScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  final _i1.PrismaUnion<_i2.TodoScalarWhereWithAggregatesInput,
      Iterable<_i2.TodoScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.TodoScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.TodoScalarWhereWithAggregatesInput,
      Iterable<_i2.TodoScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? description;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class TodoCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoCountAggregateOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
    this.$all,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? title;

  final bool? description;

  final bool? isCompleted;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
        '_all': $all,
      };
}

class TodoGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoGroupByOutputTypeCountArgs({this.select});

  final _i2.TodoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TodoMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoMinAggregateOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? title;

  final bool? description;

  final bool? isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class TodoGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoGroupByOutputTypeMinArgs({this.select});

  final _i2.TodoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TodoMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoMaxAggregateOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? title;

  final bool? description;

  final bool? isCompleted;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class TodoGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoGroupByOutputTypeMaxArgs({this.select});

  final _i2.TodoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TodoGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TodoGroupByOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? title;

  final bool? description;

  final bool? isCompleted;

  final _i1.PrismaUnion<bool, _i2.TodoGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.TodoGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.TodoGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateTodo {
  const AggregateTodo({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateTodo.fromJson(Map json) => AggregateTodo(
        $count: json['_count'] is Map
            ? _i2.TodoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TodoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TodoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.TodoCountAggregateOutputType? $count;

  final _i2.TodoMinAggregateOutputType? $min;

  final _i2.TodoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateTodoCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTodoCountArgs({this.select});

  final _i2.TodoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTodoMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTodoMinArgs({this.select});

  final _i2.TodoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTodoMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTodoMaxArgs({this.select});

  final _i2.TodoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTodoSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTodoSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateTodoCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateTodoMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateTodoMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class UserWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereUniqueInput({
    this.id,
    this.email,
  });

  final String? id;

  final String? email;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
      };
}

class UserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? email;

  final bool? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithRelationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

enum UserScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'User'),
  createdAt<DateTime>('createdAt', 'User'),
  updatedAt<DateTime>('updatedAt', 'User'),
  email<String>('email', 'User'),
  password<String>('password', 'User');

  const UserScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UserCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateInput({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.email,
    required this.password,
  });

  final String id;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String email;

  final String password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateInput({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.email,
    required this.password,
  });

  final String id;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String email;

  final String password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateManyInput({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.email,
    required this.password,
  });

  final String id;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String email;

  final String password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateManyMutationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
    this.$all,
  });

  factory UserCountAggregateOutputType.fromJson(Map json) =>
      UserCountAggregateOutputType(
        id: json['id'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        email: json['email'],
        password: json['password'],
        $all: json['_all'],
      );

  final int? id;

  final int? createdAt;

  final int? updatedAt;

  final int? email;

  final int? password;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
        '_all': $all,
      };
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  factory UserMinAggregateOutputType.fromJson(Map json) =>
      UserMinAggregateOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        email: json['email'],
        password: json['password'],
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? email;

  final String? password;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'email': email,
        'password': password,
      };
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  factory UserMaxAggregateOutputType.fromJson(Map json) =>
      UserMaxAggregateOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        email: json['email'],
        password: json['password'],
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? email;

  final String? password;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'email': email,
        'password': password,
      };
}

class UserGroupByOutputType {
  const UserGroupByOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
    this.$count,
    this.$min,
    this.$max,
  });

  factory UserGroupByOutputType.fromJson(Map json) => UserGroupByOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        email: json['email'],
        password: json['password'],
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? email;

  final String? password;

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'email': email,
        'password': password,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class UserCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOrderByAggregateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinOrderByAggregateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithAggregationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  final _i2.UserCountOrderByAggregateInput? $count;

  final _i2.UserMaxOrderByAggregateInput? $max;

  final _i2.UserMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class UserScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UserScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? password;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountAggregateOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
    this.$all,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? email;

  final bool? password;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
        '_all': $all,
      };
}

class UserGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinAggregateOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? email;

  final bool? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxAggregateOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? email;

  final bool? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
      };
}

class UserGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? email;

  final bool? password;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'email': email,
        'password': password,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUser {
  const AggregateUser({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateUser.fromJson(Map json) => AggregateUser(
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateUserCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUserCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}
