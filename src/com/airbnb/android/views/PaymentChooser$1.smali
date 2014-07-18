.class Lcom/airbnb/android/views/PaymentChooser$1;
.super Ljava/lang/Object;
.source "PaymentChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/PaymentChooser;->setDefaultPaymentMethod(Lcom/airbnb/android/models/PaymentInstrument;)V
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
    .line 218
    iput-object p1, p0, Lcom/airbnb/android/views/PaymentChooser$1;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 222
    iget-object v1, p0, Lcom/airbnb/android/views/PaymentChooser$1;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # getter for: Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/airbnb/android/views/PaymentChooser;->access$000(Lcom/airbnb/android/views/PaymentChooser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_23

    .line 223
    iget-object v1, p0, Lcom/airbnb/android/views/PaymentChooser$1;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    iget-object v2, p0, Lcom/airbnb/android/views/PaymentChooser$1;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # getter for: Lcom/airbnb/android/views/PaymentChooser;->mTotalPrice:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/airbnb/android/views/PaymentChooser;->access$100(Lcom/airbnb/android/views/PaymentChooser;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x708

    if-ge v2, v3, :cond_21

    :goto_1d
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/PaymentChooser;->addPaymentMethod(Z)V

    .line 227
    :goto_20
    return-void

    .line 223
    :cond_21
    const/4 v0, 0x0

    goto :goto_1d

    .line 225
    :cond_23
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser$1;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # invokes: Lcom/airbnb/android/views/PaymentChooser;->showAllPaymentMethods()V
    invoke-static {v0}, Lcom/airbnb/android/views/PaymentChooser;->access$200(Lcom/airbnb/android/views/PaymentChooser;)V

    goto :goto_20
.end method
