.class Lcom/airbnb/android/fragments/ROResponseDialogFragment$1;
.super Ljava/lang/Object;
.source "ROResponseDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROResponseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)V
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 147
    .local v1, "item":Ljava/lang/Object;
    instance-of v2, v1, Lcom/airbnb/android/models/ActionItem;

    if-eqz v2, :cond_17

    .line 148
    check-cast v1, Lcom/airbnb/android/models/ActionItem;

    .end local v1    # "item":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/airbnb/android/models/ActionItem;->getActionItemId()I

    move-result v0

    .line 149
    .local v0, "actionItemId":I
    sparse-switch v0, :sswitch_data_36

    .line 169
    .end local v0    # "actionItemId":I
    :cond_17
    :goto_17
    return-void

    .line 151
    .restart local v0    # "actionItemId":I
    :sswitch_18
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->handleAcceptOrDeclineReservation(Z)V
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$000(Lcom/airbnb/android/fragments/ROResponseDialogFragment;Z)V

    goto :goto_17

    .line 154
    :sswitch_1e
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->handleAcceptOrDeclineReservation(Z)V
    invoke-static {v2, v4}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$000(Lcom/airbnb/android/fragments/ROResponseDialogFragment;Z)V

    goto :goto_17

    .line 157
    :sswitch_24
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->handlePreApproveOrDeclineInquiry(Z)V
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$100(Lcom/airbnb/android/fragments/ROResponseDialogFragment;Z)V

    goto :goto_17

    .line 160
    :sswitch_2a
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->handleSpecialOffer()V
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$200(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)V

    goto :goto_17

    .line 163
    :sswitch_30
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->handlePreApproveOrDeclineInquiry(Z)V
    invoke-static {v2, v4}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$100(Lcom/airbnb/android/fragments/ROResponseDialogFragment;Z)V

    goto :goto_17

    .line 149
    :sswitch_data_36
    .sparse-switch
        0x7f0e0689 -> :sswitch_18
        0x7f0e068c -> :sswitch_1e
        0x7f0e068f -> :sswitch_30
        0x7f0e069d -> :sswitch_24
        0x7f0e06a2 -> :sswitch_2a
    .end sparse-switch
.end method
