.class public Lcom/airbnb/android/fragments/ListingCalendarFragment;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "ListingCalendarFragment.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/FragmentPreDrawListener;


# static fields
.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field private static final ARG_SHOW_MANAGE_LISTING_BUTTON:Ljava/lang/String; = "show_manage_listing_button"

.field private static final DIALOG_REQ_SEL_LISTING:I = 0x69


# instance fields
.field mEditListingButton:Lcom/airbnb/android/views/StickyButton;

.field private mListings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

.field private mSpaceAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

.field mSpaceView:Lcom/airbnb/android/views/LinearListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ListingCalendarFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingCalendarFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/ListingCalendarFragment;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingCalendarFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ListingCalendarFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingCalendarFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->setupSpaces()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ListingCalendarFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingCalendarFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->shouldShowFux()Z

    move-result v0

    return v0
.end method

.method public static getBundle(Lcom/airbnb/android/models/Listing;Z)Landroid/os/Bundle;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "showManageListingButton"    # Z

    .prologue
    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    const-string/jumbo v1, "show_manage_listing_button"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    return-object v0
.end method

.method public static instanceForListing(Lcom/airbnb/android/models/Listing;Z)Lcom/airbnb/android/fragments/ListingCalendarFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "showManageListingButton"    # Z

    .prologue
    .line 56
    new-instance v0, Lcom/airbnb/android/fragments/ListingCalendarFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;-><init>()V

    .line 57
    .local v0, "f":Lcom/airbnb/android/fragments/ListingCalendarFragment;
    invoke-static {p0, p1}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getBundle(Lcom/airbnb/android/models/Listing;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v0
.end method

.method private loadCalendar(Lcom/airbnb/android/models/Listing;)V
    .registers 6
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 167
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 168
    new-instance v1, Lcom/airbnb/android/fragments/ListingCalendarFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/ListingCalendarFragment$4;-><init>(Lcom/airbnb/android/fragments/ListingCalendarFragment;Lcom/airbnb/android/models/Listing;)V

    .line 188
    .local v1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/CalendarRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/CalendarRequest;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Lcom/airbnb/android/requests/CalendarRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    .line 189
    .local v0, "calendarRequest":Lcom/airbnb/android/requests/CalendarRequest;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/CalendarRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 190
    return-void
.end method

.method private loadListings()V
    .registers 5

    .prologue
    .line 115
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 116
    new-instance v0, Lcom/airbnb/android/requests/MySpacesRequest;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/airbnb/android/fragments/ListingCalendarFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment$2;-><init>(Lcom/airbnb/android/fragments/ListingCalendarFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/MySpacesRequest;-><init>(Lcom/airbnb/android/models/User;ZLcom/airbnb/android/requests/RequestListener;)V

    .line 145
    .local v0, "request":Lcom/airbnb/android/requests/MySpacesRequest;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/MySpacesRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 146
    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/ListingCalendarFragment;
    .registers 1

    .prologue
    .line 52
    new-instance v0, Lcom/airbnb/android/fragments/ListingCalendarFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;-><init>()V

    return-object v0
.end method

.method private setupSpaces()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 149
    new-instance v1, Lcom/airbnb/android/adapters/ListingsRowAdapter;

    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    sget-object v2, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_ROOMTYPE_AND_LIST_STATUS_MINI:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    invoke-direct {v1, v0, v2}, Lcom/airbnb/android/adapters/ListingsRowAdapter;-><init>(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mSpaceAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    .line 150
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->loadCalendar(Lcom/airbnb/android/models/Listing;)V

    .line 152
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mSpaceView:Lcom/airbnb/android/views/LinearListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mSpaceAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_38

    .line 154
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mSpaceView:Lcom/airbnb/android/views/LinearListView;

    new-instance v1, Lcom/airbnb/android/fragments/ListingCalendarFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment$3;-><init>(Lcom/airbnb/android/fragments/ListingCalendarFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 164
    :goto_37
    return-void

    .line 162
    :cond_38
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mSpaceView:Lcom/airbnb/android/views/LinearListView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LinearListView;->setBackgroundColor(I)V

    goto :goto_37
.end method

.method private shouldShowFux()Z
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeMLCalendarFtue(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 211
    packed-switch p1, :pswitch_data_1e

    .line 219
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 222
    :goto_6
    return-void

    .line 213
    :pswitch_7
    const-string/jumbo v1, "listing"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    .line 214
    .local v0, "selected":Lcom/airbnb/android/models/Listing;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mSpaceAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->clearListings()V

    .line 215
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mSpaceAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->addListing(Lcom/airbnb/android/models/Listing;)V

    .line 216
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->loadCalendar(Lcom/airbnb/android/models/Listing;)V

    goto :goto_6

    .line 211
    :pswitch_data_1e
    .packed-switch 0x69
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 71
    const v4, 0x7f0300a4

    invoke-virtual {p1, v4, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 73
    .local v3, "view":Landroid/view/View;
    invoke-static {p0, v3}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "show_manage_listing_button"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 77
    .local v2, "showManageListingButton":Z
    :cond_1c
    if-eqz v2, :cond_55

    .line 78
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mEditListingButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v5, Lcom/airbnb/android/fragments/ListingCalendarFragment$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment$1;-><init>(Lcom/airbnb/android/fragments/ListingCalendarFragment;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :goto_28
    const/4 v1, 0x0

    .line 90
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_38

    .line 92
    const-string/jumbo v4, "listing"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "listing":Lcom/airbnb/android/models/Listing;
    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 95
    .restart local v1    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_38
    if-eqz v1, :cond_5d

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;

    .line 97
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->setupSpaces()V

    .line 99
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->setupActionBar(Landroid/app/ActionBar;)V

    .line 104
    :goto_54
    return-object v3

    .line 86
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_55
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mEditListingButton:Lcom/airbnb/android/views/StickyButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    goto :goto_28

    .line 101
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_5d
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->loadListings()V

    goto :goto_54
.end method

.method public onFragmentPreDraw(Landroid/support/v4/app/Fragment;)V
    .registers 11
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/high16 v8, 0x3f000000

    .line 198
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->shouldShowFux()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 199
    check-cast p1, Lcom/airbnb/android/fragments/ManageCalendarFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getSpotlightLocation(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 200
    .local v0, "coords":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3e4ccccd

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 201
    .local v3, "x":F
    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    mul-float v4, v5, v8

    .line 202
    .local v4, "y":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v2, v5

    .line 203
    .local v2, "rad":F
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mSpaceAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->getItemAsListing(I)Lcom/airbnb/android/models/Listing;

    move-result-object v6

    invoke-static {v5, v6, v3, v4, v2}, Lcom/airbnb/android/activities/ManageCalendarFUXActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;FFF)Landroid/content/Intent;

    move-result-object v1

    .line 204
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->startActivity(Landroid/content/Intent;)V

    .line 205
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markMLCalendarFtueAsSeen(Landroid/content/Context;)V

    .line 207
    .end local v0    # "coords":Landroid/graphics/Rect;
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "rad":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_53
    return-void
.end method

.method protected setupActionBar(Landroid/app/ActionBar;)V
    .registers 3
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 111
    const v0, 0x7f0e00a8

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 112
    return-void
.end method
