.class Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$1;
.super Ljava/lang/Object;
.source "AirDialogFragments.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;)V
    .registers 2

    .prologue
    .line 344
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

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
    .line 348
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->dismiss()V

    .line 349
    iget-object v2, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;
    invoke-static {v2}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->access$200(Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 350
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 351
    .local v1, "item":Ljava/lang/Object;
    instance-of v2, v1, Lcom/airbnb/android/models/ActionItem;

    if-eqz v2, :cond_28

    .line 352
    iget-object v2, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;
    invoke-static {v2}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->access$200(Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;

    move-result-object v2

    check-cast v1, Lcom/airbnb/android/models/ActionItem;

    .end local v1    # "item":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/airbnb/android/models/ActionItem;->getActionItemId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;->onClick(I)V

    .line 362
    :cond_28
    :goto_28
    return-void

    .line 354
    :cond_29
    iget-object v2, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 355
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 356
    .restart local v1    # "item":Ljava/lang/Object;
    instance-of v2, v1, Lcom/airbnb/android/models/ActionItem;

    if-eqz v2, :cond_28

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "action_item_id"

    check-cast v1, Lcom/airbnb/android/models/ActionItem;

    .end local v1    # "item":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/airbnb/android/models/ActionItem;->getActionItemId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    iget-object v2, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->getTargetRequestCode()I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_28
.end method
