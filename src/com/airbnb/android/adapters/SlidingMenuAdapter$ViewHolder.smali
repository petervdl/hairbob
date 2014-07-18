.class final Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SlidingMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/SlidingMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field mNotificationCount:Landroid/widget/TextView;

.field mSectionTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$ViewHolder;-><init>()V

    return-void
.end method
