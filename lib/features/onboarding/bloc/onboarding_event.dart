abstract class OnboardingEvent {}

class PageChangedEvent extends OnboardingEvent {
  PageChangedEvent(this.pageIndex);
  final int pageIndex;
}
