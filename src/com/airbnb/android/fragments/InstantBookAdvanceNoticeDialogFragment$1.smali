.class Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$1;
.super Ljava/lang/Object;
.source "InstantBookAdvanceNoticeDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;

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
    .line 55
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;->mNoticeAdapter:Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;->access$000(Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;)Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .line 56
    .local v0, "notice":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    iget v2, v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mServerDescKey:I

    .line 57
    .local v2, "selectedNotice":I
    iget-object v3, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "list_sel_req_code"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, "requestCode":I
    iget-object v3, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "sel_notice"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 59
    iget-object v3, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;->dismiss()V

    .line 60
    return-void
.end method
