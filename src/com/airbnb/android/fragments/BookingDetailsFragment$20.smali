.class Lcom/airbnb/android/fragments/BookingDetailsFragment$20;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->applyCoupon(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/ApplyCouponRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

.field final synthetic val$fromDoneButton:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;Z)V
    .registers 3

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->val$fromDoneButton:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 1203
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->val$fromDoneButton:Z

    if-eqz v1, :cond_41

    .line 1204
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mProcessCouponSpinner:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1206
    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v1, :cond_42

    .line 1207
    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "errorMessage":Ljava/lang/String;
    const v1, 0x7f0e01ac

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const v3, 0x7f0e01ae

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_2e
    const v2, 0x7f0e0563

    invoke-static {v1, v0, v2}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->newInstance(ILjava/lang/String;I)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "error_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1215
    :cond_41
    :goto_41
    return-void

    .line 1212
    :cond_42
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    goto :goto_41
.end method

.method public onResponse(Lcom/airbnb/android/requests/ApplyCouponRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/ApplyCouponRequest;

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1193
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->val$fromDoneButton:Z

    if-eqz v0, :cond_14

    .line 1194
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mProcessCouponSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1196
    :cond_14
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/ApplyCouponRequest;->reservation:Lcom/airbnb/android/models/Reservation;

    # setter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$902(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/models/Reservation;

    .line 1197
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->updatePriceState()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1800(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 1199
    :cond_20
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1188
    check-cast p1, Lcom/airbnb/android/requests/ApplyCouponRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment$20;->onResponse(Lcom/airbnb/android/requests/ApplyCouponRequest;)V

    return-void
.end method
