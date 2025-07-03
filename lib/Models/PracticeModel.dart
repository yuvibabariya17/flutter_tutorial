class PracticeModel {
  final String name;
  final String imgUrl;
  final List<String> options;

  PracticeModel(
      {required this.name, required this.imgUrl, required this.options});

  static List<PracticeModel> dataList = [
    PracticeModel(
      name: "First Product",
      imgUrl:
          'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHJlYWwlMjBlc3RhdGV8ZW58MHx8MHx8fDA%3D',
      options: ["Collection", "Best Selling", "Seasonal Offers", "Deals"],
    ),
    PracticeModel(
      name: "Second Product",
      imgUrl:
          'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHJlYWwlMjBlc3RhdGV8ZW58MHx8MHx8fDA%3D',
      options: [
        "Collection",
        "Best Selling",
      ],
    ),
    PracticeModel(
      name: "Third Product",
      imgUrl:
          'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHJlYWwlMjBlc3RhdGV8ZW58MHx8MHx8fDA%3D',
      options: ["Best Selling", "Seasonal Offers", "Deals"],
    ),
    PracticeModel(
      name: "Fourth Product",
      imgUrl:
          'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHJlYWwlMjBlc3RhdGV8ZW58MHx8MHx8fDA%3D',
      options: ["Seasonal Offers", "Deals"],
    ),
    PracticeModel(
      name: "Fifth Product",
      imgUrl:
          'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHJlYWwlMjBlc3RhdGV8ZW58MHx8MHx8fDA%3D',
      options: ["Collection", "Best Selling", "Seasonal Offers", "Deals"],
    ),
    PracticeModel(
      name: "First Product",
      imgUrl:
          'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHJlYWwlMjBlc3RhdGV8ZW58MHx8MHx8fDA%3D',
      options: ["Collection", "Best Selling", "Seasonal Offers", "Deals"],
    ),
  ];
}
