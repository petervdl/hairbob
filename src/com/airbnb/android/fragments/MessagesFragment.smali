.class public Lcom/airbnb/android/fragments/MessagesFragment;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "MessagesFragment.java"

# interfaces
.implements Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;
.implements Lcom/airbnb/android/utils/FragmentRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/MessagesFragment$4;
    }
.end annotation


# static fields
.field private static final ARGS_IS_HISTORY:Ljava/lang/String; = "is_history"

.field private static final ARG_ALERTS:Ljava/lang/String; = "alerts"

.field private static final ARG_LAST_REFRESH_TIME:Ljava/lang/String; = "last_refreshed"

.field private static final ARG_MESSAGES:Ljava/lang/String; = "messages"

.field private static final ARG_SELECTED_ID:Ljava/lang/String; = "selected_id"


# instance fields
.field private mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

.field private mContentFrame:Landroid/view/View;

.field private mGuestAlertsRequest:Lcom/airbnb/android/requests/AlertsRequest$GuestAlertsRequest;

.field private mIsHistory:Z

.field private mIsWideMode:Z

.field private mLastRefresh:J

.field private mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

.field private mScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

.field private mSelectedId:J

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/MessagesFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/MessagesFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/MessagesFragment;)Lcom/airbnb/android/views/SwipeRefreshLoaderListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/MessagesFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/MessagesFragment;)Lcom/airbnb/android/adapters/TravelInboxAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/MessagesFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    return-object v0
.end method

.method public static createHistoryMessagesFragment()Lcom/airbnb/android/fragments/MessagesFragment;
    .registers 4

    .prologue
    .line 68
    new-instance v1, Lcom/airbnb/android/fragments/MessagesFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/MessagesFragment;-><init>()V

    .line 69
    .local v1, "f":Lcom/airbnb/android/fragments/MessagesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "is_history"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/MessagesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v1
.end method

.method private loadROContainerFragment(Lcom/airbnb/android/models/MessageThread;)V
    .registers 8
    .param p1, "message"    # Lcom/airbnb/android/models/MessageThread;

    .prologue
    const/4 v5, 0x0

    .line 208
    iget-wide v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mSelectedId:J

    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_31

    .line 209
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MessagesFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0801c7

    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Default:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    invoke-virtual {v4}, Lcom/airbnb/android/activities/ROActivity$LaunchState;->ordinal()I

    move-result v4

    invoke-static {v2, v3, v5, v5, v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->newInstanceForThreadId(JZZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 211
    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mSelectedId:J

    .line 213
    :cond_31
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 95
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "is_history"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mIsHistory:Z

    .line 98
    :cond_18
    if-eqz p1, :cond_59

    .line 99
    const-string/jumbo v2, "selected_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mSelectedId:J

    .line 100
    const-string/jumbo v2, "messages"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 101
    .local v1, "threads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/MessageThread;>;"
    const-string/jumbo v2, "alerts"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    .local v0, "alerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Alert;>;"
    new-instance v2, Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-boolean v4, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mIsHistory:Z

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/airbnb/android/adapters/TravelInboxAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    iput-object v2, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    .line 103
    const-string/jumbo v2, "last_refreshed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mLastRefresh:J

    .line 108
    .end local v0    # "alerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Alert;>;"
    .end local v1    # "threads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/MessageThread;>;"
    :goto_47
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MessagesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mIsWideMode:Z

    .line 110
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/MessagesFragment;->setHasOptionsMenu(Z)V

    .line 111
    return-void

    .line 105
    :cond_59
    new-instance v2, Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-boolean v4, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mIsHistory:Z

    invoke-direct {v2, v3, v5, v5, v4}, Lcom/airbnb/android/adapters/TravelInboxAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    iput-object v2, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    goto :goto_47
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 178
    const v0, 0x7f10000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 179
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 180
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0a002c

    .line 115
    const v3, 0x7f0300ba

    invoke-virtual {p1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0801c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mContentFrame:Landroid/view/View;

    .line 118
    const v3, 0x7f08020a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    .line 120
    iget-object v3, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->getSwipeRefreshLayout()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 121
    iget-object v3, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const v4, 0x7f0a002b

    const v5, 0x7f0a002d

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorScheme(IIII)V

    .line 122
    iget-object v3, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v4, Lcom/airbnb/android/fragments/MessagesFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/MessagesFragment$1;-><init>(Lcom/airbnb/android/fragments/MessagesFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 131
    iget-object v3, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 132
    .local v1, "listView":Landroid/widget/ListView;
    const v3, 0x7f0802d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 133
    .local v0, "listFrame":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    invoke-direct {v3, v0, v7}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;-><init>(Landroid/widget/FrameLayout;Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v3, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    .line 134
    iget-object v3, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 136
    new-instance v3, Lcom/airbnb/android/fragments/MessagesFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/MessagesFragment$2;-><init>(Lcom/airbnb/android/fragments/MessagesFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v3, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-virtual {v3, p0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->setCallback(Lcom/airbnb/android/adapters/TravelInboxAdapter$TravelInboxCallback;)V

    .line 160
    iget-object v3, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080540

    if-ne v0, v1, :cond_e

    .line 191
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MessagesFragment;->refresh()V

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 184
    const v0, 0x7f080540

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/android/fragments/MessagesFragment;->prepareMenuItem(Landroid/view/Menu;I)V

    .line 185
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 186
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 79
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onResume()V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mLastRefresh:J

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    .line 82
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MessagesFragment;->refresh()V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mLastRefresh:J

    .line 88
    :goto_19
    return-void

    .line 85
    :cond_1a
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->finishLoaderImmediate()V

    .line 86
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MessagesFragment;->onTravelInboxLoaded()V

    goto :goto_19
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    if-eqz v0, :cond_2f

    .line 169
    const-string/jumbo v0, "selected_id"

    iget-wide v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 170
    const-string/jumbo v0, "alerts"

    iget-object v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getAlerts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 171
    const-string/jumbo v0, "messages"

    iget-object v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getMessageThreads()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 172
    const-string/jumbo v0, "last_refreshed"

    iget-wide v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mLastRefresh:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 174
    :cond_2f
    return-void
.end method

.method public onTravelInboxLoaded()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MessagesFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 247
    iget-object v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->finishLoader()V

    .line 249
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mIsWideMode:Z

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mContentFrame:Landroid/view/View;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getMessageThreads()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getMessageThreads()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3c

    .line 250
    iget-object v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->getMessageThreads()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/MessageThread;

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/MessagesFragment;->loadROContainerFragment(Lcom/airbnb/android/models/MessageThread;)V

    .line 253
    :cond_3c
    iget-object v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->isEmpty()Z

    move-result v0

    .line 254
    .local v0, "showEmptyResults":Z
    iget-object v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->showEmptyResults(Z)V

    .line 255
    if-eqz v0, :cond_69

    .line 256
    iget-object v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->getEmptyResults()Lcom/airbnb/android/views/EmptyResults;

    move-result-object v2

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mIsHistory:Z

    if-eqz v1, :cond_6a

    const v1, 0x7f0e02c2

    :goto_56
    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/EmptyResults;->setTitle(I)V

    .line 257
    iget-object v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->getEmptyResults()Lcom/airbnb/android/views/EmptyResults;

    move-result-object v2

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mIsHistory:Z

    if-eqz v1, :cond_6e

    const v1, 0x7f0e02c1

    :goto_66
    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/EmptyResults;->setSubtitle(I)V

    .line 260
    .end local v0    # "showEmptyResults":Z
    :cond_69
    return-void

    .line 256
    .restart local v0    # "showEmptyResults":Z
    :cond_6a
    const v1, 0x7f0e054a

    goto :goto_56

    .line 257
    :cond_6e
    const v1, 0x7f0e0549

    goto :goto_66
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->clear()V

    .line 218
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->reset()V

    .line 221
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mIsHistory:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mGuestAlertsRequest:Lcom/airbnb/android/requests/AlertsRequest$GuestAlertsRequest;

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->isQueueRunning(Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 222
    new-instance v0, Lcom/airbnb/android/requests/AlertsRequest$GuestAlertsRequest;

    new-instance v1, Lcom/airbnb/android/fragments/MessagesFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/MessagesFragment$3;-><init>(Lcom/airbnb/android/fragments/MessagesFragment;)V

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/AlertsRequest$GuestAlertsRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mGuestAlertsRequest:Lcom/airbnb/android/requests/AlertsRequest$GuestAlertsRequest;

    .line 236
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mGuestAlertsRequest:Lcom/airbnb/android/requests/AlertsRequest$GuestAlertsRequest;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/AlertsRequest$GuestAlertsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 238
    :cond_27
    return-void
.end method

.method protected setupActionBar(Landroid/app/ActionBar;)V
    .registers 3
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 264
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 266
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mIsHistory:Z

    if-eqz v0, :cond_13

    const v0, 0x7f0e0755

    :goto_f
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 267
    return-void

    .line 266
    :cond_13
    const v0, 0x7f0e0794

    goto :goto_f
.end method

.method protected startMessageThreadActivity(Lcom/airbnb/android/models/MessageThread;)V
    .registers 7
    .param p1, "message"    # Lcom/airbnb/android/models/MessageThread;

    .prologue
    .line 198
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mIsHistory:Z

    if-eqz v1, :cond_13

    const-string/jumbo v0, "host_inbox"

    .line 200
    .local v0, "trackingSource":Ljava/lang/String;
    :goto_7
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mIsWideMode:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/airbnb/android/fragments/MessagesFragment;->mContentFrame:Landroid/view/View;

    if-eqz v1, :cond_17

    .line 201
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/MessagesFragment;->loadROContainerFragment(Lcom/airbnb/android/models/MessageThread;)V

    .line 205
    :goto_12
    return-void

    .line 198
    .end local v0    # "trackingSource":Ljava/lang/String;
    :cond_13
    const-string/jumbo v0, "guest_inbox"

    goto :goto_7

    .line 203
    .restart local v0    # "trackingSource":Ljava/lang/String;
    :cond_17
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/airbnb/android/activities/ROActivity;->intentForThreadId(Landroid/content/Context;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/MessagesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_12
.end method
