.class public Lcom/airbnb/android/fragments/HostHomeFragment;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "HostHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/HostHomeFragment$7;
    }
.end annotation


# static fields
.field private static final HHFUX_DIALOG:Ljava/lang/String; = "host_home"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertWrapper:Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

.field private mContentFrame:Landroid/view/View;

.field private mHHAlertsAdapter:Lcom/airbnb/android/adapters/HHAlertsAdapter;

.field private mHHTodayAdapter:Lcom/airbnb/android/adapters/HHTodayAdapter;

.field private mHHUpcomingAdapter:Lcom/airbnb/android/adapters/HHUpcomingAdapter;

.field private mHostHomeAdapter:Lcom/airbnb/android/adapters/SectionedAdapter;

.field private mHostHomeRequest:Lcom/airbnb/android/requests/HostHomeRequest;

.field private mIsWideMode:Z

.field private mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

.field private mReloadHostHomeOnRefresh:Z

.field private mSelectedId:J

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mTodayWrapper:Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

.field private mUpcomingWrapper:Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-class v0, Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/HostHomeFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/HostHomeFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/HostHomeFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/HostHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/HostHomeFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->refreshData()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/HostHomeFragment;)Lcom/airbnb/android/adapters/SectionedAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/HostHomeFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHostHomeAdapter:Lcom/airbnb/android/adapters/SectionedAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/HostHomeFragment;)Lcom/airbnb/android/views/SwipeRefreshLoaderListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/HostHomeFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/HostHomeFragment;Lcom/airbnb/android/models/MessageThread;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/HostHomeFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/MessageThread;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/HostHomeFragment;->loadInquiry(Lcom/airbnb/android/models/MessageThread;)V

    return-void
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/HostHomeFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p0, "x0"    # Lcom/airbnb/android/fragments/HostHomeFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/HostHomeFragment;->setupViews(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private fetchHostHome()V
    .registers 3

    .prologue
    .line 318
    new-instance v0, Lcom/airbnb/android/requests/HostHomeRequest;

    new-instance v1, Lcom/airbnb/android/fragments/HostHomeFragment$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/HostHomeFragment$6;-><init>(Lcom/airbnb/android/fragments/HostHomeFragment;)V

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/HostHomeRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHostHomeRequest:Lcom/airbnb/android/requests/HostHomeRequest;

    .line 343
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHostHomeRequest:Lcom/airbnb/android/requests/HostHomeRequest;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/HostHomeRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 344
    return-void
.end method

.method private loadInquiry(Lcom/airbnb/android/models/MessageThread;)V
    .registers 7
    .param p1, "thread"    # Lcom/airbnb/android/models/MessageThread;

    .prologue
    const/4 v4, 0x1

    .line 445
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mIsWideMode:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mContentFrame:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 446
    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    sget-object v3, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Default:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/ROActivity$LaunchState;->ordinal()I

    move-result v3

    invoke-static {v0, v1, v4, v2, v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->newInstanceForThreadId(JZZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v0

    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/airbnb/android/fragments/HostHomeFragment;->loadROContainerFragment(Landroid/support/v4/app/Fragment;J)V

    .line 450
    :goto_1f
    return-void

    .line 448
    :cond_20
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v1

    const-string/jumbo v3, "host_inquiry"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/airbnb/android/activities/ROActivity;->intentForThreadId(Landroid/content/Context;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/HostHomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1f
.end method

.method private loadROContainerFragment(Landroid/support/v4/app/Fragment;J)V
    .registers 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "id"    # J

    .prologue
    .line 453
    iget-wide v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mSelectedId:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1a

    .line 454
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0801c7

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 455
    iput-wide p2, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mSelectedId:J

    .line 457
    :cond_1a
    return-void
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .registers 1

    .prologue
    .line 95
    new-instance v0, Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/HostHomeFragment;-><init>()V

    return-object v0
.end method

.method private refreshData()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 385
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mReloadHostHomeOnRefresh:Z

    .line 390
    :goto_13
    return-void

    .line 388
    :cond_14
    invoke-direct {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->fetchHostHome()V

    goto :goto_13
.end method

.method private setupViews(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Alert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "today":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Reservation;>;"
    .local p2, "reservations":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Reservation;>;"
    .local p3, "alerts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Alert;>;"
    const/4 v4, 0x0

    .line 348
    invoke-interface {p2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 349
    iget-object v2, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHHTodayAdapter:Lcom/airbnb/android/adapters/HHTodayAdapter;

    invoke-virtual {v2, p1}, Lcom/airbnb/android/adapters/HHTodayAdapter;->setTodayReservations(Ljava/util/List;)V

    .line 350
    iget-object v2, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHHUpcomingAdapter:Lcom/airbnb/android/adapters/HHUpcomingAdapter;

    invoke-virtual {v2, p2}, Lcom/airbnb/android/adapters/HHUpcomingAdapter;->setUpcomingReservations(Ljava/util/List;)V

    .line 351
    iget-object v2, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHHAlertsAdapter:Lcom/airbnb/android/adapters/HHAlertsAdapter;

    invoke-virtual {v2, p3}, Lcom/airbnb/android/adapters/HHAlertsAdapter;->setAlerts(Ljava/util/List;)V

    .line 352
    iget-object v2, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHostHomeAdapter:Lcom/airbnb/android/adapters/SectionedAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/SectionedAdapter;->notifyDataSetChanged()V

    .line 355
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mIsWideMode:Z

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mContentFrame:Landroid/view/View;

    if-eqz v2, :cond_3e

    .line 356
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 357
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/HostHomeFragment;->loadReservation(Lcom/airbnb/android/models/Reservation;)V

    .line 372
    :cond_2f
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 373
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/HostHomeFragment;->loadReservation(Lcom/airbnb/android/models/Reservation;)V

    .line 376
    :cond_3e
    :goto_3e
    return-void

    .line 358
    :cond_3f
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 359
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Alert;

    .line 360
    .local v0, "alert":Lcom/airbnb/android/models/Alert;
    sget-object v2, Lcom/airbnb/android/fragments/HostHomeFragment$7;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getAlertTypeEnum()Lcom/airbnb/android/models/Alert$AlertType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_76

    goto :goto_49

    .line 365
    :pswitch_65
    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/HostHomeFragment;->loadInquiry(Lcom/airbnb/android/models/MessageThread;)V

    goto :goto_3e

    .line 362
    :pswitch_6d
    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/HostHomeFragment;->loadReservation(Lcom/airbnb/android/models/Reservation;)V

    goto :goto_3e

    .line 360
    nop

    :pswitch_data_76
    .packed-switch 0x8
        :pswitch_65
        :pswitch_6d
    .end packed-switch
.end method

.method private showFirstTimeDialog()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markHHFtueAsSeen(Landroid/content/Context;)V

    .line 395
    const v1, 0x7f0e02b5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/fragments/HostHomeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e02b4

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/HostHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;

    move-result-object v0

    .line 399
    .local v0, "f":Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "host_home"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/HostHomeFuxDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 400
    return-void
.end method


# virtual methods
.method public alertsChanged(Lcom/airbnb/android/events/AlertsChangedEvent;)V
    .registers 3
    .param p1, "ace"    # Lcom/airbnb/android/events/AlertsChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mReloadHostHomeOnRefresh:Z

    .line 315
    return-void
.end method

.method protected loadReservation(Lcom/airbnb/android/models/Reservation;)V
    .registers 6
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mIsWideMode:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mContentFrame:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 438
    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    sget-object v3, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Default:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/ROActivity$LaunchState;->ordinal()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->newInstanceForReservationId(JZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v0

    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/airbnb/android/fragments/HostHomeFragment;->loadROContainerFragment(Landroid/support/v4/app/Fragment;J)V

    .line 442
    :goto_1e
    return-void

    .line 440
    :cond_1f
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v1

    const-string/jumbo v3, "host_reservations"

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/activities/ROActivity;->intentForReservationId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/HostHomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 461
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 465
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 466
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_25

    .line 467
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 468
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v3, v0, Lcom/airbnb/android/fragments/ROContainerFragment;

    if-eqz v3, :cond_11

    .line 469
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_11

    .line 473
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_25
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/HostHomeFragment;->setHasOptionsMenu(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mIsWideMode:Z

    .line 105
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 404
    const v0, 0x7f10000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 405
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 406
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    const v6, 0x7f0a002c

    .line 117
    const v3, 0x7f03009f

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeHHFtue(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 120
    invoke-direct {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->showFirstTimeDialog()V

    .line 123
    :cond_18
    const v3, 0x7f0800d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    .line 124
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->startLoader()V

    .line 126
    const v3, 0x7f0801c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mContentFrame:Landroid/view/View;

    .line 128
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->getSwipeRefreshLayout()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 129
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const v4, 0x7f0a002b

    const v5, 0x7f0a002d

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorScheme(IIII)V

    .line 130
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v4, Lcom/airbnb/android/fragments/HostHomeFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/HostHomeFragment$1;-><init>(Lcom/airbnb/android/fragments/HostHomeFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 138
    new-instance v3, Lcom/airbnb/android/adapters/HHTodayAdapter;

    invoke-direct {v3}, Lcom/airbnb/android/adapters/HHTodayAdapter;-><init>()V

    iput-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHHTodayAdapter:Lcom/airbnb/android/adapters/HHTodayAdapter;

    .line 139
    new-instance v3, Lcom/airbnb/android/fragments/HostHomeFragment$2;

    iget-object v4, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHHTodayAdapter:Lcom/airbnb/android/adapters/HHTodayAdapter;

    invoke-direct {v3, p0, v4}, Lcom/airbnb/android/fragments/HostHomeFragment$2;-><init>(Lcom/airbnb/android/fragments/HostHomeFragment;Landroid/widget/BaseAdapter;)V

    iput-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mTodayWrapper:Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

    .line 155
    new-instance v3, Lcom/airbnb/android/adapters/HHUpcomingAdapter;

    invoke-direct {v3}, Lcom/airbnb/android/adapters/HHUpcomingAdapter;-><init>()V

    iput-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHHUpcomingAdapter:Lcom/airbnb/android/adapters/HHUpcomingAdapter;

    .line 156
    new-instance v3, Lcom/airbnb/android/fragments/HostHomeFragment$3;

    iget-object v4, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHHUpcomingAdapter:Lcom/airbnb/android/adapters/HHUpcomingAdapter;

    invoke-direct {v3, p0, v4}, Lcom/airbnb/android/fragments/HostHomeFragment$3;-><init>(Lcom/airbnb/android/fragments/HostHomeFragment;Landroid/widget/BaseAdapter;)V

    iput-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mUpcomingWrapper:Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

    .line 171
    new-instance v3, Lcom/airbnb/android/adapters/HHAlertsAdapter;

    invoke-direct {v3}, Lcom/airbnb/android/adapters/HHAlertsAdapter;-><init>()V

    iput-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHHAlertsAdapter:Lcom/airbnb/android/adapters/HHAlertsAdapter;

    .line 172
    new-instance v3, Lcom/airbnb/android/fragments/HostHomeFragment$4;

    iget-object v4, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHHAlertsAdapter:Lcom/airbnb/android/adapters/HHAlertsAdapter;

    invoke-direct {v3, p0, v4}, Lcom/airbnb/android/fragments/HostHomeFragment$4;-><init>(Lcom/airbnb/android/fragments/HostHomeFragment;Landroid/widget/BaseAdapter;)V

    iput-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mAlertWrapper:Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

    .line 188
    new-instance v3, Lcom/airbnb/android/adapters/SectionedAdapter;

    invoke-direct {v3}, Lcom/airbnb/android/adapters/SectionedAdapter;-><init>()V

    iput-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHostHomeAdapter:Lcom/airbnb/android/adapters/SectionedAdapter;

    .line 189
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHostHomeAdapter:Lcom/airbnb/android/adapters/SectionedAdapter;

    iget-object v4, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mTodayWrapper:Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/adapters/SectionedAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 190
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHostHomeAdapter:Lcom/airbnb/android/adapters/SectionedAdapter;

    iget-object v4, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mAlertWrapper:Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/adapters/SectionedAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 191
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHostHomeAdapter:Lcom/airbnb/android/adapters/SectionedAdapter;

    iget-object v4, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mUpcomingWrapper:Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/adapters/SectionedAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 193
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 195
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mHostHomeAdapter:Lcom/airbnb/android/adapters/SectionedAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    const v3, 0x7f0802d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 198
    .local v0, "listFrame":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ListView;Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 200
    new-instance v3, Lcom/airbnb/android/fragments/HostHomeFragment$5;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/HostHomeFragment$5;-><init>(Lcom/airbnb/android/fragments/HostHomeFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 298
    invoke-direct {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->fetchHostHome()V

    .line 300
    return-object v2
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onDestroy()V

    .line 111
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 416
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 425
    :goto_8
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 418
    :pswitch_d
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/HHHistoryActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/HostHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 419
    invoke-static {}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->trackHostInboxClick()V

    goto :goto_c

    .line 422
    :pswitch_1c
    iget-object v1, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 423
    invoke-direct {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->refreshData()V

    goto :goto_8

    .line 416
    nop

    :pswitch_data_26
    .packed-switch 0x7f080540
        :pswitch_1c
        :pswitch_d
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 410
    const v0, 0x7f080541

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/android/fragments/HostHomeFragment;->prepareMenuItem(Landroid/view/Menu;I)V

    .line 411
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 412
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 305
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onResume()V

    .line 306
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mReloadHostHomeOnRefresh:Z

    if-eqz v0, :cond_d

    .line 307
    invoke-direct {p0}, Lcom/airbnb/android/fragments/HostHomeFragment;->refreshData()V

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment;->mReloadHostHomeOnRefresh:Z

    .line 310
    :cond_d
    return-void
.end method

.method protected setupActionBar(Landroid/app/ActionBar;)V
    .registers 3
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 431
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 433
    const v0, 0x7f0e0756

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 434
    return-void
.end method
