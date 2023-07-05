part of '_index.dart';

class AnalyticsCtrl {
  init() => logxx.i(AnalyticsCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

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
    await _dt.analytics.logEvent(
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
    _dt.rxMessage.setState((s) => 'logEvent succeeded');
  }

  Future<void> testSetUserId() async {
    await _dt.analytics.setUserId(id: 'some-user');
    _dt.rxMessage.setState((s) => 'setUserId succeeded');
  }

  Future<void> testSetCurrentScreen() async {
    await _dt.analytics.setCurrentScreen(
      screenName: 'Analytics Demo',
      screenClassOverride: 'AnalyticsDemo',
    );
    _dt.rxMessage.setState((s) => 'setCurrentScreen succeeded');
  }

  Future<void> testSetAnalyticsCollectionEnabled() async {
    await _dt.analytics.setAnalyticsCollectionEnabled(false);
    await _dt.analytics.setAnalyticsCollectionEnabled(true);
    _dt.rxMessage.setState((s) => 'setAnalyticsCollectionEnabled succeeded');
  }

  Future<void> testSetSessionTimeoutDuration() async {
    await _dt.analytics.setSessionTimeoutDuration(const Duration(milliseconds: 20000));
    _dt.rxMessage.setState((s) => 'setSessionTimeoutDuration succeeded');
  }

  Future<void> testSetUserProperty() async {
    await _dt.analytics.setUserProperty(name: 'regular', value: 'indeed');
    _dt.rxMessage.setState((s) => 'setUserProperty succeeded');
  }

  Future<void> testAllEventTypes() async {
    await _dt.analytics.logAddPaymentInfo();
    await _dt.analytics.logAddToCart(
      currency: 'USD',
      value: 123,
      items: [itemCreator(), itemCreator()],
    );
    await _dt.analytics.logAddToWishlist();
    await _dt.analytics.logAppOpen();
    await _dt.analytics.logBeginCheckout(
      value: 123,
      currency: 'USD',
      items: [itemCreator(), itemCreator()],
    );
    await _dt.analytics.logCampaignDetails(
      source: 'source',
      medium: 'medium',
      campaign: 'campaign',
      term: 'terx',
      content: 'content',
      aclid: 'aclid',
      cp1: 'cp1',
    );
    await _dt.analytics.logEarnVirtualCurrency(
      virtualCurrencyName: 'bitcoin',
      value: 345.66,
    );
    await _dt.analytics.logGenerateLead(
      currency: 'USD',
      value: 123.45,
    );
    await _dt.analytics.logJoinGroup(
      groupId: 'test group id',
    );
    await _dt.analytics.logLevelUp(
      level: 5,
      character: 'witch doctor',
    );
    await _dt.analytics.logLogin(loginMethod: 'login');
    await _dt.analytics.logPostScore(
      score: 1000000,
      level: 70,
      character: 'tiefling cleric',
    );
    await _dt.analytics.logPurchase(currency: 'USD', transactionId: 'transaction-id');
    await _dt.analytics.logSearch(
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
    await _dt.analytics.logSelectContent(
      contentType: 'test content type',
      itemId: 'test item id',
    );
    await _dt.analytics.logSelectPromotion(
      creativeName: 'promotion name',
      creativeSlot: 'promotion slot',
      items: [itemCreator()],
      locationId: 'United States',
    );
    await _dt.analytics.logSelectItem(
      items: [itemCreator(), itemCreator()],
      itemListName: 't-shirt',
      itemListId: '1234',
    );
    await _dt.analytics.logScreenView(
      screenName: 'tabs-page',
    );
    await _dt.analytics.logViewCart(
      currency: 'USD',
      value: 123,
      items: [itemCreator(), itemCreator()],
    );
    await _dt.analytics.logShare(
      contentType: 'test content type',
      itemId: 'test item id',
      method: 'facebook',
    );
    await _dt.analytics.logSignUp(
      signUpMethod: 'test sign up method',
    );
    await _dt.analytics.logSpendVirtualCurrency(
      itemName: 'test item name',
      virtualCurrencyName: 'bitcoin',
      value: 34,
    );
    await _dt.analytics.logViewPromotion(
      creativeName: 'promotion name',
      creativeSlot: 'promotion slot',
      items: [itemCreator()],
      locationId: 'United States',
      promotionId: '1234',
      promotionName: 'big sale',
    );
    await _dt.analytics.logRefund(
      currency: 'USD',
      value: 123,
      items: [itemCreator(), itemCreator()],
    );
    await _dt.analytics.logTutorialBegin();
    await _dt.analytics.logTutorialComplete();
    await _dt.analytics.logUnlockAchievement(id: 'all Firebase API covered');
    await _dt.analytics.logViewItem(
      currency: 'usd',
      value: 1000,
      items: [itemCreator()],
    );
    await _dt.analytics.logViewItemList(
      itemListId: 't-shirt-4321',
      itemListName: 'green t-shirt',
      items: [itemCreator()],
    );
    await _dt.analytics.logViewSearchResults(
      searchTerm: 'test search terx',
    );
    _dt.rxMessage.setState((s) => 'All standard events logged successfully');
  }
}
