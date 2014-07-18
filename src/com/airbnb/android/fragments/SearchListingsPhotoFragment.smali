.class public Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;
.super Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;
.source "SearchListingsPhotoFragment.java"


# instance fields
.field private mCheckInDate:Ljava/util/Calendar;

.field private mCheckOutDate:Ljava/util/Calendar;

.field private mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;
    .registers 4

    .prologue
    .line 30
    new-instance v1, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;-><init>()V

    .line 31
    .local v1, "frag":Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "search_mode_enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v1
.end method

.method private updateDateAndGuestCount()V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->updateDatesFromSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    if-eqz v0, :cond_15

    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckInDate(Ljava/util/Calendar;)V

    .line 51
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckOutDate(Ljava/util/Calendar;)V

    .line 53
    :cond_15
    return-void
.end method

.method private updateDatesFromSearchInfo()Lcom/airbnb/android/models/SearchInfo;
    .registers 3

    .prologue
    .line 96
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v0

    .line 97
    .local v0, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mCheckInDate:Ljava/util/Calendar;

    .line 98
    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutDate()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mCheckOutDate:Ljava/util/Calendar;

    .line 99
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, -0x1

    .line 104
    const/4 v5, -0x1

    if-ne p2, v5, :cond_5d

    .line 105
    packed-switch p1, :pswitch_data_62

    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    :goto_b
    return-void

    .line 107
    :pswitch_c
    const-string/jumbo v5, "start_time"

    invoke-virtual {p3, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 108
    .local v3, "startTime":J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mCheckInDate:Ljava/util/Calendar;

    .line 109
    const-string/jumbo v5, "end_time"

    invoke-virtual {p3, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 110
    .local v0, "endTime":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mCheckOutDate:Ljava/util/Calendar;

    .line 111
    iget-object v5, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    iget-object v6, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckInDate(Ljava/util/Calendar;)V

    .line 112
    iget-object v5, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    iget-object v6, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckOutDate(Ljava/util/Calendar;)V

    .line 113
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    .line 114
    .local v2, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    iget-object v5, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Lcom/airbnb/android/models/SearchInfo;->setCheckinDate(Ljava/util/Calendar;)V

    .line 115
    iget-object v5, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Lcom/airbnb/android/models/SearchInfo;->setCheckoutDate(Ljava/util/Calendar;)V

    .line 116
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->saveSearchInfo(Lcom/airbnb/android/models/SearchInfo;)Z

    .line 117
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->doSearch()V

    goto :goto_b

    .line 124
    .end local v0    # "endTime":J
    .end local v2    # "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    .end local v3    # "startTime":J
    :cond_5d
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_b

    .line 105
    nop

    :pswitch_data_62
    .packed-switch 0x65
        :pswitch_c
    .end packed-switch
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->onResume()V

    .line 40
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->updateDateAndGuestCount()V

    .line 41
    return-void
.end method

.method protected setupListViewHeaderFooter()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301bd

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "header":Landroid/view/View;
    const v2, 0x7f08014b

    invoke-static {v0, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/DateAndGuestCountView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    .line 59
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->updateDatesFromSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v1

    .line 61
    .local v1, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    new-instance v3, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment$1;-><init>(Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;Lcom/airbnb/android/models/SearchInfo;)V

    iget-object v4, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mCheckInDate:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/android/views/DateAndGuestCountView;->initWithNoGuests(Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 86
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v6, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 87
    return-void
.end method

.method protected updateSearchResults(Z)V
    .registers 2
    .param p1, "newSearch"    # Z

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->updateSearchResults(Z)V

    .line 92
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->updateDateAndGuestCount()V

    .line 93
    return-void
.end method
