.class Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$1;
.super Ljava/lang/Object;
.source "WebViewMapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->onMapLoaded()V
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
    .line 272
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$1;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$1;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mLoaded:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$000(Lcom/airbnb/android/fragments/WebViewMapFragment;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 276
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$1;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    const/4 v1, 0x1

    # setter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mLoaded:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$002(Lcom/airbnb/android/fragments/WebViewMapFragment;Z)Z

    .line 277
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$1;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnMapLoadedListener:Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$100(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 278
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$1;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnMapLoadedListener:Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$100(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;->onMapLoaded()V

    .line 281
    :cond_27
    return-void
.end method
