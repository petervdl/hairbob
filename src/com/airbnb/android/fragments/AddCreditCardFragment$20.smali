.class Lcom/airbnb/android/fragments/AddCreditCardFragment$20;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/AddCreditCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V
    .registers 2

    .prologue
    .line 557
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$20;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$20;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mChangedText:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2100(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 562
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$20;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # invokes: Lcom/airbnb/android/fragments/AddCreditCardFragment;->handleExpiryMonthInput(Landroid/text/Editable;)V
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2700(Lcom/airbnb/android/fragments/AddCreditCardFragment;Landroid/text/Editable;)V

    .line 563
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$20;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # invokes: Lcom/airbnb/android/fragments/AddCreditCardFragment;->checkForInformationComplete()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2600(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    .line 567
    :goto_12
    return-void

    .line 565
    :cond_13
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$20;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mChangedText:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2102(Lcom/airbnb/android/fragments/AddCreditCardFragment;Z)Z

    goto :goto_12
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 571
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 575
    return-void
.end method
