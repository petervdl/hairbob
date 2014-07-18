.class Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;
.super Ljava/lang/Object;
.source "AddressSelectionFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnSuggestionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)V
    .registers 2

    .prologue
    .line 326
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .registers 8
    .param p1, "position"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 336
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mCursorAdapter:Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$500(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 337
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3e

    .line 338
    const-string/jumbo v2, "suggest_intent_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "query":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;-><init>(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;)V

    invoke-static {v1, v3}, Lcom/airbnb/android/utils/GeocoderHelper;->getFromLocationName(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ExternalStringRequest;

    move-result-object v3

    # setter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$802(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;Lcom/airbnb/android/requests/ExternalStringRequest;)Lcom/airbnb/android/requests/ExternalStringRequest;

    .line 376
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$800(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/requests/ExternalStringRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/requests/ExternalStringRequest;->execute()V

    .line 378
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 390
    .end local v1    # "query":Ljava/lang/String;
    :cond_3d
    :goto_3d
    return v5

    .line 381
    :cond_3e
    if-nez p1, :cond_3d

    .line 382
    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v3, v5

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    if-eqz v2, :cond_99

    const-string/jumbo v2, "ml_post_list"

    :goto_58
    aput-object v2, v3, v4

    const/4 v2, 0x2

    const-string/jumbo v4, "address_form_click"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v4}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mCursorAdapter:Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$500(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_9d

    const-string/jumbo v2, "0"

    :goto_81
    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->emptyAddressFields()V
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$600(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)V

    .line 386
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->doneWithAddressSelection(Lcom/airbnb/android/models/Listing;)V

    goto :goto_3d

    .line 382
    :cond_99
    const-string/jumbo v2, "ml_pre_list"

    goto :goto_58

    :cond_9d
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mCursorAdapter:Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$500(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_81
.end method

.method public onSuggestionSelect(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method
