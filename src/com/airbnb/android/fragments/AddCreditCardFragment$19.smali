.class Lcom/airbnb/android/fragments/AddCreditCardFragment$19;
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
    .line 512
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 516
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mChangedText:Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2100(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 517
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "cardNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-static {v0}, Lcom/airbnb/android/models/PaymentInstrument$CardType;->getCardTypeFromCCNumber(Ljava/lang/String;)Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v2

    # setter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2202(Lcom/airbnb/android/fragments/AddCreditCardFragment;Lcom/airbnb/android/models/PaymentInstrument$CardType;)Lcom/airbnb/android/models/PaymentInstrument$CardType;

    .line 520
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2200(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 521
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardTypeImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2300(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 522
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardTypeImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2300(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;
    invoke-static {v2}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2200(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v2

    iget v2, v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mIcon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 523
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardCCVLocationImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2400(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardCCVLocationImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2400(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;
    invoke-static {v2}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2200(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v2

    iget v2, v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mCCVImage:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 530
    :goto_58
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2200(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Unknown:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    if-eq v1, v2, :cond_67

    .line 531
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # invokes: Lcom/airbnb/android/fragments/AddCreditCardFragment;->formatCreditCard(Landroid/text/Editable;)V
    invoke-static {v1, p1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2500(Lcom/airbnb/android/fragments/AddCreditCardFragment;Landroid/text/Editable;)V

    .line 534
    :cond_67
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # invokes: Lcom/airbnb/android/fragments/AddCreditCardFragment;->checkForInformationComplete()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2600(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    .line 538
    .end local v0    # "cardNumber":Ljava/lang/String;
    :goto_6c
    return-void

    .line 526
    .restart local v0    # "cardNumber":Ljava/lang/String;
    :cond_6d
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardTypeImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2300(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardCCVLocationImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2400(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_58

    .line 536
    .end local v0    # "cardNumber":Ljava/lang/String;
    :cond_80
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # setter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mChangedText:Z
    invoke-static {v1, v3}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2102(Lcom/airbnb/android/fragments/AddCreditCardFragment;Z)Z

    goto :goto_6c
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 542
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 546
    return-void
.end method
