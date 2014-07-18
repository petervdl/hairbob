.class Lcom/airbnb/android/views/DateAndGuestCountView$1;
.super Ljava/lang/Object;
.source "DateAndGuestCountView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/DateAndGuestCountView;->init(Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;IILjava/util/Calendar;Ljava/util/Calendar;Lcom/airbnb/android/models/SpecialOffer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/DateAndGuestCountView;

.field final synthetic val$isSpecialOffer:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/DateAndGuestCountView;Z)V
    .registers 3

    .prologue
    .line 75
    iput-object p1, p0, Lcom/airbnb/android/views/DateAndGuestCountView$1;->this$0:Lcom/airbnb/android/views/DateAndGuestCountView;

    iput-boolean p2, p0, Lcom/airbnb/android/views/DateAndGuestCountView$1;->val$isSpecialOffer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-boolean v0, p0, Lcom/airbnb/android/views/DateAndGuestCountView$1;->val$isSpecialOffer:Z

    if-eqz v0, :cond_f

    .line 80
    iget-object v0, p0, Lcom/airbnb/android/views/DateAndGuestCountView$1;->this$0:Lcom/airbnb/android/views/DateAndGuestCountView;

    # getter for: Lcom/airbnb/android/views/DateAndGuestCountView;->mViewer:Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;
    invoke-static {v0}, Lcom/airbnb/android/views/DateAndGuestCountView;->access$000(Lcom/airbnb/android/views/DateAndGuestCountView;)Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;->showDialogIfClickWithSpecialOffer()V

    .line 91
    :goto_e
    return-void

    .line 82
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/views/DateAndGuestCountView$1;->this$0:Lcom/airbnb/android/views/DateAndGuestCountView;

    # getter for: Lcom/airbnb/android/views/DateAndGuestCountView;->mViewer:Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;
    invoke-static {v0}, Lcom/airbnb/android/views/DateAndGuestCountView;->access$000(Lcom/airbnb/android/views/DateAndGuestCountView;)Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/DateAndGuestCountView$1;->this$0:Lcom/airbnb/android/views/DateAndGuestCountView;

    invoke-interface {v0, v1}, Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;->showCalendarDialog(Lcom/airbnb/android/views/DateAndGuestCountView;)V

    .line 84
    iget-object v0, p0, Lcom/airbnb/android/views/DateAndGuestCountView$1;->this$0:Lcom/airbnb/android/views/DateAndGuestCountView;

    # getter for: Lcom/airbnb/android/views/DateAndGuestCountView;->mIsBookItFlow:Z
    invoke-static {v0}, Lcom/airbnb/android/views/DateAndGuestCountView;->access$100(Lcom/airbnb/android/views/DateAndGuestCountView;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 85
    invoke-static {v2}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItDateSelectClick(Lcom/airbnb/android/utils/Strap;)V

    goto :goto_e

    .line 87
    :cond_26
    invoke-static {v2}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackInquiryDateSelectClick(Lcom/airbnb/android/utils/Strap;)V

    goto :goto_e
.end method
