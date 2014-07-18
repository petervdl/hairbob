.class Lcom/airbnb/android/adapters/DiscoverAdapter$9;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter;->getReferralCard(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter;I)V
    .registers 3

    .prologue
    .line 403
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$9;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iput p2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$9;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$9;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iget-object v0, v0, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItems:Ljava/util/List;

    iget v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$9;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 409
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "referral_card_closed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 410
    invoke-static {}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackCloseDiscoverFeedBanner()V

    .line 411
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$9;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/DiscoverAdapter;->notifyDataSetChanged()V

    .line 412
    return-void
.end method
