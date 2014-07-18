.class Lcom/airbnb/android/fragments/BookingDetailsFragment$12;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->setupPriceFields(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 2

    .prologue
    .line 854
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$12;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 858
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$12;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 859
    if-eqz p2, :cond_13

    .line 860
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$12;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$600(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItCouponClick(Lcom/airbnb/android/utils/Strap;)V

    .line 863
    :cond_13
    return-void
.end method
