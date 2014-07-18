.class public Lcom/airbnb/android/fragments/PayoutListFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "PayoutListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;
    }
.end annotation


# static fields
.field private static final SAVED_PAYOUT_INFOS:Ljava/lang/String; = "payout_infos"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAddPayoutDisabled:Z

.field private mFooter:Landroid/view/View;

.field private mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private mPayoutInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/PayoutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/airbnb/android/fragments/PayoutListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/PayoutListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/PayoutListFragment;)Lcom/airbnb/android/views/LoaderListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutListFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/PayoutListFragment;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutListFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mPayoutInfo:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/PayoutListFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutListFragment;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mAddPayoutDisabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/PayoutListFragment;ILcom/airbnb/android/models/PayoutInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/airbnb/android/models/PayoutInfo;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/PayoutListFragment;->createActionListDialog(ILcom/airbnb/android/models/PayoutInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/PayoutListFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutListFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutListFragment;->startNewPayout()V

    return-void
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/PayoutListFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutListFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutListFragment;->loadUsersPayoutMethods()V

    return-void
.end method

.method private createActionListDialog(ILcom/airbnb/android/models/PayoutInfo;)V
    .registers 10
    .param p1, "totalPayoutMethodCount"    # I
    .param p2, "payoutMethod"    # Lcom/airbnb/android/models/PayoutInfo;

    .prologue
    const v6, 0x7f0e0567

    const v5, 0x7f0a002b

    .line 220
    const/4 v2, 0x1

    if-ne p1, v2, :cond_37

    .line 221
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/models/ActionItem;->make(Landroid/content/Context;)Lcom/airbnb/android/models/ActionItem;

    move-result-object v2

    const v3, 0x7f0200fc

    const v4, 0x7f0e058f

    invoke-virtual {v2, v3, v5, v4}, Lcom/airbnb/android/models/ActionItem;->add(III)Lcom/airbnb/android/models/ActionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/ActionItem;->toList()Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    .local v0, "actionItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/ActionItem;>;"
    const v2, 0x7f0e05a2

    invoke-static {v6, v2, v0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->newInstance(IILjava/util/ArrayList;)Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    move-result-object v1

    .line 231
    .local v1, "dialogFragment":Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;
    :goto_26
    new-instance v2, Lcom/airbnb/android/fragments/PayoutListFragment$4;

    invoke-direct {v2, p0, p2}, Lcom/airbnb/android/fragments/PayoutListFragment$4;-><init>(Lcom/airbnb/android/fragments/PayoutListFragment;Lcom/airbnb/android/models/PayoutInfo;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->setActionItemListener(Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;)V

    .line 251
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/airbnb/android/fragments/AirDialogFragments;->showDialog(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/DialogFragment;Landroid/support/v4/app/Fragment;)V

    .line 252
    return-void

    .line 225
    .end local v0    # "actionItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/ActionItem;>;"
    .end local v1    # "dialogFragment":Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;
    :cond_37
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/models/ActionItem;->make(Landroid/content/Context;)Lcom/airbnb/android/models/ActionItem;

    move-result-object v2

    const v3, 0x7f02011c

    const v4, 0x7f0e05ab

    invoke-virtual {v2, v3, v5, v4}, Lcom/airbnb/android/models/ActionItem;->add(III)Lcom/airbnb/android/models/ActionItem;

    move-result-object v2

    const v3, 0x7f0201f0

    const v4, 0x7f0a0014

    const v5, 0x7f0e05a9

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/android/models/ActionItem;->add(III)Lcom/airbnb/android/models/ActionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/ActionItem;->toList()Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    .restart local v0    # "actionItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/ActionItem;>;"
    invoke-static {v6, v0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->newInstance(ILjava/util/ArrayList;)Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    move-result-object v1

    .restart local v1    # "dialogFragment":Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;
    goto :goto_26
.end method

.method private loadUsersPayoutMethods()V
    .registers 3

    .prologue
    .line 134
    new-instance v0, Lcom/airbnb/android/requests/GetPayoutsRequest;

    new-instance v1, Lcom/airbnb/android/fragments/PayoutListFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/PayoutListFragment$3;-><init>(Lcom/airbnb/android/fragments/PayoutListFragment;)V

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/GetPayoutsRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    .line 148
    .local v0, "request":Lcom/airbnb/android/requests/GetPayoutsRequest;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/GetPayoutsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 149
    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/PayoutListFragment;
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/airbnb/android/fragments/PayoutListFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/PayoutListFragment;-><init>()V

    return-object v0
.end method

.method private startNewPayout()V
    .registers 3

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-static {}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->newInstance()Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/PayoutActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 256
    return-void
.end method


# virtual methods
.method public deletePayout(JZ)V
    .registers 7
    .param p1, "payoutId"    # J
    .param p3, "isDefault"    # Z

    .prologue
    .line 279
    if-eqz p3, :cond_18

    .line 280
    const v0, 0x7f0e059f

    const v1, 0x7f0e059e

    const v2, 0x7f0e0563

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 303
    :goto_17
    return-void

    .line 287
    :cond_18
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->startLoader()V

    .line 289
    new-instance v0, Lcom/airbnb/android/requests/PayoutDeleteRequest;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/PayoutListFragment$6;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/PayoutListFragment$6;-><init>(Lcom/airbnb/android/fragments/PayoutListFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/PayoutDeleteRequest;-><init>(Ljava/lang/Long;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/PayoutDeleteRequest;->execute()V

    goto :goto_17
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string/jumbo v0, "payments"

    const-string/jumbo v1, "add_payout_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mAddPayoutDisabled:Z

    .line 55
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mAddPayoutDisabled:Z

    if-nez v0, :cond_18

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/PayoutListFragment;->setHasOptionsMenu(Z)V

    .line 59
    :cond_18
    if-eqz p1, :cond_23

    .line 60
    const-string/jumbo v0, "payout_infos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mPayoutInfo:Ljava/util/List;

    .line 62
    :cond_23
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 74
    const v0, 0x7f100017

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/AirFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const v2, 0x7f0300a9

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    .line 94
    check-cast v2, Lcom/airbnb/android/views/LoaderListView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 97
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03019b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mFooter:Landroid/view/View;

    .line 98
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mFooter:Landroid/view/View;

    const v3, 0x7f080428

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, "footerText":Landroid/widget/TextView;
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mAddPayoutDisabled:Z

    if-nez v2, :cond_6d

    .line 100
    const v2, 0x7f0e058f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mFooter:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/PayoutListFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/PayoutListFragment$1;-><init>(Lcom/airbnb/android/fragments/PayoutListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :goto_3e
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mFooter:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 122
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mPayoutInfo:Ljava/util/List;

    if-eqz v2, :cond_69

    .line 123
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderListView;->finishLoaderImmediate()V

    .line 124
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f03014e

    iget-object v6, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mPayoutInfo:Ljava/util/List;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;-><init>(Lcom/airbnb/android/fragments/PayoutListFragment;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    :cond_69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutListFragment;->loadUsersPayoutMethods()V

    .line 130
    return-object v1

    .line 109
    :cond_6d
    const v2, 0x7f0e058d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mFooter:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/PayoutListFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/PayoutListFragment$2;-><init>(Lcom/airbnb/android/fragments/PayoutListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 85
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 82
    :pswitch_c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-static {}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->newInstance()Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/PayoutActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 83
    const/4 v0, 0x1

    goto :goto_b

    .line 80
    nop

    :pswitch_data_1c
    .packed-switch 0x7f08054f
        :pswitch_c
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    const-string/jumbo v0, "payout_infos"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mPayoutInfo:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 70
    return-void
.end method

.method public setDefaultPayout(J)V
    .registers 6
    .param p1, "payoutId"    # J

    .prologue
    .line 260
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->startLoader()V

    .line 262
    new-instance v0, Lcom/airbnb/android/requests/PayoutSetDefaultRequest;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/PayoutListFragment$5;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/PayoutListFragment$5;-><init>(Lcom/airbnb/android/fragments/PayoutListFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/PayoutSetDefaultRequest;-><init>(Ljava/lang/Long;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/PayoutSetDefaultRequest;->execute()V

    .line 276
    return-void
.end method
