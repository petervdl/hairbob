.class public interface abstract Lcom/airbnb/android/AirbnbApi$AirbnbApiPaymentStatusListener;
.super Ljava/lang/Object;
.source "AirbnbApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/AirbnbApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AirbnbApiPaymentStatusListener"
.end annotation


# virtual methods
.method public abstract onPaymentFailed(Ljava/lang/String;)V
.end method

.method public abstract onPaymentSubmitted()V
.end method
