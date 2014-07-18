.class public interface abstract Lcom/airbnb/android/utils/SignInUtil$SignInListener;
.super Ljava/lang/Object;
.source "SignInUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/SignInUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SignInListener"
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getHostingActivity()Landroid/app/Activity;
.end method

.method public abstract onCallbackResponse(ZLjava/lang/String;)V
.end method

.method public abstract onSignInError()V
.end method

.method public abstract onSignInSuccess(Lcom/airbnb/android/utils/SignInUtil$Service;)V
.end method

.method public abstract showRequestedPermissions(Lcom/airbnb/android/utils/SignInUtil$Service;Landroid/content/Intent;)V
.end method
