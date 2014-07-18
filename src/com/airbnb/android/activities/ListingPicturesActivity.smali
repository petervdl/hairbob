.class public Lcom/airbnb/android/activities/ListingPicturesActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ListingPicturesActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field private static final ARG_PRICE_FROM_SEARCH:Ljava/lang/String; = "price_from_search"

.field private static final ARG_START_INDEX:Ljava/lang/String; = "which_picture"

.field private static mIsLandscape:Z


# instance fields
.field private mImageCount:I

.field private mListingId:J

.field private mMaxScroll:I

.field private mPriceFromSearch:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/airbnb/android/activities/ListingPicturesActivity;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/ListingPicturesActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ListingPicturesActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/activities/ListingPicturesActivity;->isStatusBarShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/activities/ListingPicturesActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/ListingPicturesActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/activities/ListingPicturesActivity;->hideStatusBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/activities/ListingPicturesActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ListingPicturesActivity;

    .prologue
    .line 26
    iget v0, p0, Lcom/airbnb/android/activities/ListingPicturesActivity;->mMaxScroll:I

    return v0
.end method

.method static synthetic access$302(Lcom/airbnb/android/activities/ListingPicturesActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ListingPicturesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/airbnb/android/activities/ListingPicturesActivity;->mMaxScroll:I

    return p1
.end method

.method private hideStatusBar()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/16 v3, 0x400

    .line 144
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isAtLeastJellyBean()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 145
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListingPicturesActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x504

    .line 148
    .local v1, "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 152
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "uiOptions":I
    :goto_15
    return-void

    .line 150
    :cond_16
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListingPicturesActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    goto :goto_15
.end method

.method public static intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;I)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "currentItem"    # I

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ListingPicturesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    const-string/jumbo v1, "which_picture"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    return-object v0
.end method

.method public static intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;II)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "currentItem"    # I
    .param p3, "priceFromSearch"    # I

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/airbnb/android/activities/ListingPicturesActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;I)Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "price_from_search"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method private isStatusBarShowing()Z
    .registers 3

    .prologue
    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 137
    .local v0, "rectangle":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListingPicturesActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 138
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-lez v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 19

    .prologue
    const-string/jumbo v1, "ListingPicturesActivity"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/activities/ListingPicturesActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v2, "ListingPicturesActivity#onCreate"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_11} :catch_112

    .line 53
    :goto_11
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/activities/ListingPicturesActivity;->overridePendingTransition(II)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/ListingPicturesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 57
    const v1, 0x7f030008

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/ListingPicturesActivity;->setContentView(I)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/ListingPicturesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 60
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "listing"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Listing;

    .line 61
    .local v3, "listing":Lcom/airbnb/android/models/Listing;
    const-string/jumbo v1, "which_picture"

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 63
    .local v15, "startIndex":I
    const-string/jumbo v1, "price_from_search"

    const/4 v2, -0x1

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/airbnb/android/activities/ListingPicturesActivity;->mPriceFromSearch:I

    .line 65
    move-object/from16 v0, p0

    iput v15, v0, Lcom/airbnb/android/activities/ListingPicturesActivity;->mMaxScroll:I

    .line 66
    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPictureCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/airbnb/android/activities/ListingPicturesActivity;->mImageCount:I

    .line 67
    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/airbnb/android/activities/ListingPicturesActivity;->mListingId:J

    .line 70
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v7

    .line 71
    .local v7, "ch":Lcom/airbnb/android/utils/CurrencyHelper;
    const v1, 0x7f080036

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/ListingPicturesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/airbnb/android/activities/ListingPicturesActivity;->mPriceFromSearch:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_11d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/airbnb/android/activities/ListingPicturesActivity;->mPriceFromSearch:I

    int-to-double v4, v2

    :goto_7a
    const/4 v2, 0x1

    invoke-virtual {v7, v4, v5, v2}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v14

    .line 75
    .local v14, "screenSize":Landroid/graphics/Point;
    const v1, 0x7f080034

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/ListingPicturesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 76
    .local v9, "imageSpacer":Landroid/view/View;
    const v1, 0x7f080033

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/ListingPicturesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/support/v4/view/ViewPager;

    .line 80
    .local v16, "viewPager":Landroid/support/v4/view/ViewPager;
    iget v1, v14, Landroid/graphics/Point;->x:I

    iget v2, v14, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_124

    .line 81
    const/4 v1, 0x0

    sput-boolean v1, Lcom/airbnb/android/activities/ListingPicturesActivity;->mIsLandscape:Z

    .line 82
    iget v1, v14, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v2, 0x3f2aaaab

    mul-float/2addr v1, v2

    float-to-int v12, v1

    .line 83
    .local v12, "pictureHeight":I
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v12, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    .end local v12    # "pictureHeight":I
    :goto_b1
    new-instance v1, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/ListingPicturesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v4, 0x1

    const v5, 0x7f030176

    const v6, 0x7f0a0006

    invoke-direct/range {v1 .. v6}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/Listing;ZII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 92
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 94
    const v1, 0x7f080035

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/ListingPicturesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 95
    .local v8, "imageIndex":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPictureUrls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 97
    .local v11, "pictureCount":Ljava/lang/String;
    sget-boolean v1, Lcom/airbnb/android/activities/ListingPicturesActivity;->mIsLandscape:Z

    if-nez v1, :cond_102

    .line 98
    const v1, 0x7f0e0538

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v15, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v11, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/activities/ListingPicturesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_102
    new-instance v1, Lcom/airbnb/android/activities/ListingPicturesActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v8, v11}, Lcom/airbnb/android/activities/ListingPicturesActivity$1;-><init>(Lcom/airbnb/android/activities/ListingPicturesActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 125
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v3    # "listing":Lcom/airbnb/android/models/Listing;
    .end local v7    # "ch":Lcom/airbnb/android/utils/CurrencyHelper;
    .end local v8    # "imageIndex":Landroid/widget/TextView;
    .end local v9    # "imageSpacer":Landroid/view/View;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "pictureCount":Ljava/lang/String;
    .end local v14    # "screenSize":Landroid/graphics/Point;
    .end local v15    # "startIndex":I
    .end local v16    # "viewPager":Landroid/support/v4/view/ViewPager;
    :catch_112
    move-exception v1

    const/4 v1, 0x0

    :try_start_114
    const-string/jumbo v2, "ListingPicturesActivity#onCreate"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_11b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_11b} :catch_112

    goto/16 :goto_11

    .line 71
    .restart local v3    # "listing":Lcom/airbnb/android/models/Listing;
    .restart local v7    # "ch":Lcom/airbnb/android/utils/CurrencyHelper;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v15    # "startIndex":I
    :cond_11d
    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPriceNative()I

    move-result v2

    int-to-double v4, v2

    goto/16 :goto_7a

    .line 85
    .restart local v9    # "imageSpacer":Landroid/view/View;
    .restart local v14    # "screenSize":Landroid/graphics/Point;
    .restart local v16    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_124
    const/4 v1, 0x1

    sput-boolean v1, Lcom/airbnb/android/activities/ListingPicturesActivity;->mIsLandscape:Z

    .line 86
    iget v1, v14, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const v2, 0x3f2aaaab

    div-float/2addr v1, v2

    float-to-int v13, v1

    .line 87
    .local v13, "pictureWidth":I
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v13, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 88
    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v13, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_b1
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 157
    invoke-virtual {p0, v0, v0}, Lcom/airbnb/android/activities/ListingPicturesActivity;->overridePendingTransition(II)V

    .line 158
    iget-wide v0, p0, Lcom/airbnb/android/activities/ListingPicturesActivity;->mListingId:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/airbnb/android/activities/ListingPicturesActivity;->mMaxScroll:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_out_of_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/airbnb/android/activities/ListingPicturesActivity;->mImageCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ListingDetailAnalytics;->trackClickPhotos(JLjava/lang/String;)V

    .line 159
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 130
    sget-boolean v0, Lcom/airbnb/android/activities/ListingPicturesActivity;->mIsLandscape:Z

    if-eqz v0, :cond_a

    .line 131
    invoke-direct {p0}, Lcom/airbnb/android/activities/ListingPicturesActivity;->hideStatusBar()V

    .line 133
    :cond_a
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
