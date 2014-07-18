.class Lcom/airbnb/android/fragments/SendSpecialOfferFragment$10;
.super Ljava/lang/Object;
.source "SendSpecialOfferFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->sendSpecialOffer()V
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
        "Lcom/airbnb/android/requests/UpdateMessageThreadRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V
    .registers 2

    .prologue
    .line 404
    iput-object p1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$10;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$10;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/SolitAirActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SolitAirActivity;->showLoader(Z)V

    .line 421
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$10;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e071c

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->createErrorDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 422
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateMessageThreadRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$10;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/SolitAirActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SolitAirActivity;->showLoader(Z)V

    .line 410
    invoke-virtual {p1}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 411
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$10;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 412
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$10;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 416
    :goto_25
    return-void

    .line 414
    :cond_26
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$10;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    goto :goto_25
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 404
    check-cast p1, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$10;->onResponse(Lcom/airbnb/android/requests/UpdateMessageThreadRequest;)V

    return-void
.end method
