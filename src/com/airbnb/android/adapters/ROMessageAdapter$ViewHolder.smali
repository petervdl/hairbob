.class Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ROMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/ROMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field contentContainer:Landroid/widget/LinearLayout;

.field messageAvatarGap:Landroid/view/View;

.field messageTextView:Landroid/widget/TextView;

.field profileImageView:Lcom/airbnb/android/views/HaloImageView;

.field statusContainer:Landroid/view/View;

.field statusDetailsTextView:Lcom/airbnb/android/views/AutoScaleTextView;

.field statusTextView:Landroid/widget/TextView;

.field timestampTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/adapters/ROMessageAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/adapters/ROMessageAdapter$1;

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/airbnb/android/adapters/ROMessageAdapter$ViewHolder;-><init>()V

    return-void
.end method
