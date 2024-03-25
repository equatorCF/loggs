class Course {
  String name;
  double completedPercentage;
  String author;
  String thumbnail;

  Course({
    required this.author,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<Course> courses = [
  Course(
    author: "Teacher LMK",
    completedPercentage: 1,
    name: "Introduction",
    thumbnail: "assets/icons/add1.png",
  ),
  Course(
    author: "Teacher LMK",
    completedPercentage: 1,
    name: "Addition(Lesson 2)",
    thumbnail: "assets/icons/add2.png",
  ),
  Course(
    author: "Teacher LMK",
    completedPercentage: 1,
    name: "Addition(Lesson2)",
    thumbnail: "assets/icons/add3.png",
  ),
  Course(
    author: "Teacher LMK",
    completedPercentage: 1,
    name: "Addition(Lesson 3)",
    thumbnail: "assets/icons/add2.png",
  ),
  Course(
    author: "Teacher LMK",
    completedPercentage: 1,
    name: "Addition(Lesson 4)",
    thumbnail: "assets/icons/add1.png",
  ),
  Course(
    author: "Teacher LMK",
    completedPercentage: .67,
    name: "End Topic Quiz",
    thumbnail: "assets/icons/brain.png",
  ),
];
