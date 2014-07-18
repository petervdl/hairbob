.class Lcom/airbnb/android/views/PaymentChooser$3;
.super Ljava/lang/Object;
.source "PaymentChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 437
    iput-object p1, p0, Lcom/airbnb/android/views/PaymentChooser$3;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 441
    iget-object v1, p0, Lcom/airbnb/android/views/PaymentChooser$3;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser$3;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # getter for: Lcom/airbnb/android/views/PaymentChooser;->mTotalPrice:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/airbnb/android/views/PaymentChooser;->access$100(Lcom/airbnb/android/views/PaymentChooser;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x708

    if-ge v0, v2, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/PaymentChooser;->addPaymentMethod(Z)V

    .line 442
    return-void

    .line 441
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method
