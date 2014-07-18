.class Lcom/airbnb/android/fragments/CountryPickerDialogFragment$1;
.super Ljava/lang/Object;
.source "CountryPickerDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesListSearchSubset:Ljava/util/List;
    invoke-static {v3}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->access$000(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/NameCodeItem;

    .line 105
    .local v2, "nameCodeItem":Lcom/airbnb/android/models/NameCodeItem;
    iget-object v3, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mListener:Lcom/airbnb/android/interfaces/NameCodePickerListener;
    invoke-static {v3}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->access$100(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;)Lcom/airbnb/android/interfaces/NameCodePickerListener;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 106
    iget-object v3, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mListener:Lcom/airbnb/android/interfaces/NameCodePickerListener;
    invoke-static {v3}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->access$100(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;)Lcom/airbnb/android/interfaces/NameCodePickerListener;

    move-result-object v3

    invoke-virtual {v2}, Lcom/airbnb/android/models/NameCodeItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/airbnb/android/models/NameCodeItem;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/airbnb/android/interfaces/NameCodePickerListener;->onSelectItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_25
    iget-object v3, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 110
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_47

    .line 111
    iget-object v3, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->dismiss()V

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "country"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    iget-object v3, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->getTargetRequestCode()I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4, v1}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_47
    return-void
.end method
