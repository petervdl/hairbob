.class Lcom/airbnb/android/adapters/PickWishListAdapter$3;
.super Ljava/lang/Object;
.source "PickWishListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/PickWishListAdapter;->setupAddNewWishListRow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

.field final synthetic val$addNewSpinner:Landroid/widget/ProgressBar;

.field final synthetic val$checkMark:Landroid/widget/ImageView;

.field final synthetic val$nameEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/PickWishListAdapter;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V
    .registers 5

    .prologue
    .line 247
    iput-object p1, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->val$nameEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->val$addNewSpinner:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->val$checkMark:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 251
    iget-object v2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->val$nameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "wishListName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 295
    :goto_19
    return-void

    .line 255
    :cond_1a
    new-array v2, v5, [Ljava/lang/String;

    sget-object v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v3, v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string/jumbo v3, "tap_heart"

    aput-object v3, v2, v6

    const-string/jumbo v3, "create_new_wl"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

    # getter for: Lcom/airbnb/android/adapters/PickWishListAdapter;->mTrackingPosition:Ljava/lang/String;
    invoke-static {v3}, Lcom/airbnb/android/adapters/PickWishListAdapter;->access$000(Lcom/airbnb/android/adapters/PickWishListAdapter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 256
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v3, v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string/jumbo v3, "tap_heart"

    aput-object v3, v2, v6

    const-string/jumbo v3, "add_to_wl"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

    # getter for: Lcom/airbnb/android/adapters/PickWishListAdapter;->mTrackingPosition:Ljava/lang/String;
    invoke-static {v3}, Lcom/airbnb/android/adapters/PickWishListAdapter;->access$000(Lcom/airbnb/android/adapters/PickWishListAdapter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string/jumbo v3, "public"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/airbnb/android/requests/CreateWishListRequest;

    iget-object v2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

    # getter for: Lcom/airbnb/android/adapters/PickWishListAdapter;->mListingToAdd:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/adapters/PickWishListAdapter;->access$100(Lcom/airbnb/android/adapters/PickWishListAdapter;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;-><init>(Lcom/airbnb/android/adapters/PickWishListAdapter$3;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/CreateWishListRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/requests/RequestListener;)V

    .line 289
    .local v0, "request":Lcom/airbnb/android/requests/CreateWishListRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/CreateWishListRequest;->execute()V

    .line 290
    iget-object v2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->val$addNewSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 291
    iget-object v2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->val$checkMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/PickWishListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->val$nameEditText:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_19
.end method
