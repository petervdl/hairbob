.class Lcom/airbnb/android/fragments/TripChargesFragment$3;
.super Ljava/lang/Object;
.source "TripChargesFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TripChargesFragment;->updateTripChargesPaymentInstrument()V
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
        "Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TripChargesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TripChargesFragment;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/airbnb/android/fragments/TripChargesFragment$3;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 187
    const v0, 0x7f0e01ac

    const v1, 0x7f0e01bd

    const v2, 0x7f0e0563

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/TripChargesFragment$3;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/TripChargesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_error"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$3;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;
    invoke-static {v0}, Lcom/airbnb/android/fragments/TripChargesFragment;->access$000(Lcom/airbnb/android/fragments/TripChargesFragment;)Lcom/airbnb/android/models/TripInvoice;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/TripChargesFragment$3;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v1}, Lcom/airbnb/android/views/PaymentChooser;->getSelectedPaymentInstrument()Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/PaymentInstrument;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/models/TripInvoice;->setPaymentInstrumentId(J)V

    .line 183
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/TripChargesFragment$3;->onResponse(Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;)V

    return-void
.end method
