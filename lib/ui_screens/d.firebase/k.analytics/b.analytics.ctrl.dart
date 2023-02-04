part of '_index.dart';

class AnalyticsCtrl {
  AnalyticsData get dt => Data.analytics.st;

  init() => logxx.i(AnalyticsCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  AnalyticsEventItem itemCreator() {
    return AnalyticsEventItem(
      affiliation: 'affil',
      coupon: 'coup',
      creativeName: 'creativeName',
      creativeSlot: 'creativeSlot',
      discount: 2.22,
      index: 3,
      itemBrand: 'itemBrand',
      itemCategory: 'itemCategory',
      itemCategory2: 'itemCategory2',
      itemCategory3: 'itemCategory3',
      itemCategory4: 'itemCategory4',
      itemCategory5: 'itemCategory5',
      itemId: 'itemId',
      itemListId: 'itemListId',
      itemListName: 'itemListName',
      itemName: 'itemName',
      itemVariant: 'itemVariant',
      locationId: 'locationId',
      price: 9.99,
      currency: 'USD',
      promotionId: 'promotionId',
      promotionName: 'promotionName',
      quantity: 1,
    );
  }

  Future<void> sendAnalyticsEvent() async {
    await dt.analytics.logEvent(
      name: 'test_event',
      parameters: <String, dynamic>{
        'string': 'string',
        'int': 42,
        'long': 12345678910,
        'double': 42.0,
        // Only strings and numbers (ints & doubles) are supported for GA custom event parameters:
        // https://developers.google.com/analytics/devguides/collection/analyticsjs/custom-dims-mets#overview
        'bool': true.toString(),
        'items': [itemCreator()]
      },
    );
    dt.rxMessage.setState((s) => 'logEvent succeeded');
  }

  Future<void> testSetUserId() async {
    await dt.analytics.setUserId(id: 'some-user');
    dt.rxMessage.setState((s) => 'setUserId succeeded');
  }

  Future<void> testSetCurrentScreen() async {
    await dt.analytics.setCurrentScreen(
      screenName: 'Analytics Demo',
      screenClassOverride: 'AnalyticsDemo',
    );
    dt.rxMessage.setState((s) => 'setCurrentScreen succeeded');
  }

  Future<void> testSetAnalyticsCollectionEnabled() async {
    await dt.analytics.setAnalyticsCollectionEnabled(false);
    await dt.analytics.setAnalyticsCollectionEnabled(true);
    dt.rxMessage.setState((s) => 'setAnalyticsCollectionEnabled succeeded');
  }

  Future<void> testSetSessionTimeoutDuration() async {
    await dt.analytics.setSessionTimeoutDuration(const Duration(milliseconds: 20000));
    dt.rxMessage.setState((s) => 'setSessionTimeoutDuration succeeded');
  }

  Future<void> testSetUserProperty() async {
    await dt.analytics.setUserProperty(name: 'regular', value: 'indeed');
    dt.rxMessage.setState((s) => 'setUserProperty succeeded');
  }

  Future<void> testAllEventTypes() async {
    await dt.analytics.logAddPaymentInfo();
    await dt.analytics.logAddToCart(
      currency: 'USD',
      value: 123,
      items: [itemCreator(), itemCreator()],
    );
    await dt.analytics.logAddToWishlist();
    await dt.analytics.logAppOpen();
    await dt.analytics.logBeginCheckout(
      value: 123,
      currency: 'USD',
      items: [itemCreator(), itemCreator()],
    );
    await dt.analytics.logCampaignDetails(
      source: 'source',
      medium: 'medium',
      campaign: 'campaign',
      term: 'terx',
      content: 'content',
      aclid: 'aclid',
      cp1: 'cp1',
    );
    await dt.analytics.logEarnVirtualCurrency(
      virtualCurrencyName: 'bitcoin',
      value: 345.66,
    );
    await dt.analytics.logGenerateLead(
      currency: 'USD',
      value: 123.45,
    );
    await dt.analytics.logJoinGroup(
      groupId: 'test group id',
    );
    await dt.analytics.logLevelUp(
      level: 5,
      character: 'witch doctor',
    );
    await dt.analytics.logLogin(loginMethod: 'login');
    await dt.analytics.logPostScore(
      score: 1000000,
      level: 70,
      character: 'tiefling cleric',
    );
    await dt.analytics.logPurchase(currency: 'USD', transactionId: 'transaction-id');
    await dt.analytics.logSearch(
      searchTerm: 'hotel',
      numberOfNights: 2,
      numberOfRooms: 1,
      numberOfPassengers: 3,
      origin: 'test origin',
      destination: 'test destination',
      startDate: '2015-09-14',
      endDate: '2015-09-16',
      travelClass: 'test travel class',
    );
    await dt.analytics.logSelectContent(
      contentType: 'test content type',
      itemId: 'test item id',
    );
    await dt.analytics.logSelectPromotion(
      creativeName: 'promotion name',
      creativeSlot: 'promotion slot',
      items: [itemCreator()],
      locationId: 'United States',
    );
    await dt.analytics.logSelectItem(
      items: [itemCreator(), itemCreator()],
      itemListName: 't-shirt',
      itemListId: '1234',
    );
    await dt.analytics.logScreenView(
      screenName: 'tabs-page',
    );
    await dt.analytics.logViewCart(
      currency: 'USD',
      value: 123,
      items: [itemCreator(), itemCreator()],
    );
    await dt.analytics.logShare(
      contentType: 'test content type',
      itemId: 'test item id',
      method: 'facebook',
    );
    await dt.analytics.logSignUp(
      signUpMethod: 'test sign up method',
    );
    await dt.analytics.logSpendVirtualCurrency(
      itemName: 'test item name',
      virtualCurrencyName: 'bitcoin',
      value: 34,
    );
    await dt.analytics.logViewPromotion(
      creativeName: 'promotion name',
      creativeSlot: 'promotion slot',
      items: [itemCreator()],
      locationId: 'United States',
      promotionId: '1234',
      promotionName: 'big sale',
    );
    await dt.analytics.logRefund(
      currency: 'USD',
      value: 123,
      items: [itemCreator(), itemCreator()],
    );
    await dt.analytics.logTutorialBegin();
    await dt.analytics.logTutorialComplete();
    await dt.analytics.logUnlockAchievement(id: 'all Firebase API covered');
    await dt.analytics.logViewItem(
      currency: 'usd',
      value: 1000,
      items: [itemCreator()],
    );
    await dt.analytics.logViewItemList(
      itemListId: 't-shirt-4321',
      itemListName: 'green t-shirt',
      items: [itemCreator()],
    );
    await dt.analytics.logViewSearchResults(
      searchTerm: 'test search terx',
    );
    dt.rxMessage.setState((s) => 'All standard events logged successfully');
  }
}
