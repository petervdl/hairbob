.class Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$1;
.super Ljava/lang/Object;
.source "LongTermPricingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->onStart()V
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
    .line 86
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getListingWeeklyPriceNative()I

    move-result v1

    .line 91
    .local v1, "weeklyPrice":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getListingMonthlyPriceNative()I

    move-result v0

    .line 93
    .local v0, "monthlyPrice":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mWeeklyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/views/ExpandableSwitchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/views/ExpandableSwitchView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 94
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mWeeklyPrice:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/views/PriceEditText;->getPrice()I

    move-result v1

    .line 99
    :goto_2a
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/views/ExpandableSwitchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/views/ExpandableSwitchView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 100
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPrice:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/views/PriceEditText;->getPrice()I

    move-result v0

    .line 106
    :goto_40
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    invoke-interface {v2, v1, v0}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setLongTermPricing(II)V

    .line 107
    return-void

    .line 96
    :cond_48
    const/4 v1, 0x0

    goto :goto_2a

    .line 102
    :cond_4a
    const/4 v0, 0x0

    goto :goto_40
.end method
