.class Lcom/airbnb/android/fragments/ROContainerFragment$17;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->acceptOrDeclineReservationRequest(Landroid/content/Intent;)V
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
        "Lcom/airbnb/android/requests/UpdateReservationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

.field final synthetic val$guestName:Ljava/lang/String;

.field final synthetic val$status:Lcom/airbnb/android/models/ReservationStatus;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$17;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$17;->val$status:Lcom/airbnb/android/models/ReservationStatus;

    iput-object p3, p0, Lcom/airbnb/android/fragments/ROContainerFragment$17;->val$guestName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$17;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$17;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1462
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$17;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 1464
    :cond_1d
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$17;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 1465
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateReservationRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateReservationRequest;

    .prologue
    .line 1451
    invoke-virtual {p1}, Lcom/airbnb/android/requests/UpdateReservationRequest;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1452
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$17;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$17;->val$status:Lcom/airbnb/android/models/ReservationStatus;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$17;->val$guestName:Ljava/lang/String;

    # invokes: Lcom/airbnb/android/fragments/ROContainerFragment;->showResponseSuccessDialog(Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2300(Lcom/airbnb/android/fragments/ROContainerFragment;Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;)V

    .line 1457
    :goto_f
    return-void

    .line 1455
    :cond_10
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$17;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    goto :goto_f
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1447
    check-cast p1, Lcom/airbnb/android/requests/UpdateReservationRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment$17;->onResponse(Lcom/airbnb/android/requests/UpdateReservationRequest;)V

    return-void
.end method
