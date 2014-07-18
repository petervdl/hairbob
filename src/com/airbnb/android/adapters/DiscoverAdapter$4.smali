.class Lcom/airbnb/android/adapters/DiscoverAdapter$4;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter;->getEnableLastMinuteCallout(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

.field final synthetic val$feedItem:Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;I)V
    .registers 4

    .prologue
    .line 218
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$4;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$4;->val$feedItem:Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;

    iput p3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackClickLmbHostUpsell()V

    .line 224
    invoke-static {v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markHasSeenDiscoverEnableLmb(Landroid/content/Context;)V

    .line 226
    iget-object v2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$4;->val$feedItem:Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;

    invoke-virtual {v2}, Lcom/airbnb/android/models/EnableLastMinuteBookingsFeedItem;->getEligibleListingsNotLastMinuteBookable()Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "eligibleNonLmbEnabledListings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_38

    .line 228
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/airbnb/android/activities/ManageListingActivity;->intentForIBSell(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    :cond_29
    :goto_29
    iget-object v2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$4;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iget-object v2, v2, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItems:Ljava/util/List;

    iget v3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$4;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 244
    iget-object v2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$4;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/DiscoverAdapter;->notifyDataSetChanged()V

    .line 245
    return-void

    .line 229
    :cond_38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_29

    .line 230
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e016b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/adapters/ListingPickerAdapter;

    invoke-direct {v3, v0, v1}, Lcom/airbnb/android/adapters/ListingPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v4, -0x1

    new-instance v5, Lcom/airbnb/android/adapters/DiscoverAdapter$4$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/airbnb/android/adapters/DiscoverAdapter$4$1;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter$4;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_29
.end method
