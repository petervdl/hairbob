.class Lcom/airbnb/android/adapters/DiscoverAdapter$8;
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


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter;)V
    .registers 2

    .prologue
    .line 390
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$8;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    const-string/jumbo v0, "discover_feed"

    invoke-static {v0}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackInviteFriendsLanding(Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackReferralCardClick()V

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/InviteFriendsActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 396
    return-void
.end method
