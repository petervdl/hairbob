.class Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$2;
.super Ljava/lang/Object;
.source "AdditionalChargesFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->setupWeekendPricing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .registers 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 112
    if-eqz p1, :cond_1e

    .line 113
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mWeekendPricingEditText:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 114
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mWeekendPricingEditText:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/PriceEditText;->requestFocus()Z

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mWeekendPricingEditText:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v1

    # invokes: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->openKeyboard(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;Landroid/view/View;)V

    .line 118
    :cond_1e
    return-void
.end method
