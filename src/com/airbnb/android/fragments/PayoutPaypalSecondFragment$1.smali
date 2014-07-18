.class Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;
.super Ljava/lang/Object;
.source "PayoutPaypalSecondFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 90
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mHasPaypal:Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->access$000(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 91
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mPaypalEmailField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->access$100(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/TextHelper;->isValidEmail(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 92
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e059b

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 107
    :goto_2d
    return-void

    .line 93
    :cond_2e
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mCurrencySpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->access$200(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Landroid/widget/Spinner;

    move-result-object v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    # invokes: Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->isCurrencySelected()Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->access$300(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 94
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e05aa

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2d

    .line 96
    :cond_4f
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    const v2, 0x7f0e0595

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mPaypalEmailField:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->access$100(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    # invokes: Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getSelectedCurrency()Ljava/lang/String;
    invoke-static {v4}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->access$400(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "dialogBodyText":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e0596

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e0594

    const/16 v3, 0xeb

    iget-object v4, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2d

    .line 104
    .end local v0    # "dialogBodyText":Ljava/lang/String;
    :cond_9d
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    # setter for: Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mWentToPaypal:Z
    invoke-static {v1, v6}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->access$502(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;Z)Z

    .line 105
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    const v5, 0x7f0e05b3

    invoke-virtual {v4, v5}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2d
.end method
