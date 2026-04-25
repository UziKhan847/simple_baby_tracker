class FeedEntry {
  String feedMode; // 'bottle' or 'suckle'
  String method; // 'breast' or 'formula' (bottle only)
  String amount; // ml
  String duration; // minutes

  FeedEntry({
    this.feedMode = 'bottle',
    this.method = 'breast',
    this.amount = '',
    this.duration = '',
  });
}