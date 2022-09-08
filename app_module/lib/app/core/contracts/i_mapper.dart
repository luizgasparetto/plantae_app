abstract class IMapper<T> {
  T fromMap(Map<String, dynamic> map);
  Map<String, dynamic> toMap(T object);
}
