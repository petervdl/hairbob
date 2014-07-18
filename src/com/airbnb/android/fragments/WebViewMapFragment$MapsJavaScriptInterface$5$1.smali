.class Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5$1;
.super Ljava/lang/Object;
.source "WebViewMapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;)V
    .registers 2

    .prologue
    .line 354
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5$1;->this$2:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5$1;->this$2:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5$1;->this$2:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;

    iget-object v1, v1, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v1, v1, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mMarker:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$200(Lcom/airbnb/android/fragments/WebViewMapFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5$1;->this$2:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnInfoWindowClickListener:Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$1000(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 359
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5$1;->this$2:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnInfoWindowClickListener:Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$1000(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5$1;->this$2:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;

    iget-wide v1, v1, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->val$listingId:J

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;->onInfoWindowClick(J)V

    .line 361
    :cond_32
    return-void
.end method
