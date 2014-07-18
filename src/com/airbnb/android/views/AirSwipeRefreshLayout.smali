.class public Lcom/airbnb/android/views/AirSwipeRefreshLayout;
.super Landroid/support/v4/widget/SwipeRefreshLayout;
.source "AirSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/AirSwipeRefreshLayout$CanChildScrollUpListener;
    }
.end annotation


# instance fields
.field private mCanChildScrollUpListener:Lcom/airbnb/android/views/AirSwipeRefreshLayout$CanChildScrollUpListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/android/views/AirSwipeRefreshLayout;->mCanChildScrollUpListener:Lcom/airbnb/android/views/AirSwipeRefreshLayout$CanChildScrollUpListener;

    if-eqz v0, :cond_b

    .line 26
    iget-object v0, p0, Lcom/airbnb/android/views/AirSwipeRefreshLayout;->mCanChildScrollUpListener:Lcom/airbnb/android/views/AirSwipeRefreshLayout$CanChildScrollUpListener;

    invoke-interface {v0}, Lcom/airbnb/android/views/AirSwipeRefreshLayout$CanChildScrollUpListener;->canChildScrollUp()Z

    move-result v0

    .line 28
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v0

    goto :goto_a
.end method

.method public setCanChildScrollUpListener(Lcom/airbnb/android/views/AirSwipeRefreshLayout$CanChildScrollUpListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/views/AirSwipeRefreshLayout$CanChildScrollUpListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/airbnb/android/views/AirSwipeRefreshLayout;->mCanChildScrollUpListener:Lcom/airbnb/android/views/AirSwipeRefreshLayout$CanChildScrollUpListener;

    .line 34
    return-void
.end method
