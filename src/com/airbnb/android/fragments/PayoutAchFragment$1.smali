.class Lcom/airbnb/android/fragments/PayoutAchFragment$1;
.super Ljava/lang/Object;
.source "PayoutAchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutAchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutAchFragment;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    # invokes: Lcom/airbnb/android/fragments/PayoutAchFragment;->validateAchInfo()Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/PayoutAchFragment;->access$000(Lcom/airbnb/android/fragments/PayoutAchFragment;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 68
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    const v2, 0x7f0e0592

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutAchFragment;->mAchAccountType:Ljava/lang/String;
    invoke-static {v5}, Lcom/airbnb/android/fragments/PayoutAchFragment;->access$100(Lcom/airbnb/android/fragments/PayoutAchFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutAchFragment;->mRoutingNumber:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/airbnb/android/fragments/PayoutAchFragment;->access$200(Lcom/airbnb/android/fragments/PayoutAchFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutAchFragment;->mAccountNumber:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/airbnb/android/fragments/PayoutAchFragment;->access$300(Lcom/airbnb/android/fragments/PayoutAchFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutAchFragment;->mPersonName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/airbnb/android/fragments/PayoutAchFragment;->access$400(Lcom/airbnb/android/fragments/PayoutAchFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "dialogBodyText":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e0593

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e0594

    const/16 v3, 0x297

    iget-object v4, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 75
    .end local v0    # "dialogBodyText":Ljava/lang/String;
    :cond_78
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 76
    return-void
.end method
