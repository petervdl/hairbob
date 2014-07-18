.class public interface abstract Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;
.super Ljava/lang/Object;
.source "GeocoderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/GeocoderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FallbackRequestListener"
.end annotation


# virtual methods
.method public abstract onFail()V
.end method

.method public abstract onSuccess(Landroid/location/Address;)V
.end method
