.class Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$2;
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
    .line 69
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

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

    .line 73
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;)Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    .line 74
    .local v0, "detail":Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    .line 75
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    sget-object v2, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    invoke-virtual {v0}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_d6

    .line 107
    :goto_22
    return-void

    .line 77
    :pswitch_23
    new-array v3, v8, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string/jumbo v2, "ml_post_list"

    :goto_34
    aput-object v2, v3, v5

    const-string/jumbo v2, "optional_details"

    aput-object v2, v3, v6

    const-string/jumbo v2, "detailed_description_click"

    aput-object v2, v3, v7

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v3, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->ListingDetails:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto :goto_22

    .line 77
    :cond_4d
    const-string/jumbo v2, "ml_pre_list"

    goto :goto_34

    .line 83
    :pswitch_51
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v3, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto :goto_22

    .line 87
    :pswitch_5b
    new-array v3, v8, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    if-eqz v2, :cond_85

    const-string/jumbo v2, "ml_post_list"

    :goto_6c
    aput-object v2, v3, v5

    const-string/jumbo v2, "optional_details"

    aput-object v2, v3, v6

    const-string/jumbo v2, "amenities_click"

    aput-object v2, v3, v7

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v3, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto :goto_22

    .line 87
    :cond_85
    const-string/jumbo v2, "ml_pre_list"

    goto :goto_6c

    .line 93
    :pswitch_89
    new-array v3, v8, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    if-eqz v2, :cond_b4

    const-string/jumbo v2, "ml_post_list"

    :goto_9a
    aput-object v2, v3, v5

    const-string/jumbo v2, "optional_details"

    aput-object v2, v3, v6

    const-string/jumbo v2, "rooms_and_beds_click"

    aput-object v2, v3, v7

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v3, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->RoomsAndBeds:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto/16 :goto_22

    .line 93
    :cond_b4
    const-string/jumbo v2, "ml_pre_list"

    goto :goto_9a

    .line 99
    :pswitch_b8
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v3, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->HouseManual:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->ordinal()I

    move-result v3

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getHouseManual()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onTextItemSelected(ILjava/lang/String;)V

    goto/16 :goto_22

    .line 103
    :pswitch_cb
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v3, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Terms:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto/16 :goto_22

    .line 75
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_23
        :pswitch_51
        :pswitch_5b
        :pswitch_89
        :pswitch_b8
        :pswitch_cb
    .end packed-switch
.end method
