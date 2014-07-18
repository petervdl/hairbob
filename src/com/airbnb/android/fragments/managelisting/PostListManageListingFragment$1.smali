.class Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$1;
.super Ljava/lang/Object;
.source "PostListManageListingFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/LinearListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V
    .registers 14
    .param p1, "parent"    # Lcom/airbnb/android/views/LinearListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    .line 102
    .local v0, "pricing":Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;
    sget-object v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I

    invoke-virtual {v0}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_ae

    .line 124
    :goto_1c
    return-void

    .line 104
    :pswitch_1d
    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "impressions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ml_post_list"

    aput-object v2, v1, v5

    const-string/jumbo v2, "standard_price"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->BasePrice:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto :goto_1c

    .line 109
    :pswitch_41
    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "impressions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ml_post_list"

    aput-object v2, v1, v5

    const-string/jumbo v2, "currency"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Currency:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto :goto_1c

    .line 114
    :pswitch_65
    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "ml_post_list"

    aput-object v2, v1, v4

    const-string/jumbo v2, "general_nav"

    aput-object v2, v1, v5

    const-string/jumbo v2, "long_term_prices_click"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->LongTermPricing:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto :goto_1c

    .line 119
    :pswitch_89
    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "impressions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ml_post_list"

    aput-object v2, v1, v5

    const-string/jumbo v2, "additional_charges"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->AdditionalCharges:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto/16 :goto_1c

    .line 102
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_41
        :pswitch_65
        :pswitch_89
    .end packed-switch
.end method
