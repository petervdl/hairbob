.class Lcom/airbnb/android/adapters/SocialConnectionsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SocialConnectionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/SocialConnectionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field caption:Landroid/widget/TextView;

.field connectionThumbnail:Lcom/airbnb/android/views/HaloImageView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/adapters/SocialConnectionsAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/adapters/SocialConnectionsAdapter$1;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/airbnb/android/adapters/SocialConnectionsAdapter$ViewHolder;-><init>()V

    return-void
.end method
