.class Lcom/airbnb/android/views/PaymentChooser$2;
.super Ljava/lang/Object;
.source "PaymentChooser.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/PaymentChooser;->getPaymentMethods()V
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
        "Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/PaymentChooser;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/PaymentChooser;)V
    .registers 2

    .prologue
    .line 405
    iput-object p1, p0, Lcom/airbnb/android/views/PaymentChooser$2;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser$2;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # getter for: Lcom/airbnb/android/views/PaymentChooser;->mPaymentChooserListener:Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;
    invoke-static {v0}, Lcom/airbnb/android/views/PaymentChooser;->access$300(Lcom/airbnb/android/views/PaymentChooser;)Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;->onReceivedPaymentsError()V

    .line 419
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser$2;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;->mPaymentInstruments:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/airbnb/android/views/PaymentChooser;->access$002(Lcom/airbnb/android/views/PaymentChooser;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 410
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser$2;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # getter for: Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/airbnb/android/views/PaymentChooser;->access$000(Lcom/airbnb/android/views/PaymentChooser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 411
    iget-object v1, p0, Lcom/airbnb/android/views/PaymentChooser$2;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser$2;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # getter for: Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/airbnb/android/views/PaymentChooser;->access$000(Lcom/airbnb/android/views/PaymentChooser;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/PaymentInstrument;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/PaymentChooser;->setDefaultPaymentMethod(Lcom/airbnb/android/models/PaymentInstrument;)V

    .line 413
    :cond_2a
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser$2;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # getter for: Lcom/airbnb/android/views/PaymentChooser;->mPaymentChooserListener:Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;
    invoke-static {v0}, Lcom/airbnb/android/views/PaymentChooser;->access$300(Lcom/airbnb/android/views/PaymentChooser;)Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;->onReceivedPayments()V

    .line 414
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 405
    check-cast p1, Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/views/PaymentChooser$2;->onResponse(Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;)V

    return-void
.end method
