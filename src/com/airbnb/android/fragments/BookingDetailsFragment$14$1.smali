.class Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->onClick(Landroid/view/View;)V
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
        "Lcom/airbnb/android/requests/DeleteCouponRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/BookingDetailsFragment$14;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BookingDetailsFragment$14;)V
    .registers 2

    .prologue
    .line 885
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;->this$1:Lcom/airbnb/android/fragments/BookingDetailsFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 898
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;->this$1:Lcom/airbnb/android/fragments/BookingDetailsFragment$14;

    iget-object v1, v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 899
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;->this$1:Lcom/airbnb/android/fragments/BookingDetailsFragment$14;

    iget-object v1, v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mProcessCouponSpinner:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 900
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;->this$1:Lcom/airbnb/android/fragments/BookingDetailsFragment$14;

    iget-object v1, v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDeleteCouponBtn:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 901
    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v1, :cond_50

    .line 902
    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "errorMessage":Ljava/lang/String;
    const v1, 0x7f0e01ac

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;->this$1:Lcom/airbnb/android/fragments/BookingDetailsFragment$14;

    iget-object v2, v2, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    const v3, 0x7f0e01b2

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_3a
    const v2, 0x7f0e0563

    invoke-static {v1, v0, v2}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->newInstance(ILjava/lang/String;I)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;->this$1:Lcom/airbnb/android/fragments/BookingDetailsFragment$14;

    iget-object v2, v2, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "error_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 910
    :cond_4f
    :goto_4f
    return-void

    .line 907
    :cond_50
    iget-object v1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;->this$1:Lcom/airbnb/android/fragments/BookingDetailsFragment$14;

    iget-object v1, v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    goto :goto_4f
.end method

.method public onResponse(Lcom/airbnb/android/requests/DeleteCouponRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/DeleteCouponRequest;

    .prologue
    .line 889
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;->this$1:Lcom/airbnb/android/fragments/BookingDetailsFragment$14;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 890
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;->this$1:Lcom/airbnb/android/fragments/BookingDetailsFragment$14;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mProcessCouponSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;->this$1:Lcom/airbnb/android/fragments/BookingDetailsFragment$14;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/DeleteCouponRequest;->reservation:Lcom/airbnb/android/models/Reservation;

    # setter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$902(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/models/Reservation;

    .line 892
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;->this$1:Lcom/airbnb/android/fragments/BookingDetailsFragment$14;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$14;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->updatePriceState()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$1800(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V

    .line 894
    :cond_24
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 885
    check-cast p1, Lcom/airbnb/android/requests/DeleteCouponRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment$14$1;->onResponse(Lcom/airbnb/android/requests/DeleteCouponRequest;)V

    return-void
.end method
