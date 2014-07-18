.class Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$2;
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
    .line 127
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

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

    .line 131
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    .line 132
    .local v0, "detail":Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;
    sget-object v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingDetails:[I

    invoke-virtual {v0}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_112

    .line 170
    :goto_1c
    return-void

    .line 134
    :pswitch_1d
    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "impressions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ml_post_list"

    aput-object v2, v1, v5

    const-string/jumbo v2, "location"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto :goto_1c

    .line 139
    :pswitch_41
    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "impressions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ml_post_list"

    aput-object v2, v1, v5

    const-string/jumbo v2, "calendar"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Calendar:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto :goto_1c

    .line 144
    :pswitch_65
    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "impressions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ml_post_list"

    aput-object v2, v1, v5

    const-string/jumbo v2, "amenities"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto :goto_1c

    .line 149
    :pswitch_89
    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "impressions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ml_post_list"

    aput-object v2, v1, v5

    const-string/jumbo v2, "rooms_and_beds"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->RoomsAndBeds:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto/16 :goto_1c

    .line 154
    :pswitch_ae
    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "impressions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ml_post_list"

    aput-object v2, v1, v5

    const-string/jumbo v2, "house_manual"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->HouseManual:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getHouseManual()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onTextItemSelected(ILjava/lang/String;)V

    goto/16 :goto_1c

    .line 159
    :pswitch_e1
    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "impressions"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ml_post_list"

    aput-object v2, v1, v5

    const-string/jumbo v2, "terms"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Terms:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto/16 :goto_1c

    .line 164
    :pswitch_106
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->ListingDetails:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V

    goto/16 :goto_1c

    .line 132
    nop

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_41
        :pswitch_65
        :pswitch_89
        :pswitch_ae
        :pswitch_e1
        :pswitch_106
    .end packed-switch
.end method
