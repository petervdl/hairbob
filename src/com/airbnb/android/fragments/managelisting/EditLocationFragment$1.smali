.class Lcom/airbnb/android/fragments/managelisting/EditLocationFragment$1;
.super Ljava/lang/Object;
.source "EditLocationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    sget-object v1, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->Directions:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getDirections()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->onTextItemSelected(ILjava/lang/String;)V

    .line 63
    return-void
.end method
