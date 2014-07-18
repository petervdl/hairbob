.class Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;
.super Ljava/lang/Object;
.source "HHAlertsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/HHAlertsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReservationRequestViewHolder"
.end annotation


# instance fields
.field details:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field profileImage:Lcom/airbnb/android/views/HaloImageView;

.field status:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/airbnb/android/adapters/HHAlertsAdapter;

.field timePassed:Landroid/widget/TextView;

.field unreadDot:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/HHAlertsAdapter;)V
    .registers 2

    .prologue
    .line 360
    iput-object p1, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter$ReservationRequestViewHolder;->this$0:Lcom/airbnb/android/adapters/HHAlertsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
