.class Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$3;
.super Ljava/lang/Object;
.source "BasePriceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mPriceText:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/PriceEditText;->isPriceEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 132
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mPriceText:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/views/PriceEditText;->getPrice()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setPrice(Ljava/lang/String;)V

    .line 134
    :cond_21
    return-void
.end method
