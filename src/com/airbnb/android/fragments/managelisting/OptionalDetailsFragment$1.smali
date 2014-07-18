.class Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$1;
.super Ljava/lang/Object;
.source "OptionalDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/LinearListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V
    .registers 15
    .param p1, "parent"    # Lcom/airbnb/android/views/LinearListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;)Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    .line 43
    .local v1, "pricing":Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    .line 44
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    sget-object v2, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_94

    .line 66
    :goto_22
    return-void

    .line 46
    :pswitch_23
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v3, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->BasePrice:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto :goto_22

    .line 50
    :pswitch_2d
    new-array v3, v8, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v2, "ml_post_list"

    :goto_3e
    aput-object v2, v3, v5

    const-string/jumbo v2, "optional_details"

    aput-object v2, v3, v6

    const-string/jumbo v2, "currency_click"

    aput-object v2, v3, v7

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v3, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Currency:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto :goto_22

    .line 50
    :cond_57
    const-string/jumbo v2, "ml_pre_list"

    goto :goto_3e

    .line 56
    :pswitch_5b
    new-array v3, v8, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    if-eqz v2, :cond_85

    const-string/jumbo v2, "ml_post_list"

    :goto_6c
    aput-object v2, v3, v5

    const-string/jumbo v2, "optional_details"

    aput-object v2, v3, v6

    const-string/jumbo v2, "long_term_prices_click"

    aput-object v2, v3, v7

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v3, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->LongTermPricing:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto :goto_22

    .line 56
    :cond_85
    const-string/jumbo v2, "ml_pre_list"

    goto :goto_6c

    .line 62
    :pswitch_89
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v3, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->AdditionalCharges:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto :goto_22

    .line 44
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_23
        :pswitch_2d
        :pswitch_5b
        :pswitch_89
    .end packed-switch
.end method
