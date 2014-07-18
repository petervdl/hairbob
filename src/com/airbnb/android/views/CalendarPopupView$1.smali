.class final Lcom/airbnb/android/views/CalendarPopupView$1;
.super Ljava/lang/Object;
.source "CalendarPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/CalendarPopupView;->setupPopup(Landroid/view/View;Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Landroid/widget/PopupWindow$OnDismissListener;Landroid/view/View;Z)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$reservation:Lcom/airbnb/android/models/Reservation;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;)V
    .registers 3

    .prologue
    .line 86
    iput-object p1, p0, Lcom/airbnb/android/views/CalendarPopupView$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/airbnb/android/views/CalendarPopupView$1;->val$reservation:Lcom/airbnb/android/models/Reservation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/android/views/CalendarPopupView$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/airbnb/android/views/CalendarPopupView$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/airbnb/android/views/CalendarPopupView$1;->val$reservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v2

    const-string/jumbo v4, "calendar_pop"

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/activities/ROActivity;->intentForReservationId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
