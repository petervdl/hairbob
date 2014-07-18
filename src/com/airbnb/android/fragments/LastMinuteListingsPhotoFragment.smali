.class public Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;
.super Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;
.source "LastMinuteListingsPhotoFragment.java"


# static fields
.field private static final DAY_BUTTON_BACKGROUND_SELECTED:I = 0x7f02018a

.field private static final DAY_BUTTON_BACKGROUND_UNSELECTED:I = 0x7f020189

.field private static final DAY_BUTTON_TEXT_COLOR_SELECTED:I = 0x7f0a006d

.field private static final DAY_BUTTON_TEXT_COLOR_UNSELECTED:I = 0x7f0a006c


# instance fields
.field mEmptyResultsFilterLastMinute:Landroid/view/View;

.field private mEmptyResultsLastMinute:Landroid/view/View;

.field mLastMinuteDealsButtonsLayout:Landroid/widget/LinearLayout;

.field private mLastMinuteDealsFilterTitle:Landroid/widget/TextView;

.field mLastMinuteEducation:Landroid/view/View;

.field mSoldOut:Landroid/widget/TextView;

.field private mThatsAllWeHave:Lcom/airbnb/android/views/AirTextView;

.field mTomorrowBtn:Landroid/widget/Button;

.field mTonightBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->viewRegularListingsAndFinish()V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;Ljava/util/Calendar;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->updateSearchWithCheckIn(Ljava/util/Calendar;)V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;
    .registers 4

    .prologue
    .line 55
    new-instance v1, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;-><init>()V

    .line 56
    .local v1, "frag":Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "search_mode_enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v1
.end method

.method private updateDayPicker(Ljava/util/Calendar;)V
    .registers 10
    .param p1, "checkIn"    # Ljava/util/Calendar;

    .prologue
    const v4, 0x7f0a006d

    const v5, 0x7f0a006c

    const v2, 0x7f02018a

    const v3, 0x7f020189

    .line 264
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/airbnb/android/utils/CalendarHelper;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    .line 266
    .local v0, "isCheckInTonight":Z
    iget-object v6, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mTonightBtn:Landroid/widget/Button;

    if-eqz v0, :cond_43

    move v1, v2

    :goto_19
    invoke-virtual {v6, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 267
    iget-object v6, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mTonightBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v0, :cond_45

    move v1, v4

    :goto_25
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 269
    iget-object v1, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mTomorrowBtn:Landroid/widget/Button;

    if-eqz v0, :cond_47

    :goto_30
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 270
    iget-object v1, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mTomorrowBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_49

    :goto_3b
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 271
    return-void

    :cond_43
    move v1, v3

    .line 266
    goto :goto_19

    :cond_45
    move v1, v5

    .line 267
    goto :goto_25

    :cond_47
    move v3, v2

    .line 269
    goto :goto_30

    :cond_49
    move v5, v4

    .line 270
    goto :goto_3b
.end method

.method private updateSearchWithCheckIn(Ljava/util/Calendar;)V
    .registers 7
    .param p1, "checkIn"    # Ljava/util/Calendar;

    .prologue
    .line 242
    iget-object v3, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 244
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    .line 245
    .local v2, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 247
    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/airbnb/android/utils/DateHelper;->compareDay(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    if-eqz v3, :cond_43

    .line 248
    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getNights()I

    move-result v1

    .line 249
    .local v1, "nights":I
    invoke-static {p1}, Lcom/airbnb/android/utils/CalendarHelper;->roundDateToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    .line 250
    invoke-virtual {v2, p1}, Lcom/airbnb/android/models/SearchInfo;->setCheckinDate(Ljava/util/Calendar;)V

    .line 251
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 252
    .local v0, "checkOut":Ljava/util/Calendar;
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 253
    invoke-virtual {v2, v0}, Lcom/airbnb/android/models/SearchInfo;->setCheckoutDate(Ljava/util/Calendar;)V

    .line 254
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->doSearch()V

    .line 259
    .end local v0    # "checkOut":Ljava/util/Calendar;
    .end local v1    # "nights":I
    :cond_43
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->updateDayPicker(Ljava/util/Calendar;)V

    .line 260
    return-void
.end method

.method private viewRegularListingsAndFinish()V
    .registers 3

    .prologue
    .line 179
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/SearchInfo;->setIsLastMinuteOnly(Z)V

    .line 181
    invoke-static {}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackLMViewAll()V

    .line 182
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/activities/SearchActivity;->intentForAutoSearch(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->startActivity(Landroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 184
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 275
    const v0, 0x7f0300a8

    return v0
.end method

.method public getSearchPhotoAdapter()Lcom/airbnb/android/adapters/ListingPhotoAdapter;
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 280
    new-instance v0, Lcom/airbnb/android/adapters/LastMinuteBookingSearchPhotoAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v4, "search_photo"

    move-object v3, p0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/adapters/LastMinuteBookingSearchPhotoAdapter;-><init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0a00a4

    const v5, 0x7f0a0006

    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "layout":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 67
    const v2, 0x7f0801ea

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mEmptyResultsLastMinute:Landroid/view/View;

    .line 68
    const v2, 0x7f0801ee

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mSoldOut:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f0801ec

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$1;-><init>(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteDealsButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeLmbResultsEducation(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 80
    iget-object v2, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteEducation:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v2, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteEducation:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2;-><init>(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v2, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteEducation:Landroid/view/View;

    const v3, 0x7f0801f0

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 109
    .local v0, "closeImageView":Landroid/widget/ImageView;
    const v2, 0x7f020126

    invoke-static {v2, v6, v6, v5, v5}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColors(IIIII)Lcom/airbnb/android/utils/ColorizedDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    new-instance v2, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$3;-><init>(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .end local v0    # "closeImageView":Landroid/widget/ImageView;
    :cond_6c
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->updateDayPicker(Ljava/util/Calendar;)V

    .line 123
    iget-object v2, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mTonightBtn:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$4;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$4;-><init>(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v2, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mTomorrowBtn:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$5;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$5;-><init>(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-object v1
.end method

.method protected refreshListings()V
    .registers 19

    .prologue
    .line 188
    invoke-super/range {p0 .. p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->refreshListings()V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->getSearchListings()Ljava/util/List;

    move-result-object v5

    .line 191
    .local v5, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    if-eqz v5, :cond_c7

    .line 192
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v1

    .line 193
    .local v1, "checkIn":Ljava/util/Calendar;
    if-eqz v1, :cond_c8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/airbnb/android/utils/CalendarHelper;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v13

    if-eqz v13, :cond_c8

    const/4 v4, 0x1

    .line 195
    .local v4, "isToday":Z
    :goto_22
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v8

    .line 196
    .local v8, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    invoke-virtual {v8}, Lcom/airbnb/android/models/SearchInfo;->getNights()I

    move-result v6

    .line 197
    .local v6, "nights":I
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0039

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v6, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "nightsStr":Ljava/lang/String;
    const v13, 0x7f0e03eb

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v8}, Lcom/airbnb/android/models/SearchInfo;->getLmbLocation()Lcom/airbnb/android/models/AirLocation;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/android/models/AirLocation;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 199
    .local v12, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteDealsFilterTitle:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mEmptyResultsFilterLastMinute:Landroid/view/View;

    const v14, 0x7f0803fe

    invoke-static {v13, v14}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_cb

    const/4 v13, 0x0

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/android/models/Listing;

    invoke-virtual {v13}, Lcom/airbnb/android/models/Listing;->showBookNowForInstantBook()Z

    move-result v3

    .line 205
    .local v3, "inBookNowExperiment":Z
    :goto_86
    if-eqz v4, :cond_dd

    .line 206
    if-eqz v3, :cond_d9

    const v11, 0x7f0e03fb

    .line 212
    .local v11, "thatsAllStringId":I
    :goto_8d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mThatsAllWeHave:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v13, v11}, Lcom/airbnb/android/views/AirTextView;->setText(I)V

    .line 214
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    .line 215
    .local v2, "empty":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mEmptyResultsLastMinute:Landroid/view/View;

    invoke-static {v13, v2}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 217
    if-eqz v2, :cond_f5

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteEducation:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 222
    const-string/jumbo v13, "guest"

    const-string/jumbo v14, "mobile_cta_book_now_relaunch"

    const-string/jumbo v15, "enabled"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/airbnb/android/utils/Trebuchet;->launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 223
    .local v9, "showBookNow":Z
    if-eqz v4, :cond_eb

    .line 224
    if-eqz v9, :cond_e7

    const v10, 0x7f0e03f3

    .line 230
    .local v10, "soldOutTextId":I
    :goto_c0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mSoldOut:Landroid/widget/TextView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(I)V

    .line 238
    .end local v1    # "checkIn":Ljava/util/Calendar;
    .end local v2    # "empty":Z
    .end local v3    # "inBookNowExperiment":Z
    .end local v4    # "isToday":Z
    .end local v6    # "nights":I
    .end local v7    # "nightsStr":Ljava/lang/String;
    .end local v8    # "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    .end local v9    # "showBookNow":Z
    .end local v10    # "soldOutTextId":I
    .end local v11    # "thatsAllStringId":I
    .end local v12    # "title":Ljava/lang/String;
    :cond_c7
    :goto_c7
    return-void

    .line 193
    .restart local v1    # "checkIn":Ljava/util/Calendar;
    :cond_c8
    const/4 v4, 0x0

    goto/16 :goto_22

    .line 203
    .restart local v4    # "isToday":Z
    .restart local v6    # "nights":I
    .restart local v7    # "nightsStr":Ljava/lang/String;
    .restart local v8    # "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    .restart local v12    # "title":Ljava/lang/String;
    :cond_cb
    const-string/jumbo v13, "guest"

    const-string/jumbo v14, "mobile_cta_book_now_relaunch"

    const-string/jumbo v15, "enabled"

    invoke-static {v13, v14, v15}, Lcom/airbnb/android/utils/Trebuchet;->launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_86

    .line 206
    .restart local v3    # "inBookNowExperiment":Z
    :cond_d9
    const v11, 0x7f0e03fd

    goto :goto_8d

    .line 209
    :cond_dd
    if-eqz v3, :cond_e3

    const v11, 0x7f0e03fa

    .restart local v11    # "thatsAllStringId":I
    :goto_e2
    goto :goto_8d

    .end local v11    # "thatsAllStringId":I
    :cond_e3
    const v11, 0x7f0e03fc

    goto :goto_e2

    .line 224
    .restart local v2    # "empty":Z
    .restart local v9    # "showBookNow":Z
    .restart local v11    # "thatsAllStringId":I
    :cond_e7
    const v10, 0x7f0e03f5

    goto :goto_c0

    .line 227
    :cond_eb
    if-eqz v9, :cond_f1

    const v10, 0x7f0e03f2

    .restart local v10    # "soldOutTextId":I
    :goto_f0
    goto :goto_c0

    .end local v10    # "soldOutTextId":I
    :cond_f1
    const v10, 0x7f0e03f4

    goto :goto_f0

    .line 232
    .end local v9    # "showBookNow":Z
    :cond_f5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeLmbResultsEducation(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_c7

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteEducation:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c7
.end method

.method protected setupListViewHeaderFooter()V
    .registers 11

    .prologue
    const v9, 0x7f0803fe

    const/16 v8, 0x1e

    const v6, 0x7f0a0066

    const/4 v7, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 147
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030180

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, "filterHeader":Landroid/view/View;
    invoke-static {v0, v9}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteDealsFilterTitle:Landroid/widget/TextView;

    .line 149
    const v5, 0x7f020137

    invoke-static {v5, v6, v6, v6, v6}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColors(IIIII)Lcom/airbnb/android/utils/ColorizedDrawable;

    move-result-object v2

    .line 150
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-virtual {v2, v5, v6, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    iget-object v5, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteDealsFilterTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7, v2, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v5, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 154
    new-instance v1, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$6;-><init>(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;)V

    .line 161
    .local v1, "filtersClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v5, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mEmptyResultsFilterLastMinute:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v5, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mEmptyResultsFilterLastMinute:Landroid/view/View;

    invoke-static {v5, v9}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7, v2, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 166
    const v5, 0x7f030182

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 167
    .local v4, "thatsAll":Landroid/view/View;
    iget-object v5, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 168
    const v5, 0x7f080402

    invoke-static {v4, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/AirTextView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mThatsAllWeHave:Lcom/airbnb/android/views/AirTextView;

    .line 169
    const v5, 0x7f080403

    invoke-static {v4, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$7;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$7;-><init>(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void
.end method
