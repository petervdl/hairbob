.class public interface abstract Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;
.super Ljava/lang/Object;
.source "CropScaleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/CropScaleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoCropListener"
.end annotation


# virtual methods
.method public abstract getImageBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract onCropCancel()V
.end method

.method public abstract onCropComplete(Ljava/lang/String;)V
.end method
