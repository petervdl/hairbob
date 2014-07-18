.class Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VerificationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/VerificationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field iconImageView:Landroid/widget/ImageView;

.field verificationTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/adapters/VerificationsAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/adapters/VerificationsAdapter$1;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/airbnb/android/adapters/VerificationsAdapter$ViewHolder;-><init>()V

    return-void
.end method
