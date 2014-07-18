.class Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$4;
.super Ljava/lang/Object;
.source "WebViewMapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->mapMove(DDI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;)V
    .registers 2

    .prologue
    .line 313
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$4;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$4;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnCameraChangeListener:Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$600(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 317
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$4;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnCameraChangeListener:Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$600(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$4;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v1, v1, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mCenter:Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {v1}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$400(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$4;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v2, v2, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mZoom:I
    invoke-static {v2}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$500(Lcom/airbnb/android/fragments/WebViewMapFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;->onCameraChanged(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 320
    :cond_25
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$4;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mIgnoreNextMapMove:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$700(Lcom/airbnb/android/fragments/WebViewMapFragment;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 321
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$4;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mIgnoreNextMapMove:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$702(Lcom/airbnb/android/fragments/WebViewMapFragment;Z)Z

    .line 328
    :cond_37
    :goto_37
    return-void

    .line 325
    :cond_38
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$4;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mMarker:Landroid/view/View;
    invoke-static {v0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$200(Lcom/airbnb/android/fragments/WebViewMapFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 326
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$4;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$4;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v1, v1, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mMarker:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$200(Lcom/airbnb/android/fragments/WebViewMapFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_37
.end method
