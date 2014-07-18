.class Lcom/airbnb/android/adapters/ReferreeArrayAdapter$ReferreeViewHolder;
.super Ljava/lang/Object;
.source "ReferreeArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/ReferreeArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferreeViewHolder"
.end annotation


# instance fields
.field couponValueView:Landroid/widget/TextView;

.field framedImage:Lcom/airbnb/android/views/HaloImageView;

.field referreeNameView:Landroid/widget/TextView;

.field referreeStatusView:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
