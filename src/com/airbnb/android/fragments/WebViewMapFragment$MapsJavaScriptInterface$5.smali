.class Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;
.super Ljava/lang/Object;
.source "WebViewMapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->markerClick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

.field final synthetic val$listingId:J


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;J)V
    .registers 4

    .prologue
    .line 334
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iput-wide p2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->val$listingId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 337
    iget-object v2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnMarkerClickListener:Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;
    invoke-static {v2}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$800(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 338
    iget-object v2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnMarkerClickListener:Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;
    invoke-static {v2}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$800(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;

    move-result-object v2

    iget-wide v3, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->val$listingId:J

    invoke-interface {v2, v3, v4}, Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;->onMapMarkerClick(J)V

    .line 341
    :cond_17
    iget-object v2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mMarker:Landroid/view/View;
    invoke-static {v2}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$200(Lcom/airbnb/android/fragments/WebViewMapFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 342
    iget-object v2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v3, v3, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mMarker:Landroid/view/View;
    invoke-static {v3}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$200(Lcom/airbnb/android/fragments/WebViewMapFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 346
    :cond_32
    iget-object v2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mInfoWindowCreator:Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;
    invoke-static {v2}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$900(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;

    move-result-object v2

    if-eqz v2, :cond_97

    .line 347
    iget-object v2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    iget-object v3, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v3, v3, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mInfoWindowCreator:Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;
    invoke-static {v3}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$900(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;

    move-result-object v3

    iget-wide v4, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->val$listingId:J

    invoke-interface {v3, v4, v5}, Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;->createInfoWindow(J)Landroid/view/View;

    move-result-object v3

    # setter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mMarker:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$202(Lcom/airbnb/android/fragments/WebViewMapFragment;Landroid/view/View;)Landroid/view/View;

    .line 348
    iget-object v2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/WebViewMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 349
    .local v0, "height":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x11

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 350
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 351
    iget-object v2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mMarker:Landroid/view/View;
    invoke-static {v2}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$200(Lcom/airbnb/android/fragments/WebViewMapFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object v2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v3, v3, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mMarker:Landroid/view/View;
    invoke-static {v3}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$200(Lcom/airbnb/android/fragments/WebViewMapFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 354
    iget-object v2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mMarker:Landroid/view/View;
    invoke-static {v2}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$200(Lcom/airbnb/android/fragments/WebViewMapFragment;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5$1;-><init>(Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_97
    iget-object v2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    const/4 v3, 0x1

    # setter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mIgnoreNextMapMove:Z
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$702(Lcom/airbnb/android/fragments/WebViewMapFragment;Z)Z

    .line 366
    return-void
.end method
