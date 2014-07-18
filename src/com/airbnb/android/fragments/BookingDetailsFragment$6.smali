.class Lcom/airbnb/android/fragments/BookingDetailsFragment$6;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->showConfirmAndPay()V
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
    .line 635
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$600(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItConfirmAndPayButtonClick(Lcom/airbnb/android/utils/Strap;)V

    .line 640
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->confirmPayment()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1300(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 641
    return-void
.end method
