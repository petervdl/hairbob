.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$4;
.super Ljava/lang/Object;
.source "CompleteProfileEmailChildFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v3, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 157
    iget-object v3, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 159
    iget-object v3, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "email":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->setUserEmailAddress(Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->isVerifiedIdFlow()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 164
    iget-object v3, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "email"

    invoke-virtual {v3, v4, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackEmailStartSend(Lcom/airbnb/android/utils/Strap;)V

    .line 167
    :cond_47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "user[email]"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v2, Lcom/airbnb/android/requests/ConfirmEmailRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/airbnb/android/requests/ConfirmEmailRequest;-><init>(Ljava/util/Map;Lcom/airbnb/android/requests/RequestListener;)V

    .line 171
    .local v2, "request":Lcom/airbnb/android/requests/ConfirmEmailRequest;
    invoke-virtual {v2}, Lcom/airbnb/android/requests/ConfirmEmailRequest;->execute()V

    .line 173
    iget-object v3, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    const/4 v4, 0x1

    # setter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mSentEmail:Z
    invoke-static {v3, v4}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->access$302(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;Z)Z

    .line 174
    iget-object v3, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->setSentEmailState()V
    invoke-static {v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->access$400(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)V

    .line 175
    return-void
.end method
