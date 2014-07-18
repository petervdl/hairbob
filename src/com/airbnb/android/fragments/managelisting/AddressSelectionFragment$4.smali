.class Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$4;
.super Ljava/lang/Object;
.source "AddressSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 151
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 155
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string/jumbo v0, "ml_post_list"

    :goto_1a
    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, "address_form_click"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mCursorAdapter:Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$500(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_5f

    const-string/jumbo v0, "0"

    :goto_43
    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->emptyAddressFields()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$600(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)V

    .line 159
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->doneWithAddressSelection(Lcom/airbnb/android/models/Listing;)V

    .line 160
    return-void

    .line 155
    :cond_5b
    const-string/jumbo v0, "ml_pre_list"

    goto :goto_1a

    :cond_5f
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mCursorAdapter:Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$500(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43
.end method
