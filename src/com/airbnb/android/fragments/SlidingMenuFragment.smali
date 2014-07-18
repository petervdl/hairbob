.class public Lcom/airbnb/android/fragments/SlidingMenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "SlidingMenuFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/airbnb/android/adapters/SlidingMenuAdapter;

.field mArrow:Landroid/widget/ImageView;

.field mFooterContainer:Landroid/widget/FrameLayout;

.field mListFrame:Landroid/widget/FrameLayout;

.field private mListener:Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;

.field private mMeasuredHeaderHeight:I

.field mProfileItem:Landroid/view/View;

.field mSettingsItem:Landroid/view/View;

.field mSignInItem:Landroid/view/View;

.field mSlidingMenuListView:Landroid/widget/ListView;

.field private mStickyScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

.field mUserAvatar:Lcom/airbnb/android/views/HaloImageView;

.field mUserName:Landroid/widget/TextView;

.field mUserProfileItem:Landroid/view/View;

.field private mUserSignInStatusModifiedReceiver:Landroid/content/BroadcastReceiver;

.field mVerifyMyIdButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 93
    new-instance v0, Lcom/airbnb/android/fragments/SlidingMenuFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment$1;-><init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserSignInStatusModifiedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->updateSignInItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/SlidingMenuFragment;)Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mListener:Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/SlidingMenuFragment;)Lcom/airbnb/android/adapters/SlidingMenuAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mAdapter:Lcom/airbnb/android/adapters/SlidingMenuAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/SlidingMenuFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .prologue
    .line 65
    iget v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mMeasuredHeaderHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/SlidingMenuFragment;)Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mStickyScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    return-object v0
.end method

.method private notifyDataSetChanged()V
    .registers 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mStickyScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    if-eqz v0, :cond_11

    .line 356
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mStickyScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->reset()V

    .line 357
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mStickyScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSlidingMenuListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 359
    :cond_11
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mAdapter:Lcom/airbnb/android/adapters/SlidingMenuAdapter;

    if-eqz v0, :cond_1a

    .line 360
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mAdapter:Lcom/airbnb/android/adapters/SlidingMenuAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->notifyDataSetChanged()V

    .line 362
    :cond_1a
    return-void
.end method

.method private setVerifyMyIdButtonVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 365
    if-eqz p1, :cond_13

    .line 366
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mVerifyMyIdButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mVerifyMyIdButton:Landroid/widget/Button;

    new-instance v1, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;-><init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    :goto_12
    return-void

    .line 399
    :cond_13
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mVerifyMyIdButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_12
.end method

.method private updateSignInItem()V
    .registers 9

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_84

    .line 302
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    .line 304
    .local v0, "api":Lcom/airbnb/android/AirbnbApi;
    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v6

    if-eqz v6, :cond_94

    .line 305
    iget-object v6, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSignInItem:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v6, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mProfileItem:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v6, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserAvatar:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v6, v5}, Lcom/airbnb/android/views/HaloImageView;->setVisibility(I)V

    .line 309
    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 310
    .local v1, "currentUser":Lcom/airbnb/android/models/User;
    iget-object v6, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserAvatar:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v6, v1}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 312
    iget-object v6, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    const-string/jumbo v6, "checkpoint"

    const-string/jumbo v7, "outstanding_verification"

    invoke-static {v6, v7, v5}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 315
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->setVerifyMyIdButtonVisible(Z)V

    .line 327
    .end local v1    # "currentUser":Lcom/airbnb/android/models/User;
    :cond_48
    :goto_48
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeAirnavArrow(Landroid/content/Context;)Z

    move-result v3

    .line 328
    .local v3, "showArrow":Z
    iget-object v6, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mArrow:Landroid/widget/ImageView;

    if-eqz v3, :cond_55

    move v4, v5

    :cond_55
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    if-eqz v3, :cond_84

    .line 332
    iget-object v4, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 333
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mFooterContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5, v5}, Landroid/widget/FrameLayout;->measure(II)V

    .line 334
    iget-object v4, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mFooterContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 335
    iget-object v4, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    .end local v0    # "api":Lcom/airbnb/android/AirbnbApi;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "showArrow":Z
    :cond_84
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->notifyDataSetChanged()V

    .line 340
    return-void

    .line 317
    .restart local v0    # "api":Lcom/airbnb/android/AirbnbApi;
    .restart local v1    # "currentUser":Lcom/airbnb/android/models/User;
    :cond_88
    iget-object v6, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mVerifyMyIdButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-nez v6, :cond_48

    .line 318
    invoke-direct {p0, v5}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->setVerifyMyIdButtonVisible(Z)V

    goto :goto_48

    .line 322
    .end local v1    # "currentUser":Lcom/airbnb/android/models/User;
    :cond_94
    iget-object v6, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSignInItem:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v6, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mProfileItem:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v6, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserAvatar:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v6, v4}, Lcom/airbnb/android/views/HaloImageView;->setVisibility(I)V

    goto :goto_48
.end method


# virtual methods
.method public badgesChanged(Lcom/airbnb/android/events/BadgesChangedEvent;)V
    .registers 2
    .param p1, "bce"    # Lcom/airbnb/android/events/BadgesChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->notifyDataSetChanged()V

    .line 120
    return-void
.end method

.method public drawerOpened()V
    .registers 4

    .prologue
    .line 406
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 407
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 409
    :cond_18
    return-void
.end method

.method public forceSelection(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)V
    .registers 2
    .param p1, "menuItem"    # Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->notifyDataSetChanged()V

    .line 348
    return-void
.end method

.method public getCurrentMenuItem()Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mListener:Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;

    invoke-interface {v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;->getCurrentMenuItem()Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public listingDeleted(Lcom/airbnb/android/events/ListingModifiedEvent$ListingDeletedEvent;)V
    .registers 2
    .param p1, "ldr"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingDeletedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->notifyDataSetChanged()V

    .line 115
    return-void
.end method

.method public loginStatusChanged(Lcom/airbnb/android/events/LoginStatusEvent;)V
    .registers 2
    .param p1, "lse"    # Lcom/airbnb/android/events/LoginStatusEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->updateSignInItem()V

    .line 110
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 294
    :try_start_3
    move-object v0, p1

    check-cast v0, Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mListener:Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    .line 298
    return-void

    .line 295
    :catch_a
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " must implement OnSlidingMenuItemSelectedListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "SlidingMenuFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "SlidingMenuFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_1b

    .line 103
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_1b
    move-exception v0

    const/4 v0, 0x0

    :try_start_1d
    const-string/jumbo v1, "SlidingMenuFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_24} :catch_1b

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15

    .prologue
    :try_start_0
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v8, "SlidingMenuFragment#onCreateView"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_eb

    .line 124
    :goto_9
    const v7, 0x7f0301d2

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 125
    .local v6, "view":Landroid/view/View;
    invoke-static {p0, v6}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 127
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    .local v5, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 129
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020006

    invoke-static {v7, v8, v5}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bgImageRes":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v6, v7}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v7

    if-eqz v7, :cond_f6

    .line 133
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSignInItem:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mProfileItem:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :goto_4f
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSignInItem:Landroid/view/View;

    new-instance v8, Lcom/airbnb/android/fragments/SlidingMenuFragment$2;

    invoke-direct {v8, p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment$2;-><init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserProfileItem:Landroid/view/View;

    new-instance v8, Lcom/airbnb/android/fragments/SlidingMenuFragment$3;

    invoke-direct {v8, p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment$3;-><init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSettingsItem:Landroid/view/View;

    new-instance v8, Lcom/airbnb/android/fragments/SlidingMenuFragment$4;

    invoke-direct {v8, p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment$4;-><init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v7

    if-nez v7, :cond_82

    .line 168
    new-instance v3, Lcom/airbnb/android/fragments/SlidingMenuFragment$5;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment$5;-><init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V

    .line 182
    .local v3, "listener":Landroid/view/View$OnLongClickListener;
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserProfileItem:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSignInItem:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    .end local v3    # "listener":Landroid/view/View$OnLongClickListener;
    :cond_82
    new-instance v7, Lcom/airbnb/android/adapters/SlidingMenuAdapter;

    invoke-direct {v7, p0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;-><init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V

    iput-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mAdapter:Lcom/airbnb/android/adapters/SlidingMenuAdapter;

    .line 187
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSlidingMenuListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mAdapter:Lcom/airbnb/android/adapters/SlidingMenuAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mAdapter:Lcom/airbnb/android/adapters/SlidingMenuAdapter;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSlidingMenuListView:Landroid/widget/ListView;

    invoke-virtual {v7, v8, v9, v10}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "header":Landroid/view/View;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/View;->measure(II)V

    .line 191
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mMeasuredHeaderHeight:I

    .line 193
    new-instance v7, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    iget-object v8, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mListFrame:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSlidingMenuListView:Landroid/widget/ListView;

    new-instance v10, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;

    invoke-direct {v10, p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;-><init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V

    invoke-direct {v7, v8, v9, v10}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ListView;Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mStickyScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    .line 251
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSlidingMenuListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mStickyScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 253
    new-instance v4, Lcom/airbnb/android/fragments/SlidingMenuFragment$7;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment$7;-><init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V

    .line 269
    .local v4, "onClickListener":Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSlidingMenuListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 271
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 272
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "com.airbnb.android.intent.action.USER_SIGNED_IN"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string/jumbo v7, "com.airbnb.android.intent.action.USER_SIGNED_OUT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserSignInStatusModifiedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 277
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->updateSignInItem()V

    .line 278
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v6

    .line 4294967295
    .end local v0    # "bgImageRes":Landroid/graphics/Bitmap;
    .end local v1    # "header":Landroid/view/View;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    .end local v4    # "onClickListener":Landroid/widget/AdapterView$OnItemClickListener;
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "view":Landroid/view/View;
    :catch_eb
    move-exception v7

    const/4 v7, 0x0

    :try_start_ed
    const-string/jumbo v8, "SlidingMenuFragment#onCreateView"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f4} :catch_eb

    goto/16 :goto_9

    .line 136
    .restart local v0    # "bgImageRes":Landroid/graphics/Bitmap;
    .restart local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "view":Landroid/view/View;
    :cond_f6
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSignInItem:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v7, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mProfileItem:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4f
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 283
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 285
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserSignInStatusModifiedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public profilePhotoUpdated(Lcom/airbnb/android/events/ProfilePhotoUpdatedEvent;)V
    .registers 4
    .param p1, "ev"    # Lcom/airbnb/android/events/ProfilePhotoUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 414
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    iget-object v1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserAvatar:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 415
    return-void
.end method

.method public refreshMenu()V
    .registers 1

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->notifyDataSetChanged()V

    .line 352
    return-void
.end method
