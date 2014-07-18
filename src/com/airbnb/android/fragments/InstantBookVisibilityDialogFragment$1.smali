.class Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$1;
.super Ljava/lang/Object;
.source "InstantBookVisibilityDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
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
    .line 61
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->mVisibilityAdapter:Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$InstantBookVisibilityArrayAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->access$000(Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;)Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$InstantBookVisibilityArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$InstantBookVisibilityArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    .line 62
    .local v2, "visibility":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    iget-object v1, v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mServerDescKey:Ljava/lang/String;

    .line 63
    .local v1, "selectedVisibility":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "list_sel_req_code"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "requestCode":I
    iget-object v3, p0, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "sel_visibility"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    iget-object v3, p0, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->dismiss()V

    .line 66
    return-void
.end method
