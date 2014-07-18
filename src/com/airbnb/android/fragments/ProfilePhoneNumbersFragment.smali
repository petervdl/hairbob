.class public Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ProfilePhoneNumbersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DELETE_MSG:I = 0x1772


# instance fields
.field mBtnAddNumber:Lcom/airbnb/android/views/StickyButton;

.field mDividerUnverified:Landroid/view/View;

.field mDividerVerified:Landroid/view/View;

.field mHeaderUnverified:Landroid/widget/TextView;

.field mHeaderVerified:Landroid/widget/TextView;

.field mListViewUnverifiedNumbers:Lcom/airbnb/android/views/LinearListView;

.field mListViewVerifiedNumbers:Lcom/airbnb/android/views/LinearListView;

.field private mNumberToDelete:Lcom/airbnb/android/models/ProfilePhoneNumber;

.field private mUnverifiedNumberAdapter:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

.field private mUnverifiedNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/ProfilePhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifiedNumberAdapter:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

.field private mVerifiedNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/ProfilePhoneNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mVerifiedNumbers:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumbers:Ljava/util/List;

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumbers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Lcom/airbnb/android/models/ProfilePhoneNumber;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mNumberToDelete:Lcom/airbnb/android/models/ProfilePhoneNumber;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;Lcom/airbnb/android/models/ProfilePhoneNumber;)Lcom/airbnb/android/models/ProfilePhoneNumber;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/ProfilePhoneNumber;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mNumberToDelete:Lcom/airbnb/android/models/ProfilePhoneNumber;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mVerifiedNumbers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mVerifiedNumberAdapter:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumberAdapter:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->setHeadersVisibility()V

    return-void
.end method

.method private clearPhoneNumbers()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mVerifiedNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    return-void
.end method

.method private handleDeletePhoneNumber()V
    .registers 5

    .prologue
    .line 156
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mNumberToDelete:Lcom/airbnb/android/models/ProfilePhoneNumber;

    if-eqz v0, :cond_21

    .line 157
    const-string/jumbo v0, "delete"

    const-string/jumbo v1, "phone_number"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 158
    new-instance v0, Lcom/airbnb/android/requests/DeletePhoneNumberRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mNumberToDelete:Lcom/airbnb/android/models/ProfilePhoneNumber;

    invoke-virtual {v1}, Lcom/airbnb/android/models/ProfilePhoneNumber;->getId()J

    move-result-wide v1

    new-instance v3, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;-><init>(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/DeletePhoneNumberRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/DeletePhoneNumberRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 184
    :cond_21
    return-void
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .registers 1

    .prologue
    .line 61
    new-instance v0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;-><init>()V

    return-object v0
.end method

.method private populatePhoneNumbers()V
    .registers 5

    .prologue
    .line 100
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "allPhoneNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/ProfilePhoneNumber;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/ProfilePhoneNumber;

    .line 102
    .local v2, "number":Lcom/airbnb/android/models/ProfilePhoneNumber;
    invoke-virtual {v2}, Lcom/airbnb/android/models/ProfilePhoneNumber;->isVerified()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 103
    iget-object v3, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mVerifiedNumbers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 105
    :cond_28
    iget-object v3, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumbers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 108
    .end local v2    # "number":Lcom/airbnb/android/models/ProfilePhoneNumber;
    :cond_2e
    return-void
.end method

.method private setHeadersVisibility()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mHeaderVerified:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mVerifiedNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 132
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mDividerVerified:Landroid/view/View;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mVerifiedNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 133
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mHeaderUnverified:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 134
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mDividerUnverified:Landroid/view/View;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 135
    return-void
.end method

.method private setupPhoneNumbersList()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 111
    new-instance v0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mVerifiedNumbers:Ljava/util/List;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;-><init>(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mVerifiedNumberAdapter:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    .line 112
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mListViewVerifiedNumbers:Lcom/airbnb/android/views/LinearListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mVerifiedNumberAdapter:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    new-instance v0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumbers:Ljava/util/List;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;-><init>(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumberAdapter:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mListViewUnverifiedNumbers:Lcom/airbnb/android/views/LinearListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumberAdapter:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mListViewUnverifiedNumbers:Lcom/airbnb/android/views/LinearListView;

    new-instance v1, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$2;-><init>(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 127
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->setHeadersVisibility()V

    .line 128
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 188
    packed-switch p1, :pswitch_data_c

    .line 194
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 196
    :goto_6
    return-void

    .line 190
    :pswitch_7
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->handleDeletePhoneNumber()V

    goto :goto_6

    .line 188
    nop

    :pswitch_data_c
    .packed-switch 0x1772
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 72
    const v1, 0x7f0300d8

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/AirActivity;

    const v2, 0x7f0e019f

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/activities/AirActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 77
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mBtnAddNumber:Lcom/airbnb/android/views/StickyButton;

    const v2, 0x7f0e0194

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 78
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mBtnAddNumber:Lcom/airbnb/android/views/StickyButton;

    new-instance v2, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$1;-><init>(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->populatePhoneNumbers()V

    .line 88
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->setupPhoneNumbersList()V

    .line 90
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroy()V

    .line 96
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public profileUpdated(Lcom/airbnb/android/events/ProfileUpdatedEvent;)V
    .registers 4
    .param p1, "ev"    # Lcom/airbnb/android/events/ProfileUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/airbnb/android/events/ProfileUpdatedEvent;->getSection()Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    move-result-object v0

    .line 145
    .local v0, "updatedSection":Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Phone:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    if-ne v0, v1, :cond_1b

    .line 147
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->clearPhoneNumbers()V

    .line 148
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->populatePhoneNumbers()V

    .line 149
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mVerifiedNumberAdapter:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;->notifyDataSetChanged()V

    .line 150
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumberAdapter:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;->notifyDataSetChanged()V

    .line 151
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->setHeadersVisibility()V

    .line 153
    :cond_1b
    return-void
.end method
