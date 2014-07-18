.class Lcom/airbnb/android/fragments/PayoutListFragment$4;
.super Ljava/lang/Object;
.source "PayoutListFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutListFragment;->createActionListDialog(ILcom/airbnb/android/models/PayoutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

.field final synthetic val$payoutMethod:Lcom/airbnb/android/models/PayoutInfo;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutListFragment;Lcom/airbnb/android/models/PayoutInfo;)V
    .registers 3

    .prologue
    .line 231
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutListFragment$4;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/PayoutListFragment$4;->val$payoutMethod:Lcom/airbnb/android/models/PayoutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .registers 6
    .param p1, "actionItemId"    # I

    .prologue
    .line 234
    sparse-switch p1, :sswitch_data_50

    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment$4;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    invoke-virtual {v2, p1}, Lcom/airbnb/android/fragments/PayoutListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :sswitch_23
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$4;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    # invokes: Lcom/airbnb/android/fragments/PayoutListFragment;->startNewPayout()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutListFragment;->access$500(Lcom/airbnb/android/fragments/PayoutListFragment;)V

    .line 249
    :cond_28
    :goto_28
    return-void

    .line 239
    :sswitch_29
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$4;->val$payoutMethod:Lcom/airbnb/android/models/PayoutInfo;

    invoke-virtual {v0}, Lcom/airbnb/android/models/PayoutInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_28

    .line 240
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$4;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutListFragment$4;->val$payoutMethod:Lcom/airbnb/android/models/PayoutInfo;

    invoke-virtual {v1}, Lcom/airbnb/android/models/PayoutInfo;->getPayoutId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/PayoutListFragment;->setDefaultPayout(J)V

    goto :goto_28

    .line 244
    :sswitch_3d
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$4;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutListFragment$4;->val$payoutMethod:Lcom/airbnb/android/models/PayoutInfo;

    invoke-virtual {v1}, Lcom/airbnb/android/models/PayoutInfo;->getPayoutId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutListFragment$4;->val$payoutMethod:Lcom/airbnb/android/models/PayoutInfo;

    invoke-virtual {v3}, Lcom/airbnb/android/models/PayoutInfo;->isDefault()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/fragments/PayoutListFragment;->deletePayout(JZ)V

    goto :goto_28

    .line 234
    nop

    :sswitch_data_50
    .sparse-switch
        0x7f0e058f -> :sswitch_23
        0x7f0e05a9 -> :sswitch_3d
        0x7f0e05ab -> :sswitch_29
    .end sparse-switch
.end method
