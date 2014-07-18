.class Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$5;
.super Ljava/lang/Object;
.source "AddressSelectionFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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
    .line 294
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 7
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 303
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 304
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # setter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mSearchQuery:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$702(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 307
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mSearchQuery:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 308
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mSearchQuery:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 315
    invoke-virtual {v0, v3}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 316
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-virtual {v0, v3, v4, v1}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 321
    :cond_43
    :goto_43
    return v3

    .line 310
    :cond_44
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c

    .line 318
    :cond_4e
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-virtual {v0, v3, v4, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_43
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method
