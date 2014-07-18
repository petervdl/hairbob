.class Lcom/airbnb/android/views/PaymentChooser$4;
.super Ljava/lang/Object;
.source "PaymentChooser.java"

# interfaces
.implements Lcom/airbnb/android/views/LinearListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/PaymentChooser;->showAllPaymentMethods()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/PaymentChooser;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/PaymentChooser;)V
    .registers 2

    .prologue
    .line 445
    iput-object p1, p0, Lcom/airbnb/android/views/PaymentChooser$4;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V
    .registers 11
    .param p1, "parent"    # Lcom/airbnb/android/views/LinearListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 450
    iget-object v2, p0, Lcom/airbnb/android/views/PaymentChooser$4;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # getter for: Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/airbnb/android/views/PaymentChooser;->access$000(Lcom/airbnb/android/views/PaymentChooser;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/views/PaymentChooser$4;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # getter for: Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/airbnb/android/views/PaymentChooser;->access$000(Lcom/airbnb/android/views/PaymentChooser;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 451
    iget-object v3, p0, Lcom/airbnb/android/views/PaymentChooser$4;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    iget-object v2, p0, Lcom/airbnb/android/views/PaymentChooser$4;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # getter for: Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/airbnb/android/views/PaymentChooser;->access$000(Lcom/airbnb/android/views/PaymentChooser;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/PaymentInstrument;

    invoke-virtual {v3, v2}, Lcom/airbnb/android/views/PaymentChooser;->setDefaultPaymentMethod(Lcom/airbnb/android/models/PaymentInstrument;)V

    .line 452
    iget-object v2, p0, Lcom/airbnb/android/views/PaymentChooser$4;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # getter for: Lcom/airbnb/android/views/PaymentChooser;->mPaymentChooserListener:Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;
    invoke-static {v2}, Lcom/airbnb/android/views/PaymentChooser;->access$300(Lcom/airbnb/android/views/PaymentChooser;)Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;->onSelectPayment()V

    .line 454
    iget-object v2, p0, Lcom/airbnb/android/views/PaymentChooser$4;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # getter for: Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/airbnb/android/views/PaymentChooser;->access$000(Lcom/airbnb/android/views/PaymentChooser;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/PaymentInstrument;

    invoke-virtual {v2}, Lcom/airbnb/android/models/PaymentInstrument;->getPaymentType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Google Wallet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string/jumbo v1, "GOOGLE_WALLET"

    .line 455
    .local v1, "paymentType":Ljava/lang/String;
    :goto_4a
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "PAYMENT_TYPE"

    invoke-virtual {v2, v3, v1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 456
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItPaymentClick(Lcom/airbnb/android/utils/Strap;)V

    .line 457
    return-void

    .line 454
    .end local v0    # "params":Lcom/airbnb/android/utils/Strap;
    .end local v1    # "paymentType":Ljava/lang/String;
    :cond_59
    const-string/jumbo v1, "CREDIT_CARD"

    goto :goto_4a
.end method
