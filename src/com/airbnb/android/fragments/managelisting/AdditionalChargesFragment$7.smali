.class Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;
.super Ljava/lang/Object;
.source "AdditionalChargesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->onStart()V
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
    .line 204
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 208
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListingCleaningFeeNative()Ljava/lang/Integer;

    move-result-object v1

    .line 209
    .local v1, "cleaningFee":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListingWeekendPriceNative()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 210
    .local v2, "weekendPricing":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListingPriceForExtraPersonNative()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 211
    .local v3, "extraGuestPrice":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getGuestsIncluded()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 212
    .local v4, "guestsIncluded":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListingSecurityDepositNative()Ljava/lang/Integer;

    move-result-object v5

    .line 214
    .local v5, "securityDeposit":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mCleaningFeeExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$800(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/ExpandableSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/ExpandableSwitchView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 215
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mCleaningFeeEditText:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/PriceEditText;->getPrice()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 220
    :goto_59
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mWeekendPricingExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$900(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/ExpandableSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/ExpandableSwitchView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 221
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mWeekendPricingEditText:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/PriceEditText;->getPrice()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 226
    :goto_73
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$1000(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/ExpandableSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/ExpandableSwitchView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 227
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mExtraGuestsEditText:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$500(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/PriceEditText;->getPrice()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 228
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsCount:I
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 234
    :goto_97
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mSecurityDepositExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$1100(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/ExpandableSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/ExpandableSwitchView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 235
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mSecurityDepositEditText:Lcom/airbnb/android/views/PriceEditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->access$600(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/PriceEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/PriceEditText;->getPrice()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 239
    :goto_b1
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    invoke-interface/range {v0 .. v5}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setAdditionalPrices(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 240
    return-void

    .line 217
    :cond_b9
    const/4 v1, 0x0

    goto :goto_59

    .line 223
    :cond_bb
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_73

    .line 230
    :cond_c0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 231
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_97

    .line 237
    :cond_c9
    const/4 v5, 0x0

    goto :goto_b1
.end method
