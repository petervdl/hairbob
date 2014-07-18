.class Lcom/airbnb/android/adapters/DiscoverAdapter$1;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter;->getWebLinkView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

.field final synthetic val$position:I

.field final synthetic val$webLinkFeedItem:Lcom/airbnb/android/models/WebLinkFeedItem;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/models/WebLinkFeedItem;I)V
    .registers 4

    .prologue
    .line 145
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$1;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$1;->val$webLinkFeedItem:Lcom/airbnb/android/models/WebLinkFeedItem;

    iput p3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$1;->val$webLinkFeedItem:Lcom/airbnb/android/models/WebLinkFeedItem;

    iget v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackWebLinkClicked(Lcom/airbnb/android/models/WebLinkFeedItem;I)V

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$1;->val$webLinkFeedItem:Lcom/airbnb/android/models/WebLinkFeedItem;

    invoke-virtual {v2}, Lcom/airbnb/android/models/WebLinkFeedItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/WebViewActivity;->intentForUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method
