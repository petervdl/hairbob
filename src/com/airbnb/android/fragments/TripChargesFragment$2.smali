.class Lcom/airbnb/android/fragments/TripChargesFragment$2;
.super Ljava/lang/Object;
.source "TripChargesFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TripChargesFragment;->setupPaymentChooser(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TripChargesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TripChargesFragment;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/airbnb/android/fragments/TripChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddedPaymentMethod()V
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/TripChargesFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 158
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    # invokes: Lcom/airbnb/android/fragments/TripChargesFragment;->updateTripChargesPaymentInstrument()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/TripChargesFragment;->access$400(Lcom/airbnb/android/fragments/TripChargesFragment;)V

    .line 160
    :cond_d
    return-void
.end method

.method public onReceivedPayments()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/TripChargesFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 144
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    # invokes: Lcom/airbnb/android/fragments/TripChargesFragment;->selectInvoicePaymentInstrument()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/TripChargesFragment;->access$100(Lcom/airbnb/android/fragments/TripChargesFragment;)V

    .line 146
    :cond_d
    return-void
.end method

.method public onReceivedPaymentsError()V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/TripChargesFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 151
    const v0, 0x7f0e01ac

    const v1, 0x7f0e01b5

    const v2, 0x7f0e0563

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/TripChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/TripChargesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_error"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 153
    :cond_21
    return-void
.end method

.method public onSelectPayment()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/TripChargesFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 137
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/TripChargesFragment;

    # invokes: Lcom/airbnb/android/fragments/TripChargesFragment;->updateTripChargesPaymentInstrument()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/TripChargesFragment;->access$400(Lcom/airbnb/android/fragments/TripChargesFragment;)V

    .line 139
    :cond_d
    return-void
.end method
