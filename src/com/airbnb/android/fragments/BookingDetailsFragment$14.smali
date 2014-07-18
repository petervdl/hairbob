.class Lcom/airbnb/android/fragments/BookingDetailsFragment$14;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 878
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 881
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mProcessCouponSpinner:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 882
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDeleteCouponBtn:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 884
    new-instance v0, Lcom/airbnb/android/requests/DeleteCouponRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$900(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$900(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getCouponCode()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;-><init>(Lcom/airbnb/android/fragments/BookingDetailsFragment$14;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/requests/DeleteCouponRequest;-><init>(JLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 912
    .local v0, "deleteCouponRequest":Lcom/airbnb/android/requests/DeleteCouponRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/DeleteCouponRequest;->execute()V

    .line 914
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->makeBookItAnalyticsParams()Lcom/airbnb/android/utils/Strap;
    invoke-static {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$600(Lcom/airbnb/android/fragments/BookingDetailsFragment;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItCouponDelete(Lcom/airbnb/android/utils/Strap;)V

    .line 915
    return-void
.end method
