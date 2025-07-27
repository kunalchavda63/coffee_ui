abstract class OnboardingEvent {}

class PageChangedEvent extends OnboardingEvent {
  final int pageIndex;
  PageChangedEvent(this.pageIndex);
}
