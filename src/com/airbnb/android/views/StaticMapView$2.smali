.class Lcom/airbnb/android/views/StaticMapView$2;
.super Ljava/lang/Object;
.source "StaticMapView.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/StaticMapView;->fetchImage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/StaticMapView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/StaticMapView;)V
    .registers 2

    .prologue
    .line 193
    iput-object p1, p0, Lcom/airbnb/android/views/StaticMapView$2;->this$0:Lcom/airbnb/android/views/StaticMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 7
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v4, 0x1

    .line 208
    iget-object v0, p0, Lcom/airbnb/android/views/StaticMapView$2;->this$0:Lcom/airbnb/android/views/StaticMapView;

    # setter for: Lcom/airbnb/android/views/StaticMapView;->mFrozen:Z
    invoke-static {v0, v4}, Lcom/airbnb/android/views/StaticMapView;->access$302(Lcom/airbnb/android/views/StaticMapView;Z)Z

    .line 209
    iget-object v0, p0, Lcom/airbnb/android/views/StaticMapView$2;->this$0:Lcom/airbnb/android/views/StaticMapView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StaticMapView;->setVisibility(I)V

    .line 210
    const-string/jumbo v1, "android_eng"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "static_map_error"

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "error_code"

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v0, :cond_2e

    const/4 v0, -0x1

    :goto_26
    invoke-virtual {v2, v3, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 212
    return-void

    .line 210
    :cond_2e
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    goto :goto_26
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 6
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/airbnb/android/views/StaticMapView$2;->this$0:Lcom/airbnb/android/views/StaticMapView;

    # getter for: Lcom/airbnb/android/views/StaticMapView;->mCacheKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/airbnb/android/views/StaticMapView;->access$100(Lcom/airbnb/android/views/StaticMapView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 197
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/BitmapLruCache;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/BitmapLruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/StaticMapView$2;->this$0:Lcom/airbnb/android/views/StaticMapView;

    # getter for: Lcom/airbnb/android/views/StaticMapView;->mCacheKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/views/StaticMapView;->access$100(Lcom/airbnb/android/views/StaticMapView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/BitmapLruCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 201
    :cond_27
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 202
    iget-object v0, p0, Lcom/airbnb/android/views/StaticMapView$2;->this$0:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    # invokes: Lcom/airbnb/android/views/StaticMapView;->setBitmapAndFreeze(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/views/StaticMapView;->access$200(Lcom/airbnb/android/views/StaticMapView;Landroid/graphics/Bitmap;)V

    .line 204
    :cond_36
    return-void
.end method
