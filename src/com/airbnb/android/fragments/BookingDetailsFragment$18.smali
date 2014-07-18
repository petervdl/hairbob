.class Lcom/airbnb/android/fragments/BookingDetailsFragment$18;
.super Ljava/lang/Object;
.source "BookingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;->requestFXCopy()V
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
        "Lcom/airbnb/android/requests/PaymentMethodsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 2

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$18;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 1078
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/PaymentMethodsRequest;)V
    .registers 3
    .param p1, "response"    # Lcom/airbnb/android/requests/PaymentMethodsRequest;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$18;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # setter for: Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentMethodsFX:Lcom/airbnb/android/requests/PaymentMethodsRequest;
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$2102(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/airbnb/android/requests/PaymentMethodsRequest;)Lcom/airbnb/android/requests/PaymentMethodsRequest;

    .line 1070
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$18;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1071
    iget-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment$18;->this$0:Lcom/airbnb/android/fragments/BookingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/BookingDetailsFragment;->displayFXCopy(Lcom/airbnb/android/requests/PaymentMethodsRequest;)V
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->access$2200(Lcom/airbnb/android/fragments/BookingDetailsFragment;Lcom/airbnb/android/requests/PaymentMethodsRequest;)V

    .line 1073
    :cond_12
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1065
    check-cast p1, Lcom/airbnb/android/requests/PaymentMethodsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/BookingDetailsFragment$18;->onResponse(Lcom/airbnb/android/requests/PaymentMethodsRequest;)V

    return-void
.end method
