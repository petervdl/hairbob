.class Lcom/airbnb/android/fragments/PayoutTrustFragment$3;
.super Ljava/lang/Object;
.source "PayoutTrustFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutTrustFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->validateFields()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutStreet:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutApt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCity:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutState:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    iget-object v4, v4, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutZip:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountryCode:Ljava/lang/String;
    invoke-static {v5}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->access$200(Lcom/airbnb/android/fragments/PayoutTrustFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthday:Ljava/util/Calendar;
    invoke-static {v6}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->access$300(Lcom/airbnb/android/fragments/PayoutTrustFragment;)Ljava/util/Calendar;

    move-result-object v6

    if-nez v6, :cond_88

    const/4 v6, 0x0

    :goto_53
    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/requests/PayoutRequest;->generateTrustStrap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/airbnb/android/utils/Strap;

    move-result-object v8

    .line 99
    .local v8, "trustParameters":Lcom/airbnb/android/utils/Strap;
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/activities/PayoutActivity;

    .line 100
    .local v7, "activity":Lcom/airbnb/android/activities/PayoutActivity;
    invoke-virtual {v7, v8}, Lcom/airbnb/android/activities/PayoutActivity;->setTrustParameters(Lcom/airbnb/android/utils/Strap;)V

    .line 101
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountryCode:Ljava/lang/String;
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->access$200(Lcom/airbnb/android/fragments/PayoutTrustFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/airbnb/android/activities/PayoutActivity;->setCountryCode(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountryCode:Ljava/lang/String;
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->access$200(Lcom/airbnb/android/fragments/PayoutTrustFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/PayoutSelectFragment;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/airbnb/android/activities/PayoutActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 103
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 105
    .end local v7    # "activity":Lcom/airbnb/android/activities/PayoutActivity;
    .end local v8    # "trustParameters":Lcom/airbnb/android/utils/Strap;
    :cond_87
    return-void

    .line 94
    :cond_88
    iget-object v6, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutTrustFragment;->mBirthday:Ljava/util/Calendar;
    invoke-static {v6}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->access$300(Lcom/airbnb/android/fragments/PayoutTrustFragment;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto :goto_53
.end method
