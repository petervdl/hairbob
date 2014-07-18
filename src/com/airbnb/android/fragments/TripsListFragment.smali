.class public Lcom/airbnb/android/fragments/TripsListFragment;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "TripsListFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/FragmentRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/TripsListFragment$CompanionCalloutAdapter;
    }
.end annotation


# static fields
.field private static final ARG_IS_UPCOMING:Ljava/lang/String; = "is_upcoming"


# instance fields
.field private mCallback:Lcom/airbnb/android/interfaces/OnReservationItemSelectedListener;

.field private mIsLocalCompanionEnabled:Z

.field private mIsUpcoming:Z

.field private mListView:Landroid/widget/ListView;

.field private mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private mNextLocalCompanionCity:Ljava/lang/String;

.field private mScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    .line 315
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/TripsListFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TripsListFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mIsUpcoming:Z

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/TripsListFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TripsListFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mIsLocalCompanionEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/TripsListFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TripsListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mNextLocalCompanionCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/airbnb/android/fragments/TripsListFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TripsListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mNextLocalCompanionCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/TripsListFragment;)Lcom/airbnb/android/interfaces/OnReservationItemSelectedListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TripsListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mCallback:Lcom/airbnb/android/interfaces/OnReservationItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/TripsListFragment;)Lcom/airbnb/android/views/LoaderListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TripsListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/TripsListFragment;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TripsListFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/TripsListFragment;->setupAdapter(Ljava/util/List;)V

    return-void
.end method

.method private createHeaderAdapter(Ljava/util/List;I)Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;
    .registers 5
    .param p2, "headerTitle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;I)",
            "Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "reservations":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Reservation;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 251
    const/4 v1, 0x0

    .line 257
    :goto_7
    return-object v1

    .line 254
    :cond_8
    new-instance v0, Lcom/airbnb/android/adapters/TripsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/android/adapters/TripsAdapter;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, "reservationListAdapter":Lcom/airbnb/android/adapters/TripsAdapter;
    invoke-virtual {v0, p1}, Lcom/airbnb/android/adapters/TripsAdapter;->addAll(Ljava/util/Collection;)V

    .line 257
    new-instance v1, Lcom/airbnb/android/fragments/TripsListFragment$4;

    invoke-direct {v1, p0, v0, p2}, Lcom/airbnb/android/fragments/TripsListFragment$4;-><init>(Lcom/airbnb/android/fragments/TripsListFragment;Landroid/widget/BaseAdapter;I)V

    goto :goto_7
.end method

.method private getNextLocalCompanionCity(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "currentReservations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Reservation;>;"
    .local p2, "futureReservations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Reservation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Reservation;

    .line 285
    .local v3, "reservation":Lcom/airbnb/android/models/Reservation;
    invoke-direct {p0, v3}, Lcom/airbnb/android/fragments/TripsListFragment;->isLocalCompanionCity(Lcom/airbnb/android/models/Reservation;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 286
    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v4

    .line 307
    .end local v3    # "reservation":Lcom/airbnb/android/models/Reservation;
    :goto_1e
    return-object v4

    .line 291
    :cond_1f
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 292
    .local v0, "c":Ljava/util/Calendar;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 293
    const/4 v4, 0x5

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 294
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 296
    .local v1, "cutoff":Ljava/util/Date;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Reservation;

    .line 297
    .restart local v3    # "reservation":Lcom/airbnb/android/models/Reservation;
    invoke-direct {p0, v3}, Lcom/airbnb/android/fragments/TripsListFragment;->isLocalCompanionCity(Lcom/airbnb/android/models/Reservation;)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getCheckinDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 298
    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    .line 303
    .end local v3    # "reservation":Lcom/airbnb/android/models/Reservation;
    :cond_61
    const-string/jumbo v4, "local_companion"

    const-string/jumbo v5, "enabled_without_reservation"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 304
    const v4, 0x7f0e0391

    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/TripsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    .line 307
    :cond_76
    const/4 v4, 0x0

    goto :goto_1e
.end method

.method private getReservations()V
    .registers 5

    .prologue
    .line 136
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderListView;->startLoader()V

    .line 138
    new-instance v0, Lcom/airbnb/android/requests/GuestReservationsRequest;

    new-instance v1, Lcom/airbnb/android/fragments/TripsListFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/TripsListFragment$2;-><init>(Lcom/airbnb/android/fragments/TripsListFragment;)V

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mIsUpcoming:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/GuestReservationsRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;IZ)V

    .line 160
    .local v0, "request":Lcom/airbnb/android/requests/GuestReservationsRequest;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/GuestReservationsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 161
    return-void
.end method

.method private isCurrent(Lcom/airbnb/android/models/Reservation;)Z
    .registers 12
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 273
    .local v0, "checkin":J
    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    add-long v2, v6, v8

    .line 274
    .local v2, "checkout":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 276
    .local v4, "now":J
    cmp-long v6, v4, v0

    if-lez v6, :cond_23

    cmp-long v6, v4, v2

    if-gez v6, :cond_23

    const/4 v6, 0x1

    :goto_22
    return v6

    :cond_23
    const/4 v6, 0x0

    goto :goto_22
.end method

.method private isLocalCompanionCity(Lcom/airbnb/android/models/Reservation;)Z
    .registers 4
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "city":Ljava/lang/String;
    const v1, 0x7f0e0391

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/TripsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const v1, 0x7f0e0392

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/TripsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_22
    const/4 v1, 0x1

    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method private isLocalCompanionEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 280
    const-string/jumbo v1, "local_companion"

    const-string/jumbo v2, "enabled"

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_19

    const-string/jumbo v1, "local_companion"

    const-string/jumbo v2, "enabled_without_reservation"

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public static newInstance(Z)Landroid/support/v4/app/Fragment;
    .registers 4
    .param p0, "upcoming"    # Z

    .prologue
    .line 52
    new-instance v1, Lcom/airbnb/android/fragments/TripsListFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/TripsListFragment;-><init>()V

    .line 53
    .local v1, "f":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "is_upcoming"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method

.method private setupAdapter(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "reservations":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Reservation;>;"
    iget-object v5, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mCallback:Lcom/airbnb/android/interfaces/OnReservationItemSelectedListener;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Reservation;

    iget-boolean v6, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mIsUpcoming:Z

    invoke-interface {v5, v4, v6}, Lcom/airbnb/android/interfaces/OnReservationItemSelectedListener;->onInitialization(Lcom/airbnb/android/models/Reservation;Z)V

    .line 165
    iget-boolean v4, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mIsUpcoming:Z

    if-eqz v4, :cond_1c

    .line 166
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/TripsListFragment;->setupUpcomingAdapterSections(Ljava/util/List;)Lcom/airbnb/android/adapters/SectionedAdapter;

    move-result-object v0

    .line 167
    .local v0, "adapter":Lcom/airbnb/android/adapters/SectionedAdapter;
    iget-object v4, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    .end local v0    # "adapter":Lcom/airbnb/android/adapters/SectionedAdapter;
    :goto_1b
    return-void

    .line 169
    :cond_1c
    new-instance v3, Lcom/airbnb/android/adapters/TripsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/android/adapters/TripsAdapter;-><init>(Landroid/content/Context;)V

    .line 170
    .local v3, "reservationListAdapter":Lcom/airbnb/android/adapters/TripsAdapter;
    invoke-virtual {v3, p1}, Lcom/airbnb/android/adapters/TripsAdapter;->addAll(Ljava/util/Collection;)V

    .line 171
    new-instance v2, Lcom/airbnb/android/fragments/TripsListFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/TripsListFragment$3;-><init>(Lcom/airbnb/android/fragments/TripsListFragment;)V

    .line 180
    .local v2, "factory":Lcom/airbnb/android/requests/AirRequestFactory;, "Lcom/airbnb/android/requests/AirRequestFactory<Lcom/airbnb/android/requests/GuestReservationsRequest;>;"
    new-instance v1, Lcom/airbnb/android/utils/InfiniteAdapter;

    const v4, 0x7f03014c

    invoke-direct {v1, v3, v4, v2, p0}, Lcom/airbnb/android/utils/InfiniteAdapter;-><init>(Landroid/widget/ArrayAdapter;ILcom/airbnb/android/requests/AirRequestFactory;Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 184
    .local v1, "adapter":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<Lcom/airbnb/android/requests/GuestReservationsRequest;Lcom/airbnb/android/models/Reservation;>;"
    iget-object v4, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1b
.end method

.method private setupUpcomingAdapterSections(Ljava/util/List;)Lcom/airbnb/android/adapters/SectionedAdapter;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;)",
            "Lcom/airbnb/android/adapters/SectionedAdapter;"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "reservations":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Reservation;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v4, "pendingReservations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Reservation;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v2, "confirmedTodayReservations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Reservation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "confirmedFutureReservations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Reservation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/Reservation;

    .line 195
    .local v5, "res":Lcom/airbnb/android/models/Reservation;
    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v8

    if-eqz v8, :cond_33

    .line 196
    invoke-direct {p0, v5}, Lcom/airbnb/android/fragments/TripsListFragment;->isCurrent(Lcom/airbnb/android/models/Reservation;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 197
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 199
    :cond_2f
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 201
    :cond_33
    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->isPending()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 202
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 209
    .end local v5    # "res":Lcom/airbnb/android/models/Reservation;
    :cond_3d
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TripsListFragment;->isLocalCompanionEnabled()Z

    move-result v8

    iput-boolean v8, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mIsLocalCompanionEnabled:Z

    .line 210
    iget-boolean v8, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mIsLocalCompanionEnabled:Z

    if-eqz v8, :cond_4d

    .line 211
    invoke-direct {p0, v2, v1}, Lcom/airbnb/android/fragments/TripsListFragment;->getNextLocalCompanionCity(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mNextLocalCompanionCity:Ljava/lang/String;

    .line 215
    :cond_4d
    new-instance v0, Lcom/airbnb/android/adapters/SectionedAdapter;

    invoke-direct {v0}, Lcom/airbnb/android/adapters/SectionedAdapter;-><init>()V

    .line 216
    .local v0, "adapter":Lcom/airbnb/android/adapters/SectionedAdapter;
    iget-boolean v8, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mIsLocalCompanionEnabled:Z

    if-eqz v8, :cond_61

    .line 217
    new-instance v8, Lcom/airbnb/android/fragments/TripsListFragment$CompanionCalloutAdapter;

    iget-object v9, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mNextLocalCompanionCity:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v10}, Lcom/airbnb/android/fragments/TripsListFragment$CompanionCalloutAdapter;-><init>(Lcom/airbnb/android/fragments/TripsListFragment;Ljava/lang/String;Lcom/airbnb/android/fragments/TripsListFragment$1;)V

    invoke-virtual {v0, v8}, Lcom/airbnb/android/adapters/SectionedAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 219
    :cond_61
    const/4 v7, 0x0

    .line 220
    .local v7, "wrapper":Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_74

    .line 221
    const v8, 0x7f0e062b

    invoke-direct {p0, v2, v8}, Lcom/airbnb/android/fragments/TripsListFragment;->createHeaderAdapter(Ljava/util/List;I)Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

    move-result-object v7

    .line 222
    if-eqz v7, :cond_74

    .line 223
    invoke-virtual {v0, v7}, Lcom/airbnb/android/adapters/SectionedAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 227
    :cond_74
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9f

    .line 228
    :cond_80
    const v8, 0x7f0e062d

    invoke-direct {p0, v1, v8}, Lcom/airbnb/android/fragments/TripsListFragment;->createHeaderAdapter(Ljava/util/List;I)Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

    move-result-object v7

    .line 229
    if-eqz v7, :cond_8c

    .line 230
    invoke-virtual {v0, v7}, Lcom/airbnb/android/adapters/SectionedAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 238
    :cond_8c
    :goto_8c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9e

    .line 239
    const v8, 0x7f0e062c

    invoke-direct {p0, v4, v8}, Lcom/airbnb/android/fragments/TripsListFragment;->createHeaderAdapter(Ljava/util/List;I)Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

    move-result-object v7

    .line 240
    if-eqz v7, :cond_9e

    .line 241
    invoke-virtual {v0, v7}, Lcom/airbnb/android/adapters/SectionedAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 245
    :cond_9e
    return-object v0

    .line 233
    :cond_9f
    new-instance v6, Lcom/airbnb/android/adapters/TripsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/airbnb/android/adapters/TripsAdapter;-><init>(Landroid/content/Context;)V

    .line 234
    .local v6, "reservationListAdapter":Lcom/airbnb/android/adapters/TripsAdapter;
    invoke-virtual {v6, p1}, Lcom/airbnb/android/adapters/TripsAdapter;->addAll(Ljava/util/Collection;)V

    .line 235
    invoke-virtual {v0, v6}, Lcom/airbnb/android/adapters/SectionedAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_8c
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onAttach(Landroid/app/Activity;)V

    .line 121
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripsListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/airbnb/android/interfaces/OnReservationItemSelectedListener;

    if-nez v0, :cond_2b

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parent fragment must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/interfaces/OnReservationItemSelectedListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2b
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripsListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/OnReservationItemSelectedListener;

    iput-object v0, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mCallback:Lcom/airbnb/android/interfaces/OnReservationItemSelectedListener;

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "is_upcoming"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mIsUpcoming:Z

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const v1, 0x7f0300f4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "v":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderListView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 82
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mIsUpcoming:Z

    if-eqz v1, :cond_74

    const v1, 0x7f0e0553

    :goto_1c
    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/TripsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/LoaderListView;->setEmptyResultsTitle(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mListView:Landroid/widget/ListView;

    .line 84
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 87
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/airbnb/android/fragments/TripsListFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/TripsListFragment$1;-><init>(Lcom/airbnb/android/fragments/TripsListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TripsListFragment;->getReservations()V

    .line 109
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mIsUpcoming:Z

    if-eqz v1, :cond_73

    .line 110
    new-instance v1, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    iget-object v2, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;-><init>(Landroid/widget/FrameLayout;Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    .line 111
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 114
    :cond_73
    return-object v0

    .line 82
    :cond_74
    const v1, 0x7f0e0551

    goto :goto_1c
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onDestroyView()V

    .line 132
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripsListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoaderImmediate()V

    .line 133
    return-void
.end method

.method public refresh()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TripsListFragment;->getReservations()V

    .line 70
    return-void
.end method
