.class Lcom/airbnb/android/fragments/ListingSelectDialogFragment$1;
.super Ljava/lang/Object;
.source "ListingSelectDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingSelectDialogFragment;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingSelectDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingSelectDialogFragment;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingSelectDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingSelectDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    .line 55
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingSelectDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingSelectDialogFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;->dismiss()V

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingSelectDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingSelectDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingSelectDialogFragment;->mListings:Ljava/util/List;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;->access$000(Lcom/airbnb/android/fragments/ListingSelectDialogFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 58
    .local v1, "selected":Lcom/airbnb/android/models/Listing;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingSelectDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingSelectDialogFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingSelectDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingSelectDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;->getTargetRequestCode()I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 61
    return-void
.end method
