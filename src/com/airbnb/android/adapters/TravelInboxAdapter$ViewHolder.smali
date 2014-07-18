.class Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TravelInboxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/TravelInboxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field profileImage:Lcom/airbnb/android/views/HaloImageView;

.field status:Landroid/widget/TextView;

.field time:Landroid/widget/TextView;

.field unreadDot:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/adapters/TravelInboxAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/adapters/TravelInboxAdapter$1;

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/airbnb/android/adapters/TravelInboxAdapter$ViewHolder;-><init>()V

    return-void
.end method
