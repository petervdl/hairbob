.class Lcom/airbnb/android/adapters/DiscoverAdapter$2;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter;->getVideoView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

.field final synthetic val$position:I

.field final synthetic val$videoFeedItem:Lcom/airbnb/android/models/VideoFeedItem;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/models/VideoFeedItem;I)V
    .registers 4

    .prologue
    .line 170
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$2;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$2;->val$videoFeedItem:Lcom/airbnb/android/models/VideoFeedItem;

    iput p3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$2;->val$videoFeedItem:Lcom/airbnb/android/models/VideoFeedItem;

    iget v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$2;->val$position:I

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackVideoClicked(Lcom/airbnb/android/models/VideoFeedItem;I)V

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/activities/PlayVideoActivity;

    iget-object v3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$2;->val$videoFeedItem:Lcom/airbnb/android/models/VideoFeedItem;

    invoke-virtual {v3}, Lcom/airbnb/android/models/VideoFeedItem;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/fragments/PlayVideoFragment;->bundleWithVideoUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/SolitAirActivity;->intentForBundle(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 176
    return-void
.end method
