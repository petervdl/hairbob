.class public Lcom/airbnb/android/fragments/MyWishListListingsFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "MyWishListListingsFragment.java"


# static fields
.field private static final DIALOG_REQ_MAKE_WL_PUBLIC:I = 0x189

.field private static final DIALOG_REQ_WL_DELETE_CANCEL:I = 0x18b

.field private static final DIALOG_REQ_WL_DELETE_CONFIRM:I = 0x18a

.field private static final TRACKING_CLICK_COLLECTION:Ljava/lang/String; = "click_collection"

.field private static final TRACKING_CLICK_DELETE:Ljava/lang/String; = "click_delete"

.field private static final TRACKING_CLICK_OVERFLOW:Ljava/lang/String; = "click_overflow_menu"

.field private static final WISHLIST_KEY:Ljava/lang/String; = "wishlist"


# instance fields
.field private mEmptyResultsContainer:Landroid/widget/LinearLayout;

.field private mListingAdapter:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

.field private mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private mWishList:Lcom/airbnb/android/models/Collection;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)Lcom/airbnb/android/adapters/MyWishListListingsAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mListingAdapter:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)Lcom/airbnb/android/models/Collection;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/MyWishListListingsFragment;Lcom/airbnb/android/models/Collection;)Lcom/airbnb/android/models/Collection;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/MyWishListListingsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->showEmptyMessagesView()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)Lcom/airbnb/android/views/LoaderListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    return-object v0
.end method

.method public static findOrCreateRetainFragment(Lcom/airbnb/android/models/Collection;)Lcom/airbnb/android/fragments/MyWishListListingsFragment;
    .registers 4
    .param p0, "wishList"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 65
    new-instance v1, Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;-><init>()V

    .line 66
    .local v1, "fragment":Lcom/airbnb/android/fragments/MyWishListListingsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "wishlist"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v1
.end method

.method private loadListingsForWishList()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 231
    iget-object v1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Collection;->getListings()Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1e

    .line 233
    iget-object v1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Collection;->getListingsCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->setListings(Ljava/util/List;I)V

    .line 234
    iget-object v1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v1, v5}, Lcom/airbnb/android/views/LoaderListView;->setVisibility(I)V

    .line 237
    :cond_1e
    new-instance v1, Lcom/airbnb/android/requests/WishListListingsRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v2

    new-instance v4, Lcom/airbnb/android/fragments/MyWishListListingsFragment$4;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment$4;-><init>(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)V

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/airbnb/android/requests/WishListListingsRequest;-><init>(JILcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/WishListListingsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 264
    iget-object v1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderListView;->startLoader()V

    .line 265
    return-void
.end method

.method private setListings(Ljava/util/List;I)V
    .registers 5
    .param p2, "listingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mListingAdapter:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->setData(Ljava/util/List;I)V

    .line 274
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderListView;->setVisibility(I)V

    .line 275
    return-void
.end method

.method private shareWishList()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Collection;->isPrivateCollection()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 155
    invoke-direct {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->showSwitchWLToPublicDialog()V

    .line 160
    :goto_b
    return-void

    .line 158
    :cond_c
    invoke-direct {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->showShareDialog()V

    goto :goto_b
.end method

.method private showDeleteWishListDialog()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 182
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v1, v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, "click_collection"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "click_overflow_menu"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "click_delete"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0814

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0813

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/16 v2, 0x18b

    const v3, 0x7f0e0164

    const/16 v4, 0x18a

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private showEmptyMessagesView()V
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mEmptyResultsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderListView;->setVisibility(I)V

    .line 270
    return-void
.end method

.method private showShareDialog()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 169
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v5, v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string/jumbo v5, "click_collection"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string/jumbo v6, "click_share"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 171
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v2, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v4, "text/plain"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "https://airbnb.com/wishlists/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 175
    .local v1, "resources":Landroid/content/res/Resources;
    const-string/jumbo v4, "android.intent.extra.TEXT"

    const v5, 0x7f0e0700

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "currUserName":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.extra.SUBJECT"

    const v5, 0x7f0e0701

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const v4, 0x7f0e06fd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method private showSwitchWLToPublicDialog()V
    .registers 7

    .prologue
    .line 163
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e06ff

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e06fe

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/4 v2, 0x0

    const v3, 0x7f0e085b

    const/16 v4, 0x189

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private togglePrivacy()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    iget-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Collection;->isPrivateCollection()Z

    move-result v3

    if-nez v3, :cond_4a

    move v4, v1

    .line 192
    .local v4, "makePrivate":Z
    :goto_b
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    sget-object v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v5, v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v5, v3, v2

    const-string/jumbo v2, "click_collection"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "click_overflow_menu"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "change_privacy"

    aput-object v2, v3, v1

    const/4 v2, 0x4

    if-eqz v4, :cond_4c

    const-string/jumbo v1, "made_private"

    :goto_2b
    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/airbnb/android/fragments/MyWishListListingsFragment$3;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment$3;-><init>(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;-><init>(JLjava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V

    .line 221
    .local v0, "request":Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 222
    return-void

    .end local v0    # "request":Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;
    .end local v4    # "makePrivate":Z
    :cond_4a
    move v4, v2

    .line 191
    goto :goto_b

    .line 192
    .restart local v4    # "makePrivate":Z
    :cond_4c
    const-string/jumbo v1, "made_public"

    goto :goto_2b
.end method


# virtual methods
.method public listingRemovedFromWishList(Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;)V
    .registers 9
    .param p1, "event"    # Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 279
    iget-object v2, p1, Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;->wishList:Lcom/airbnb/android/models/Collection;

    .line 280
    .local v2, "updatedWishList":Lcom/airbnb/android/models/Collection;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 281
    iput-object v2, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    .line 284
    :cond_14
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 285
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-static {v3, v4}, Lcom/airbnb/android/utils/WishListUtils;->getWishListActionBarSubtitle(Landroid/content/res/Resources;Lcom/airbnb/android/models/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "subtitle":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Collection;->getListingsCount()I

    move-result v3

    if-nez v3, :cond_34

    .line 289
    invoke-direct {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->showEmptyMessagesView()V

    .line 291
    :cond_34
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    packed-switch p1, :pswitch_data_66

    .line 327
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 329
    :goto_b
    return-void

    .line 297
    :pswitch_c
    invoke-direct {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->togglePrivacy()V

    goto :goto_b

    .line 301
    :pswitch_10
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "click_collection"

    aput-object v2, v1, v4

    const-string/jumbo v2, "click_overflow_menu"

    aput-object v2, v1, v5

    const-string/jumbo v2, "click_delete"

    aput-object v2, v1, v6

    const-string/jumbo v2, "deleted"

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 303
    new-instance v0, Lcom/airbnb/android/requests/DeleteWishListRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v1

    new-instance v3, Lcom/airbnb/android/fragments/MyWishListListingsFragment$5;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment$5;-><init>(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/DeleteWishListRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    .line 319
    .local v0, "request":Lcom/airbnb/android/requests/DeleteWishListRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/DeleteWishListRequest;->execute()V

    goto :goto_b

    .line 323
    .end local v0    # "request":Lcom/airbnb/android/requests/DeleteWishListRequest;
    :pswitch_44
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "click_collection"

    aput-object v2, v1, v4

    const-string/jumbo v2, "click_overflow_menu"

    aput-object v2, v1, v5

    const-string/jumbo v2, "click_delete"

    aput-object v2, v1, v6

    const-string/jumbo v2, "cancelled"

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    goto :goto_b

    .line 295
    nop

    :pswitch_data_66
    .packed-switch 0x189
        :pswitch_c
        :pswitch_10
        :pswitch_44
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "wishlist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Collection;

    iput-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->setHasOptionsMenu(Z)V

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 118
    const v0, 0x7f10001f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 84
    const v3, 0x7f0300fe

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 85
    .local v0, "layout":Landroid/widget/FrameLayout;
    const v3, 0x7f0800d6

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/LoaderListView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 86
    const v3, 0x7f0802d3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mEmptyResultsContainer:Landroid/widget/LinearLayout;

    .line 87
    new-instance v3, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-direct {v3, v4, v5}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/Collection;)V

    iput-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mListingAdapter:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    .line 89
    const v3, 0x7f0802d4

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 90
    .local v2, "searchButton":Landroid/widget/Button;
    new-instance v3, Lcom/airbnb/android/fragments/MyWishListListingsFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment$1;-><init>(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderListView;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v1

    .line 99
    .local v1, "listView":Landroid/widget/AbsListView;
    const v3, 0x7f020012

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 100
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setDrawSelectorOnTop(Z)V

    .line 101
    iget-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mListingAdapter:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    new-instance v3, Lcom/airbnb/android/fragments/MyWishListListingsFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment$2;-><init>(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    sget-object v3, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v3, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 113
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroy()V

    .line 227
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1a

    .line 143
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 131
    :sswitch_d
    invoke-direct {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->shareWishList()V

    goto :goto_c

    .line 135
    :sswitch_11
    invoke-direct {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->showDeleteWishListDialog()V

    goto :goto_c

    .line 139
    :sswitch_15
    invoke-direct {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->togglePrivacy()V

    goto :goto_c

    .line 129
    nop

    :sswitch_data_1a
    .sparse-switch
        0x7f080537 -> :sswitch_d
        0x7f080550 -> :sswitch_11
        0x7f080555 -> :sswitch_15
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 123
    const v1, 0x7f080555

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 124
    .local v0, "privacyMenuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Collection;->isPrivateCollection()Z

    move-result v1

    if-eqz v1, :cond_16

    const v1, 0x7f0e0811

    :goto_12
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 125
    return-void

    .line 124
    :cond_16
    const v1, 0x7f0e0810

    goto :goto_12
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 150
    invoke-direct {p0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->loadListingsForWishList()V

    .line 151
    return-void
.end method
