.class Lcom/airbnb/android/fragments/SendSpecialOfferFragment$3;
.super Ljava/lang/Object;
.source "SendSpecialOfferFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$3;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 242
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 238
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$3;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mOfferPrice:I
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$502(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;I)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_13

    .line 233
    :goto_d
    iget-object v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$3;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # invokes: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->validateFieldsAndUpdateViews()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$600(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V

    .line 234
    return-void

    .line 230
    :catch_13
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$3;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    const/4 v2, 0x0

    # setter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mOfferPrice:I
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$502(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;I)I

    goto :goto_d
.end method
