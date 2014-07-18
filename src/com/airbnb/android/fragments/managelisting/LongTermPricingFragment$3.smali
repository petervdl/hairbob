.class Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$3;
.super Ljava/lang/Object;
.source "LongTermPricingFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->setupMonthly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .registers 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 189
    if-eqz p1, :cond_1e

    .line 190
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPrice:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 191
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPrice:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/PriceEditText;->requestFocus()Z

    .line 192
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPrice:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v1

    # invokes: Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->openKeyboard(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->access$500(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;Landroid/view/View;)V

    .line 195
    :cond_1e
    return-void
.end method
